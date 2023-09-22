

	$('#fdesde').on('change', function(){
		var desde = $('#fdesde').val();
		var hasta = $('#fhasta').val();
		var url = 'ventas/busca_venta_fecha.php';
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
	


	$('#bs-prod').on('keyup',function(){
		cargarDatos()
		return false;
	});

	function cargarDatos(){
		var dato = $('#bs-prod').val();
		var url = 'prestamos_libros/busca_libro.php';
		$.ajax({
		type:'POST',
		url:url,
		data:'dato='+dato,
		success: function(datos){
				$('#agrega-registros').html(datos);
			}
		});
	}
	
	cargarDatos();




	
function pagination(partida){
	var url = 'prestamos_libros/paginar_libro.php';
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