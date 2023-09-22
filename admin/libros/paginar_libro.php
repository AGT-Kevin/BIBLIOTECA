<?php
include('../conexion.php');

$paginaActual = $_POST['partida'];

$nroProductos = mysqli_num_rows(mysqli_query($con, "SELECT * FROM libros"));
$nroLotes = 10; // Cambia este valor a 10 para mostrar 10 elementos por página
$nroPaginas = ceil($nroProductos / $nroLotes);
$lista = '';
$tabla = '';

if ($paginaActual > 1) {
    $lista .= '<li class="page-item"><a class="page-link" href="javascript:pagination(' . ($paginaActual - 1) . ');">Anterior</a></li>';
}
for ($i = 1; $i <= $nroPaginas; $i++) {
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
$registro = mysqli_query($con, "SELECT * FROM libros LIMIT $limit, $nroLotes ");
$tabla .= '<table class="table table-hover table-responsive rtx">
            <tr>
              <th width="200" class="th1">Foto</th>
              <th width="300" class="th1">ISBN</th>
              <th width="300" class="th1">Nombre</th>
              <th width="300" class="th1">Descripción</th>
              <th width="100" class="th1">Disponible</th>
              <th width="100" class="th1">Categoría</th>
              <th width="100" class="th1">Subcategoría</th>
              <th width="100" class="th1">Fecha de Ingreso</th>
              <th width="300" class="th1">Autor</th>
              <th width="50" class="th1">Opciones</th>
          </tr>';
while ($registro2 = mysqli_fetch_array($registro)) {
    $foto = $registro2['foto'];
    $imagen = '<img src="libros/' . $foto . '" width="50" height="50">';
    $tabla .= '<tr>
        <td class="th2">' . $imagen . '</td>
        <td>' . $registro2['ISBN'] . '</td>
        <td>' . $registro2['nombre'] . '</td>
        <td>' . $registro2['descripcion'] . '</td>
        <td>' . $registro2['disponible'] . '</td>
        <td>' . $registro2['id_categoria'] . '</td>
        <td>' . $registro2['id_subcategoria'] . '</td>
        <td>' . $registro2['fecha_ingreso'] . '</td>
        <td>' . $registro2['url_descarga'] . '</td>
        <td>
        <td>
        <a href="javascript:editarLibro(' . $registro2['id_libro'] . ');" class="btn btn-warning" title="Editar libro">
            <i class="glyphicon glyphicon-edit"></i> Editar
        </a>
        <a href="javascript:eliminarLibro(' . $registro2['id_libro'] . ');" class="btn btn-danger" title="Eliminar libro">
            <i class="glyphicon glyphicon-trash"></i> Eliminar
        </a>
    </td>
    
    
        </tr>';
}
$tabla .= '</table>';
$array = array(0 => $tabla, 1 => $lista);
echo json_encode($array);
?>
