<?php
include('../libros/php/conexion.php');
$paginaActual = $_POST['partida'];
$nroProductos = mysqli_num_rows(mysqli_query($con, "SELECT * FROM usuarios"));
$nroLotes = 10; // Cambiar a 10 registros por página
$nroPaginas = ceil($nroProductos / $nroLotes);
$lista = '';
$tabla = '';

if ($paginaActual > 1) {
    $lista = $lista . '<li><a href="javascript:pagination(' . ($paginaActual - 1) . ');">Anterior</a></li>';
}

// Especifica cuántos números de página deseas mostrar
$paginasAMostrar = 5; // Puedes ajustar este valor según tu preferencia

for ($i = max(1, $paginaActual - $paginasAMostrar); $i <= min($nroPaginas, $paginaActual + $paginasAMostrar); $i++) {
    if ($i == $paginaActual) {
        $lista = $lista . '<li class="active"><a href="javascript:pagination(' . $i . ');">' . $i . '</a></li>';
    } else {
        $lista = $lista . '<li><a href="javascript:pagination(' . $i . ');">' . $i . '</a></li>';
    }
}

if ($paginaActual < $nroPaginas) {
    $lista = $lista . '<li><a href="javascript:pagination(' . ($paginaActual + 1) . ');">Siguiente</a></li>';
}

if ($paginaActual <= 1) {
    $limit = 0;
} else {
    $limit = $nroLotes * ($paginaActual - 1);
}

$registro = mysqli_query($con, "SELECT * FROM usuarios WHERE `ced`!='123456890' LIMIT $limit, $nroLotes ");
$tabla = $tabla . '<table class="table table-striped table-condensed table-hover table-responsive">
<tr>
<th width="200" class="th1">Nombres</th>
<th width="300" class="th1">Apellidos</th>
<th width="300" class="th1">Cedula</th>
<th width="200" class="th1">Usuario</th>
<th width="200" class="th1">Contraseña</th>
<th width="50" class="th1">Opciones</th>
</tr>';

while ($registro2 = mysqli_fetch_array($registro)) {
    $tabla = $tabla . '<tr>
        <td>' . $registro2['nom'] . '</td>
        <td>' . $registro2['ape'] . '</td>
        <td>' . $registro2['ced'] . '</td>
        <td>' . $registro2['user'] . '</td>
        <td>' . $registro2['pass'] . '</td>
        <td>
		<a href="javascript:editarEmpleado(' . $registro2['id_bibliotecario'] . ');" class="btn btn-warning btn-sm" title="Editar">
		<i class="glyphicon glyphicon-edit"></i> Editar
		</a>
		<a href="javascript:eliminarEmpleado(' . $registro2['id_bibliotecario'] . ');" class="btn btn-danger btn-sm" title="Eliminar">
		<i class="glyphicon glyphicon-trash"></i>Eliminar
		</a>
	</td>
    </tr>';
}

$tabla = $tabla . '</table>';

$array = array(0 => $tabla,
    1 => $lista);

echo json_encode($array);
?>
