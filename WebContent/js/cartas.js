document.querySelector('#registrar').addEventListener('click', function() { 
	guardarCarta();
	pintarTabla();
});


$(".btncarta").click(function(){
  var datos = localStorage.getItem('datos');

	datos = JSON.parse(datos);

	for(let item of datos) {
		if(item.numero == this.dataset.carta) {
			item.cantidad ++;
		}
	}

	localStorage.setItem('datos', JSON.stringify(datos));
	pintarTabla();
});
/*
document.querySelector('.btncarta').addEventListener('click', function() { 

	var datos = localStorage.getItem('datos');

	datos = JSON.parse(datos);

	for(let item of datos) {
		if(item.numero == this.dataset.carta) {
			item.cantidad ++;
		}
	}

	localStorage.setItem('datos', JSON.stringify(datos));
	pintarTabla();

});
*/
function guardarCarta(){

	var numero = document.querySelector('#numero').value;
	var carta = document.querySelector('#carta').value;
	var datos = localStorage.getItem('datos');

	datos = JSON.parse(datos);

	var dato = {numero: numero, carta: carta, cantidad: '0'};

	datos.push(dato);

	localStorage.setItem('datos', JSON.stringify(datos));
}

function cargarJSON(){
	var miObjeto = [
				{ 'numero': '1', 'carta': 'as', 'cantidad': '2' },
				{ 'numero': '2', 'carta': '2 de diamantes', 'cantidad': '3' }];
		localStorage.setItem('datos', JSON.stringify(miObjeto));
}

function pintarTabla(){
	var datos = localStorage.getItem('datos');

	let res = document.querySelector('#listado');
		res.innerHTML = '';

	console.log('objetoObtenido: ', JSON.parse(datos));
	datos = JSON.parse(datos);

	for(let item of datos) {
		res.innerHTML += `<tr>
  				<td>${item.numero}</td>
  				<td>${item.carta}</td>
  				<td>${item.cantidad}</td>
			</tr>`;
	}
}


function leerJSON() {
            $.getJSON("data/data.json", function(datos) {
            	localStorage.setItem('datos', JSON.stringify(datos));
            });
        }
leerJSON();
//cargarJSON();
pintarTabla();