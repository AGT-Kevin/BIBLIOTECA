<?php
include('../conexion.php');
$dato = $_POST['dato'];

$consulta = "SELECT * FROM inventario WHERE
    codigo LIKE '%$dato%' OR
    ISBN LIKE '%$dato%' OR
    libro LIKE '%$dato%' OR
    autor LIKE '%$dato%' OR
    descripcion LIKE '%$dato%' OR
    fila LIKE '%$dato%' OR
    categoria LIKE '%$dato%' OR
    estante LIKE '%$dato%' OR
    fecha LIKE '%$dato%'
    ORDER BY id_inventario ASC
    LIMIT 10"; // Limitar a 10 registros

$registro = mysqli_query($con, $consulta);

echo '<table id="ejemplo" class="table rtx table-hover table-responsive">
        	<tr>
			<th width="200" class="th1">Codigo</th>
			<th width="200" class="th1">ISBN</th>
			<th width="300" class="th1">libro</th>
			<th width="300" class="th1">autor</th>
			<th width="200" class="th1">Editorial</th>
			<th width="100" class="th1">Origen</th>
			<th width="100" class="th1">edicion</th>
			<th width="100" class="th1"># de Edicion</th>
			<th width="100" class="th1">Cantidad</th>
			<th width="100" class="th1">fecha</th>
			<th width="50" class="th1">Opciones</th>
            </tr>';
if (mysqli_num_rows($registro) > 0) {
    while ($registro2 = mysqli_fetch_array($registro)) {
        if ($registro2['cantidad'] == 0) {
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
                <td>No disponible</td>
            </tr>';
        } else {
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
                <a href="prestamos_libros/ventana_prestamo.php?id=' . $registro2['codigo'] . '" class="btn btn-primary btn-sm">Prestar</a>
             </td>
            </tr>';
        }
    }
} else {
    echo '<tr>
                <td colspan="6">No se encontraron resultados</td>
            </tr>';
}
echo '</table>';
?>
