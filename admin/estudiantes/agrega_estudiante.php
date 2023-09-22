<!DOCTYPE html>
<html>
<head>
    <style>
  .bien {
    background-color: green;
    border-radius: 5px;
    color: black; /* Cambiamos el color del texto a negro para que sea legible en el fondo verde */
    animation: fadeOut 8s ease-in-out forwards; /* Agregamos una animación llamada "fadeOut" durante 2 segundos */
}

/* Definimos la animación "fadeOut" */
@keyframes fadeOut {
    0% {
        opacity: 1; /* La opacidad comienza en 1 (totalmente visible) */
    }
    100% {
        opacity: 0; /* La opacidad termina en 0 (totalmente transparente) */
    }
}
    </style>
</head>
</html>


<?php
include('../conexion.php');

$id = $_POST['id-prod'];
$proceso = $_POST['pro'];
$nombre = $_POST['nombre'];
$carnet = $_POST['carnet'];
$anio = $_POST['anio'];
$carrera = $_POST['carrera'];

switch ($proceso) {
    case 'Registro':
        mysqli_query($con, "INSERT INTO usuario_estudiante (carnet, nombre, anio, carrera) VALUES('$carnet','$nombre','$anio', '$carrera')");
        break;
    case 'Edicion':
        mysqli_query($con, "UPDATE usuario_estudiante SET carnet = '$carnet', nombre = '$nombre', anio = '$anio', carrera = '$carrera'  WHERE id_usuario_estudiante = '$id'");
        break;
}

$registro = mysqli_query($con, "SELECT * FROM usuario_estudiante ORDER BY id_usuario_estudiante ASC");

echo '<table class="table table-hover rtx">
         <tr>
            <th width="50" class="th1">Cedula</th>
            <th width="100" class="th1">Estudiante</th>
            <th width="50" class="th1">Año</th>
            <th width="100" class="th1">Carrera</th>
            <th width="100" class="th1">Opciones</th>
        </tr>';
while ($registro2 = mysqli_fetch_array($registro)) {
    echo '<tr>
            <td>' . $registro2['carnet'] . '</td>
            <td>' . $registro2['nombre'] . '</td>
            <td>' . $registro2['anio'] . '</td>
            <td>' . $registro2['carrera'] . '</td>
            <td>
    <button class="btn btn-warning btn-sm" onclick="editarEmpleado(' . $registro2['id_usuario_estudiante'] . ');" title="Editar">
        <i class="fas fa-edit"></i> Editar
    </button>
    <button class="btn btn-danger btn-sm" onclick="eliminarEmpleado(' . $registro2['id_usuario_estudiante'] . ');" title="Eliminar">
        <i class="fas fa-trash"></i> Eliminar
    </button>
</td>

        </tr>';
}
echo '</table>';
?>
