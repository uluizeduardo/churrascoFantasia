<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Churrasco Fantasia</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/principal.css">
    <script type="text/javascript" src="../assets/js/script.js"></script>
    <script type="text/javascript" src="../assets/js/principal.js"></script>
  </head>
  <body>
	  <nav class="navbar fixed-top navbar-expand-lg bg-light">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#">Churrasco Fantasia</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarScroll">
		      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">Ver lista</a>
		        </li>
		      </ul>
		      <form class="d-flex" role="search">
		        <a href="<%= request.getContextPath() %>" class="btn btn-outline-danger" type="submit">Sair</a>
		      </form>
		    </div>
		  </div>
		</nav>
		<div class="title">
	    	<h1>Preencha suas informações</h1>
    	</div>
		<form class="form" action="<%= request.getContextPath() %>/login" method="post">
		<div class="mb-3">
	    	<input type="text" class="form-control" id="fantasia" aria-describedby="fantasia" placeholder="Informe sua fantasia">
	    </div>
	    <div class="mb-3">
		    <div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="carnes" value="carnes" id="checkbox" data-carnes>
			  <label class="form-check-label" for="flexCheckDefault">
			    Carnes
			  </label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="outros" value="outros" id="checkbox" data-outros>
			  <label class="form-check-label" for="flexCheckDefault">
			    Outros itens
			  </label>
			</div>
			<div class="alert alert-warning alert-dismissible fade show" hidden id="alert1" role="alert">
			  Escolha uma das opções
			</div>
		</div>
		<div class="mb-3">
			<select name="select1" id="select1" class="form-select form-select" aria-label=".form-select">
		  		<option selected value="">Escolha uma opção</option>
		  	</select>
		</div>
		<div class="mb-3">
		    <div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="quentes" value="quentes" id="checkbox" data-quentes>
			  <label class="form-check-label" for="flexCheckDefault">
			    Bebidas quentes
			  </label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="geladas" value="geladas" id="checkbox" data-geladas>
			  <label class="form-check-label" for="flexCheckDefault">
			    Bebidas geladas
			  </label>
			</div>
			<div class="alert alert-warning alert-dismissible fade show" hidden id="alert2" role="alert">
			  Escolha uma das opções
			</div>
		</div>
		<div class="mb-3">
			<select name="select2" id="select2" class="form-select form-select" aria-label=".form-select">
				<option selected>Escolha uma opção</option>
			</select>
		</div>
		<div class="d-grid gap-2">
			<a href="<%= request.getContextPath() %>" class="btn btn-success">Enviar</a>
		</div>
	</form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>