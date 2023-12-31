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

		// Función para realizar la búsqueda inicial
		function buscarUsuarios() {
			var dato = $('#bs-prod').val();
			var url = 'usuarios/busca_usuario.php';
			$.ajax({
				type: 'POST',
				url: url,
				data: 'dato=' + dato,
				success: function(datos) {
					$('#agrega-registros').html(datos);
				}
			});
		}
	
		// Llama a la función de búsqueda cuando la página se carga
		buscarUsuarios();
	
		// Configura el evento keyup para realizar búsquedas en tiempo real
		$('#bs-prod').on('keyup', function() {
			buscarUsuarios();
		});
	});
	
	


function agregaEmpleado(){
	var url = 'usuarios/agrega_usuario.php';
	$.ajax({
		type:'POST',
		url:url,
		data:$('#formulario').serialize(),
		success: function(registro){
			if ($('#pro').val() == 'Registro'){
			$('#formulario')[0].reset();
			$('#mensaje').addClass('bien').html('Registro completado con exito').show(200).delay(2500).hide(200);
			$('#agrega-registros').html(registro);
			window.location.href = 'usuarios.php';
			}else{
			$('#mensaje').addClass('bien').html('Edicion completada con exito').show(200).delay(2500).hide(200);
			$('#agrega-registros').html(registro);
			window.location.href = 'usuarios.php';
			}
		}
	});
	return false;
}

function eliminarEmpleado(id){
	var url = 'usuarios/elimina_usuario.php';
	var pregunta = confirm('¿Esta seguro de eliminar este Usuario?');
	if(pregunta==true){
		$.ajax({
		type:'POST',
		url:url,
		data:'id='+id,
		success: function(registro){
			$('#agrega-registros').html(registro);	
window.location.href = 'usuarios.php';
}
});
}
// No es necesario un 'return false' aquí, ya que solo se ejecutará si se confirma la eliminación.
}

function editarEmpleado(id){
	$('#formulario')[0].reset();
	var url = 'usuarios/edita_usuario.php';
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
				$('#nom').val(datos[0]);
				$('#ape').val(datos[1]);
				$('#ced').val(datos[2]);
				$('#user').val(datos[3]);
				$('#pass').val(datos[4]);
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
	var url = 'usuarios/paginar_usuario.php';
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