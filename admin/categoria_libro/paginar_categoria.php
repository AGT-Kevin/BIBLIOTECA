<?php
include('../conexion.php');
$paginaActual = $_POST['partida'];

$nroProductos = mysqli_num_rows(mysqli_query($con, "SELECT * FROM categorias"));
$nroLotes = 5;
$nroPaginas = ceil($nroProductos / $nroLotes);
$lista = '';
$tabla = '';

$paginasMostradas = 1; // Cambia esto para ajustar cuántas páginas deseas mostrar antes y después de la página actual.

if ($paginaActual > 1) {
    $lista .= '<li class="page-item"><a class="page-link" href="javascript:pagination(' . ($paginaActual - 1) . ');">&laquo;</a></li>';
}

for ($i = max(1, $paginaActual - $paginasMostradas); $i <= min($nroPaginas, $paginaActual + $paginasMostradas); $i++) {
    if ($i == $paginaActual) {
        $lista .= '<li class="page-item active"><span class="page-link">' . $i . '</span></li>';
    } else {
        $lista .= '<li class="page-item"><a class="page-link" href="javascript:pagination(' . $i . ');">' . $i . '</a></li>';
    }
}

if ($paginaActual < $nroPaginas) {
    $lista .= '<li class="page-item"><a class="page-link" href="javascript:pagination(' . ($paginaActual + 1) . ');">&raquo;</a></li>';
}

if ($paginaActual <= 1) {
    $limit = 0;
} else {
    $limit = $nroLotes * ($paginaActual - 1);
}

$registro = mysqli_query($con, "SELECT * FROM categorias LIMIT $limit, $nroLotes ");
$tabla .= '<table class="table table-hover table-responsive rtx1">
            <tr>
                <th width="200" class="th1">Categoria</th>
                <th width="50" class="th1">Opciones</th>
            </tr>';
while ($registro2 = mysqli_fetch_array($registro)) {
    $tabla .= '<tr>
                <td>' . $registro2['nombre_categoria'] . '</td>
                <td>
                    <a href="javascript:editarEmpleado(' . $registro2['id_categoria'] . ');" class="btn btn-warning" title="Editar">
                        <i class="glyphicon glyphicon-edit"></i> Editar
                    </a>
                    <a href="javascript:eliminarEmpleado(' . $registro2['id_categoria'] . ');" class="btn btn-danger" title="Eliminar">
                        <i class="glyphicon glyphicon-trash"></i> Eliminar
                    </a>
                </td>
            </tr>';
}
$tabla .= '</table>';
$array = array(0 => $tabla, 1 => $lista);
echo json_encode($array);
?>
