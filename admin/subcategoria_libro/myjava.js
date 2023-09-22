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
		var url = 'subcategoria_libro/busca_subcategoria.php';
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

function agregaEmpleado() {
    var url = 'subcategoria_libro/agrega_subcategoria.php';
    $.ajax({
        type: 'POST',
        url: url,
        data: $('#formulario').serialize(),
        success: function (registro) {
            if ($('#pro').val() == 'Registro') {
                $('#formulario')[0].reset();
                $('#mensaje').addClass('bien').html('Registro completado con éxito').show(200).delay(2500).hide(200);
                $('#agrega-registros').html(registro);
				// Redirigir a subcategoria_libro.php después de completar la operación
				window.location.href = 'subcategoria_libro.php';
            } else {
                $('#mensaje').addClass('bien').html('Edición completada con éxito').show(200).delay(2500).hide(200);
                $('#agrega-registros').html(registro);
            }
            
            // Redirigir a subcategoria_libro.php después de completar la operación
            window.location.href = 'subcategoria_libro.php';
        }
    });
    return false;
}


function eliminarEmpleado(id){
	var url = 'subcategoria_libro/elimina_subcategoria.php';
	var pregunta = confirm('¿Esta seguro de eliminar esta categoria?');
	if(pregunta==true){
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-registros').html(registro);
			// Redirigir a subcategoria_libro.php después de completar la operación
            window.location.href = 'subcategoria_libro.php';
			return false;
		}
	});
	return false;
	}else{
		return false;
	}
}

function editarEmpleado(id){
	$('#formulario')[0].reset();
	var url = 'subcategoria_libro/edita_subcategoria.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(valores){
				var datos = eval(valores);
				$('#reg').hide();
				$('#edi').show();
				$('#pro').val('Edicion');
				$('#id-prod').val(id);
				$('#nombre').val(datos[0]);
				$('#registra-producto').modal({
					show:true,
					backdrop:'static'
				});
			return false;
		}
	});
	return false;
}

function pagination(partida){
	var url = 'subcategoria_libro/paginar_subcategoria.php';
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