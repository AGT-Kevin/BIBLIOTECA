<?php
include('../conexion.php');
$dato = $_POST['dato'];
$registro = mysqli_query($con, "SELECT * FROM inventario WHERE 
    codigo LIKE '%$dato%' OR
    ISBN LIKE '%$dato%' OR
    libro LIKE '%$dato%' OR
    autor LIKE '%$dato%' OR
    descripcion LIKE '%$dato%' OR
    fila LIKE '%$dato%' OR
    categoria LIKE '%$dato%' OR
    estante LIKE '%$dato%' OR
    cantidad LIKE '%$dato%' OR
    fecha LIKE '%$dato%'
    ORDER BY id_inventario desc");

echo '<table class="table table-hover table-responsive rtx">
    <tr>
        <th width="200" class="th1">Codigo</th>
        <th width="200" class="th1">ISBN</th>
        <th width="300" class="th1">libro</th>
        <th width="300" class="th1">autor</th>
        <th width="200" class="th1">Editorial</th>
        <th width="100" class="th1">Origen</th>
        <th width="50" class="th1">Edicion</th>
        <th width="50" class="th1"># de Edicion</th>
        <th width="50" class="th1">Cantidad</th>
        <th width="100" class="th1">fecha</th>
        <th width="50" class="th1">Opciones</th>
    </tr>';

if(mysqli_num_rows($registro) > 0){
    while($registro2 = mysqli_fetch_array($registro)){
        echo '<tr>
            <td>'.$registro2['codigo'].'</td>
            <td>'.$registro2['ISBN'].'</td>
            <td>'.$registro2['libro'].'</td>
            <td>'.$registro2['autor'].'</td>
            <td>'.$registro2['descripcion'].'</td>
            <td>'.$registro2['fila'].'</td>
            <td>'.$registro2['categoria'].'</td>
            <td>'.$registro2['estante'].'</td>
            <td>'.$registro2['cantidad'].'</td>
            <td>'.$registro2['fecha'].'</td>
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
} else {
    echo '<tr>
        <td colspan="11">No se encontraron resultados</td>
    </tr>';
}
echo '</table>';
?>
