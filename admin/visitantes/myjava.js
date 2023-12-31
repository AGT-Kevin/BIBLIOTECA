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
		var url = 'visitantes/busca_visitante.php';
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
	var url = 'visitantes/agrega_visitante.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(),
		success: function(registro){
			if ($('#pro').val() == 'Registro'){
			$('#formulario')[0].reset();
			$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
			$('#agrega-registros').html(registro);
			// Redirigir a subcategoria_libro.php después de completar la operación
			window.location.href = 'visitantes.php';
			return false;
			}else{
			$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
			$('#agrega-registros').html(registro);
// Redirigir a subcategoria_libro.php después de completar la operación
window.location.href = 'visitantes.php';
			return false;
			}
		}
	});
	return false;
}

function eliminarEmpleado(id){
	var url = 'visitantes/elimina_visitante.php';
	var pregunta = confirm('¿Esta seguro de eliminar este visitante?');
	if(pregunta==true){
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-registros').html(registro);
			// Redirigir a subcategoria_libro.php después de completar la operación
			window.location.href = 'visitantes.php';
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
	var url = 'visitantes/edita_visitante.php';
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
				$('#nombreCompleto').val(datos[0]);
				$('#usuario').val(datos[1]);
				$('#pass').val(datos[2]);
				$('#email').val(datos[3]);
				$('#direccion').val(datos[4]);
				$('#telefono').val(datos[5]);
				$('#edad').val(datos[6]);
				$('#sexo').val(datos[7]);
				$('#estado').val(datos[8]);
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
	var url = 'visitantes/paginar_visitante.php';
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