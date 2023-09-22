<?php
include('../conexion.php');
$paginaActual = $_POST['partida'];

$nroLotes = 5; // Ajustar para mostrar solo 5 registros por página

$nroProductos = mysqli_num_rows(mysqli_query($con, "SELECT * FROM subcategorias"));
$nroPaginas = ceil($nroProductos / $nroLotes);
$lista = '';
$tabla = '';

// Definir el número máximo de páginas que se mostrarán en el paginador
$maxPaginas = 2; // Puedes ajustar este valor según tus preferencias

if ($paginaActual > 1) {
    $lista .= '<li class="page-item"><a class="page-link" href="javascript:pagination(' . ($paginaActual - 1) . ');">Anterior</a></li>';
}

// Calcular el rango de páginas a mostrar
$inicio = max(1, $paginaActual - floor($maxPaginas / 2));
$fin = min($nroPaginas, $inicio + $maxPaginas - 1);

for ($i = $inicio; $i <= $fin; $i++) {
    if ($i == $paginaActual) {
        $lista .= '<li class="page-item active"><span class="page-link">' . $i . '</span></li>';
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
$registro = mysqli_query($con, "SELECT * FROM subcategorias LIMIT $limit, $nroLotes ");
$tabla .= '<table class="table table-hover table-responsive rtx">
            <tr>
                <th width="200" class="th1">Subcategoria</th>
                <th width="50" class="th1">Opciones</th>
            </tr>';
while ($registro2 = mysqli_fetch_array($registro)) {
    $tabla .= '<tr>
                <td>' . $registro2['nombre_subcategoria'] . '</td>
                <td>
                    <a href="javascript:editarEmpleado(' . $registro2['id_subcategoria'] . ');" class="btn btn-warning" title="Editar">
                        <i class="glyphicon glyphicon-edit"></i> Editar
                    </a>
                    <a href="javascript:eliminarEmpleado(' . $registro2['id_subcategoria'] . ');" class="btn btn-danger" title="Eliminar">
                        <i class="glyphicon glyphicon-trash"></i> Eliminar
                    </a>
                </td>
            </tr>';
}
$tabla .= '</table>';
$array = array(0 => $tabla, 1 => $lista);
echo json_encode($array);
?>
