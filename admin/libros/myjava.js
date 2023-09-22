$(document).ready(pagination(1));
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
		var url = 'libros/busca_libro.php';
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
	var url = 'libros/agrega_libro.php';
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
			window.location.href = 'libros.php';
		}
	});
	return false;
}

function eliminarLibro(id){
	var url = 'libros/elimina_libro.php';
	var pregunta = confirm('¿Esta seguro de eliminar este Libro?');
	if(pregunta==true){
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-registros').html(registro);
			// Redirect to libros.php
			window.location.href = 'libros.php';
		}
	});
	return false;
	}else{
		return false;
	}
}

function editarLibro(id) {
    console.log('hola editar');
    $('#formulario')[0].reset();
    var url = 'libros/edita_libro.php';
    $.ajax({
        type: 'POST',
        url: url,
        data: 'id=' + id,
        success: function (valores) {
            var datos = eval(valores);
            $('#reg').hide();
            $('#edi').show();
            $('#pro').val('Edicion');
            $('#id-prod').val(id);
            $('#foto').attr('src', datos[0]);
            $('#ISBN').val(datos[1]);
            $('#nombre').val(datos[2]);
            $('#descripcion').val(datos[3]);
            $('#disponible').val(datos[4]);
            $('#id_categoria').val(datos[5]);
            $('#id_subcategoria').val(datos[6]);
            $('#fecha_ingreso').val(datos[7]);
            $('#descarga').val(datos[8]);
            $('#registra-producto').modal({
                show: true,
                backdrop: 'static'
            });
        }
    });
    return false;
}


function pagination(partida){
	var url = 'libros/paginar_libro.php';
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