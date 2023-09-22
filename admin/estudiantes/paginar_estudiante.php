<?php
include('../conexion.php');
$paginaActual = $_POST['partida'];

$nroProductos = mysqli_num_rows(mysqli_query($con, "SELECT * FROM usuario_estudiante"));
$nroLotes = 10;
$nroPaginas = ceil($nroProductos / $nroLotes);
$lista = '';
$tabla = '';

$maxPaginas = 5; // Cantidad de números de página a mostrar

if ($paginaActual > 1) {
    $lista .= '<li class="page-item"><a class="page-link" href="javascript:pagination(' . ($paginaActual - 1) . ');">Anterior</a></li>';
}

$paginaInicio = max(1, $paginaActual - floor($maxPaginas / 2));
$paginaFin = min($nroPaginas, $paginaInicio + $maxPaginas - 1);

for ($i = $paginaInicio; $i <= $paginaFin; $i++) {
    if ($i == $paginaActual) {
        $lista .= '<li class="page-item active"><a class="page-link" href="javascript:pagination(' . $i . ');">' . $i . '</a></li>';
    } else {
        $lista .= '<li class="page-item"><a class="page-link" href="javascript:pagination(' . $i . ');">' . $i . '</a></li>';
    }
}

if ($paginaActual < $nroPaginas) {
    $lista .= '<li class="page-item"><a class="page-link" href="javascript:pagination(' . ($paginaActual + 1) . ');">Siguiente</a></li>';
}

if ($paginaActual <= 1) {
    $limit = 0;
} else {
    $limit = $nroLotes * ($paginaActual - 1);
}
$registro = mysqli_query($con, "SELECT * FROM usuario_estudiante LIMIT $limit, $nroLotes ");
$tabla .= '<div class="table-responsive">
           <table class="table table-hover rtx">
               <tr>
                   <th class="th1">Cedula</th>
                   <th class="th1">Estudiante</th>
                   <th class="th1">Año</th>
                   <th class="th1">Carrera</th>
                   <th class="th1">Opciones</th>
               </tr>';

while ($registro2 = mysqli_fetch_array($registro)) {
    $tabla .= '<tr>
                <td>' . $registro2['carnet'] . '</td>
                <td>' . $registro2['nombre'] . '</td>
                <td>' . $registro2['anio'] . '</td>
                <td>' . $registro2['carrera'] . '</td>
                <td>
                    <a href="javascript:editarEmpleado(' . $registro2['id_usuario_estudiante'] . ');" class="btn btn-primary btn-sm" title="Editar">Editar</a>
                    <a href="javascript:eliminarEmpleado(' . $registro2['id_usuario_estudiante'] . ');" class="btn btn-danger btn-sm" title="Eliminar">Eliminar</a>
                </td>
            </tr>';
}

$tabla .= '</table></div>';

$array = array(0 => $tabla,
    1 => '<nav aria-label="Page navigation"><ul class="pagination justify-content-center">' . $lista . '</ul></nav>');

echo json_encode($array);
?>
