
$(function(){
	$('#bd-desde').on('change', function(){
		var desde = $('#bd-desde').val();
		var hasta = $('#bd-hasta').val();
		var url = 'clientes/busca_producto_fecha.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'desde='+desde+'&hasta='+hasta,
		success: function(datos){
			$('#agrega-registros').html(datos);
		}
	});
	return false;
	});
	
	
	$('#nuevo-producto').on('click',function(){
		$('#formulario')[0].reset();
		$('#pro').val('Registro');
		$('#edi').hide();
		$('#reg').show();
		$('#registra-producto').modal({
			show:true,
			backdrop:'static'
		});
	});
	
	$('#bs-prod').on('keyup',function(){
		var dato = $('#bs-prod').val();
		var url = 'inventario/busca_libro.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
			$('#agrega-registros').html(datos);
		}
	});
	return false;
	});
	
});

function agregaLibro(){
	var url = 'inventario/agrega_libro.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(),
		success: function(registro){
			if ($('#pro').val() == 'Registro'){
			$('#formulario')[0].reset();
			$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
			$('#agrega-registros').html(registro);
			}else{
			$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
			$('#agrega-registros').html(registro);
			}
			// Redirect to libros.php
			window.location.href = 'inventario.php';
		}
	});
	return false;
}

function eliminarLibro(id){
	var url = 'inventario/elimina_libro.php';
	var pregunta = confirm('¿Esta seguro de eliminar este Libro?');
	if(pregunta==true){
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-registros').html(registro);
		
window.location.href = 'inventario.php';
}
});
}
// No es necesario un 'return false' aquí, ya que solo se ejecutará si se confirma la eliminación.
}

function editarLibro(id) {
    $('#formulario')[0].reset();
    var url = 'inventario/edita_libro.php';

    $.post(url, { id: id }, function (valores) {
        var datos = JSON.parse(valores);

        $('#reg').hide();
        $('#edi').show();
        $('#pro').val('Edicion');
        $('#id-prod').val(id);
        $('#codigo').val(datos[0]);
        $('#ISBN').val(datos[1]);
        $('#libro').val(datos[2]);
        $('#autor').val(datos[3]);
        $('#descripcion').val(datos[4]);
        $('#fila').val(datos[5]);
        $('#categoria').val(datos[6]);
        $('#estante').val(datos[7]);
        $('#cantidad').val(datos[8]);
        $('#fecha').val(datos[9]);

        $('#registra-producto').modal({
            show: true,
            backdrop: 'static'
        });
    });

    return false;
}


function pagination(partida){
	var url = 'inventario/paginar_libro.php';
	$.ajax({
		type:'POST',
		url:url,
		data:'partida='+partida,
		success:function(data){
			var array = eval(data);
			$('#agrega-registros').html(array[0]);
			$('#pagination').html(array[1]);
		}
	});
	return false;
}

pagination(1)