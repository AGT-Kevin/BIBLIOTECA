<?php
include('../conexion.php');

$id = isset($_POST['id-prod']) ? $_POST['id-prod'] : 0;
$proceso = isset($_POST['pro']) ? $_POST['pro'] : '';
$codigo = isset($_POST['codigo']) ? mysqli_real_escape_string($con, $_POST['codigo']) : '';
$ISBN = isset($_POST['ISBN']) ? mysqli_real_escape_string($con, $_POST['ISBN']) : '';
$libro = isset($_POST['libro']) ? mysqli_real_escape_string($con, $_POST['libro']) : '';
$autor = isset($_POST['autor']) ? mysqli_real_escape_string($con, $_POST['autor']) : '';
$descripcion = isset($_POST['descripcion']) ? mysqli_real_escape_string($con, $_POST['descripcion']) : '';
$origen = isset($_POST['fila']) ? mysqli_real_escape_string($con, $_POST['fila']) : '';
$edicion = isset($_POST['categoria']) ? mysqli_real_escape_string($con, $_POST['categoria']) : '';
$Nedicion = isset($_POST['estante']) ? mysqli_real_escape_string($con, $_POST['estante']) : '';
$cantidad = isset($_POST['cantidad']) ? mysqli_real_escape_string($con, $_POST['cantidad']) : '';
$fecha = isset($_POST['fecha']) ? $_POST['fecha'] : '';

switch ($proceso) {
    case 'Registro':
        mysqli_query($con, "INSERT INTO `inventario`(`codigo`, `ISBN`, `libro`, `autor`, `descripcion`, `fila`, `categoria`, `estante`, `cantidad`, `fecha`)
                  VALUES ('$codigo','$ISBN','$libro','$autor','$descripcion','$origen','$edicion','$Nedicion','$cantidad','$fecha')");
        break;

    case 'Edicion':
        mysqli_query($con, "UPDATE `inventario` SET codigo ='$codigo', ISBN ='$ISBN',libro='$libro',autor='$autor',descripcion='$descripcion',
                  fila='$origen', categoria='$edicion',estante='$Nedicion',cantidad='$cantidad',fecha='$fecha' WHERE id_inventario = '$id'");
        break;
}


$registro = mysqli_query($con, "SELECT * FROM inventario ORDER BY id_inventario ASC");

echo '<table class="table  table-hover rtx">
        <tr>
            <th width="200"class="th1">Codigo</th>
            <th width="200" class="th1">ISBN</th>
            <th width="300" class="th1">libro</th>
            <th width="300" class="th1">autor</th>
            <th width="200" class="th1">Editorial</th>
            <th width="100" class="th1">Origen</th>
            <th width="50" class="th1">edicion</th>
            <th width="50" class="th1"># de Edicion</th>
            <th width="50" class="th1">Cantidad</th>
            <th width="100" class="th1">fecha</th>
            <th width="50" class="th1">Opciones</th>
        </tr>';
while ($registro2 = mysqli_fetch_array($registro)) {
    echo '<tr>
        <td>' . $registro2['codigo'] . '</td>
        <td>' . $registro2['ISBN'] . '</td>
        <td>' . $registro2['libro'] . '</td>
        <td>' . $registro2['autor'] . '</td>
        <td>' . $registro2['descripcion'] . '</td>
        <td>' . $registro2['fila'] . '</td>
        <td>' . $registro2['categoria'] . '</td>
        <td>' . $registro2['estante'] . '</td>
        <td>' . $registro2['cantidad'] . '</td>
        <td>' . $registro2['fecha'] . '</td>
		<td>
		<td>
        <a href="javascript:editarLibro(' . $registro2['id_inventario'] . ');" title="Editar" class="text-warning">
            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
        </a>
        <a href="javascript:eliminarLibro(' . $registro2['id_inventario'] . ');" title="Eliminar">
            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
        </a>
    </td>
    </td>
    </tr>';
}
echo '</table>';
?>
