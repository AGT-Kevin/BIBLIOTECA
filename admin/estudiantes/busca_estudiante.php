<?php
include('../conexion.php');

$dato = $_POST['dato'];
$registrosPorPagina = 10; // Número de registros por página
$pagina = isset($_POST['pagina']) ? $_POST['pagina'] : 1; // Página actual

// Calcular el índice de inicio de los registros a mostrar
$indiceInicio = ($pagina - 1) * $registrosPorPagina;

// Consulta para obtener los registros de la página actual
$consulta = "SELECT * FROM usuario_estudiante WHERE 
             carnet LIKE '%$dato%' OR
             nombre LIKE '%$dato%' OR
             anio LIKE '%$dato%' OR
             carrera LIKE '%$dato%'
             ORDER BY id_usuario_estudiante ASC 
             LIMIT $indiceInicio, $registrosPorPagina";

$registro = mysqli_query($con, $consulta);

echo '<table class="table table-hover rtx">
         <tr>
            <th width="50" class="th1">Cedula</th>
            <th width="100" class="th1">Estudiante</th>
            <th width="50" class="th1">Año</th>
            <th width="100" class="th1">Carrera</th>
            <th width="100" class="th1">Opciones</th>
        </tr>';

if (mysqli_num_rows($registro) > 0) {
    while ($registro2 = mysqli_fetch_array($registro)) {
        echo '<tr>
                <td>' . $registro2['carnet'] . '</td>
                <td>' . $registro2['nombre'] . '</td>
                <td>' . $registro2['anio'] . '</td>
                <td>' . $registro2['carrera'] . '</td>
                <td>
                    <button class="btn btn-primary btn-sm" onclick="editarEmpleado(' . $registro2['id_usuario_estudiante'] . ');" title="Editar">Editar</button>
                    <button class="btn btn-danger btn-sm" onclick="eliminarEmpleado(' . $registro2['id_usuario_estudiante'] . ');" title="Eliminar">Eliminar</button>
                </td>
            </tr>';
    }
} else {
    echo '<tr>
            <td colspan="5" class="text-center">No se encontraron resultados</td>
        </tr>';
}

echo '</tbody>
    </table>';

// Consulta para contar la cantidad total de registros
$totalRegistrosConsulta = "SELECT COUNT(*) as total FROM usuario_estudiante WHERE 
                          carnet LIKE '%$dato%' OR
                          nombre LIKE '%$dato%' OR
                          anio LIKE '%$dato%' OR
                          carrera LIKE '%$dato%'";
$totalRegistros = mysqli_fetch_assoc(mysqli_query($con, $totalRegistrosConsulta))['total'];

// Calcular el número total de páginas
$totalPaginas = ceil($totalRegistros / $registrosPorPagina);

