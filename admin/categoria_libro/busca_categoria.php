
<?php
include('../conexion.php');
$dato = $_POST['dato'];

$registro = mysqli_query($con, "SELECT * FROM categorias WHERE nombre_categoria LIKE '%$dato%' ORDER BY id_categoria ASC LIMIT 5");

if (mysqli_num_rows($registro) > 0) {
    echo '<table class="table table-hover table-responsive">
        <thead>
            <tr>
                <th  class="th1" scope="col" width="200">Categoría</th>
                <th class="th1" scope="col" width="100">Acciones</th>
            </tr>
        </thead>
        <tbody>';

    while ($registro2 = mysqli_fetch_array($registro)) {
        echo '<tr>
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

    echo '</tbody></table>';
} else {
    echo '<p>No se encontraron resultados</p>';
}
?>
