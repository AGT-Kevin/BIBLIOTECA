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
			window.location.href = 'estudiantes.php';
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
		var url = 'estudiantes/busca_estudiante.php';
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

function agregaEmpleado(){
    var url = 'estudiantes/agrega_estudiante.php';
    $.ajax({
        type: 'POST',
        url: url,
        data: $('#formulario').serialize(),
        success: function (registro) {
            if ($('#pro').val() == 'Registro') {
                $('#formulario')[0].reset();
                $('#mensaje').removeClass('error').addClass('bien').html('Registro completado con éxito').show(200).delay(2500).hide(200);
                $('#agrega-registros').html(registro);
				window.location.href = 'estudiantes.php';
                return false;
            } else {
                $('#mensaje').removeClass('error').addClass('bien').html('Edición completada con éxito').show(200).delay(2500).hide(200);
                $('#agrega-registros').html(registro);
				window.location.href = 'estudiantes.php';
                return false;
            }
        },
        error: function () {
            $('#mensaje').removeClass('bien').addClass('error').html('Hubo un error al procesar la solicitud').show(200).delay(2500).hide(200);
        }
    });
    return false;
}



function eliminarEmpleado(id){
	var url = 'estudiantes/elimina_estudiante.php'
	var pregunta = confirm('¿Al eliminar este estudiante se eliminara todo el registro de el ?');
	if(pregunta==true){
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-registros').html(registro);
			window.location.href = 'estudiantes.php';
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
    var url = 'estudiantes/edita_estudiante.php';
    $.ajax({
        type: 'POST',
        url: url,
        data: 'id=' + id,
        success: function (valores) {
            // Verifica qué datos se están recibiendo en la respuesta AJAX
            console.log(valores);

            var datos = eval(valores);
            $('#reg').hide();
            $('#edi').show();
            $('#pro').val('Edicion');
            $('#id-prod').val(id);
            $('#carnet').val(datos[0]);
            $('#nombre').val(datos[1]);
            $('#anio').val(datos[2]);
            $('#carrera').val(datos[3]);
            $('#registra-producto').modal({
                show: true,
                backdrop: 'static'
            });

            return false;
        }
    });
    return false;
}


function pagination(partida){
	var url = 'estudiantes/paginar_usuario.php';
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