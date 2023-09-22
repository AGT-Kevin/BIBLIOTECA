<?php
include 'pdf/config.inc.php';

// Verifica si se proporcionó un ID válido en la URL
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];

    // Conecta a la base de datos
    $db = new Conect_MySql();

    // Ejecuta la consulta SQL para eliminar el registro
    $sql = "DELETE FROM pdf WHERE id_pdf = $id";
    $query = $db->execute($sql);

    // Verifica si se eliminó correctamente
    if ($query) {
        // Redirige al usuario a la página de lista de libros PDF
        header('Location: lista_pdf.php');
        exit;
    } else {
        // Muestra un mensaje de error si la eliminación falló
        echo 'Error al eliminar el libro PDF.';
    }
} else {
    // Muestra un mensaje de error o redirige al usuario si no se proporcionó un ID válido
    echo 'ID de libro PDF no válido.';
}
?>
