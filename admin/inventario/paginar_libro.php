<?php
include('../conexion.php');
$paginaActual = isset($_POST['partida']) ? $_POST['partida'] : 1; // Definir la primera página como predeterminada

$nroProductos = mysqli_num_rows(mysqli_query($con, "SELECT * FROM inventario"));
$nroLotes = 10;
$nroPaginas = ceil($nroProductos / $nroLotes);
$lista = '';
$tabla = '';
// Agregar un botón para actualizar la página

if ($paginaActual > 1) {
    $lista = $lista . '<li><a href="javascript:pagination(' . ($paginaActual - 1) . ');">Anterior</a></li>';
}


// Definir el rango de páginas a mostrar alrededor de la página actual
$rango = 2;
$inicio = max(1, $paginaActual - $rango);
$fin = min($paginaActual + $rango, $nroPaginas);

for ($i = $inicio; $i <= $fin; $i++) {
    if ($i == $paginaActual) {
        $lista = $lista . '<li class="active"><a href="javascript:pagination(' . $i . ');">' . $i . '</a></li>';
    } else {
        $lista = $lista . '<li><a href="javascript:pagination(' . $i . ');">' . $i . '</a></li>';
    }
}

if ($paginaActual < $nroPaginas) {
    $lista = $lista . '<li><a href="javascript:pagination(' . ($paginaActual + 1) . ');">Siguiente</a></li>';
}

$lista = $lista . '<li><a href="javascript:location.reload();">Actualizar  pag.1</a></li>';

if ($paginaActual <= 1) {
    $limit = 0;
} else {
    $limit = $nroLotes * ($paginaActual - 1);
}
$registro = mysqli_query($con, "SELECT * FROM inventario LIMIT $limit, $nroLotes ");
$tabla = $tabla . '<table class="table  table-hover table-responsive rtx">
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
    $tabla = $tabla . '<tr>
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
        <a href="javascript:editarLibro(' . $registro2['id_inventario'] . ');" title="Editar" class="text-warning">
            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
        </a>
        <a href="javascript:eliminarLibro(' . $registro2['id_inventario'] . ');" title="Eliminar">
            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
        </a>
    </td>
    
    


         
    </tr>';
}
$tabla = $tabla . '</table>';
$array = array(0 => $tabla,
    1 => $lista);
echo json_encode($array);
?>
