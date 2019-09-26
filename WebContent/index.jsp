<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Poker de Cartas</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/poker.css">
</head>
<body>
<div class="container">
	<header class="bg-dark">
		<div class="row">
			<div class="col-12 col-md-3"> 
				<img class="img-logo" src="img/logo.png">
			</div>
		</div>
	</header>
	<nav class="col-12">Si nunca ganas contactanos, tampoco ganaras pero el que pierdas nos hace feliz <a href="email.jsp">Contacto</a></nav>
	<div class="row">	
		<div class="col-12 col-md-8">
			<div class="row">
			<% for (int i = 1; i<=13; i++) { %>
				<div class="btncarta col-6 col-md-3" data-carta="<% out.print(i); %>">
					<img class="img-thumbnail" src="img/<%= i %>.png" />
				</div>
			<% } %>
			</div>
		</div>
		<aside class="col-12 col-md-4">

			<section class="col-12">
				<h2>Listado de Cartas</h2>
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">Carta</th>
				      <th scope="col">Cant</th>
				    </tr>
				  </thead>
				  <tbody id="listado">
				    <tr>
				      <th scope="row">1</th>
				      <td>As</td>
				      <td>3</td>
				    </tr>
				    <tr>
				      <th scope="row">2</th>
				      <td>2 de diamantes</td>
				      <td>1</td>
				    </tr>
				    <tr>
				      <th scope="row">3</th>
				      <td>3 de picas</td>
				      <td>4</td>
				    </tr>
				  </tbody>
				</table>
				
			</section>
			<section class="col-12">
				<h2>Registro de Cartas</h2>
				<form>
				  <div class="form-group">
				    <label for="inputNum">Numero</label>
				    <input type="text" id="numero" class="form-control" id="inputNum" aria-describedby="emailHelp" placeholder="Ingrese el numero">
				    <small id="emailHelp" class="form-text text-muted">Debe ingresar un numero del 1 al 13</small>
				  </div>
				  <div class="form-group">
				    <label for="inputCarta">Carta</label>
				    <input type="text" id="carta" class="form-control" id="inputCarta" placeholder="Descripcion de la carta">
				  </div>
				  <button type="button" id="registrar" class="btn btn-primary">Guardar</button>
				</form>
			</section>
		</aside>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script></body>
<script src="js/cartas.js"></script>
</html>