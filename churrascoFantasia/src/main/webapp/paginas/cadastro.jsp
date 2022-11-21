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
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <script type="text/javascript" src="../assets/js/script.js"></script>
  </head>
  <body>
  	<div class="title">
    	<h1>Cadastro de usuário</h1>
    </div>
    <form action="<%= request.getContextPath() %>" method="post">
    	<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Nome</label>
			<input type="text" class="form-control" id="nome" name="nome" placeholder="Digite seu nome" required title="Digite seu nome">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">CPF</label>
			<input oninput="mascara(this)" type="text" class="form-control" id="cpf" name="cpf" placeholder="Digite seu cpf" maxlength="14" required title="Digite seu CPF">
		</div>
		<div class="mb-3">
		  <label for="exampleInputPassword1" class="form-label">Senha</label>
		  <input type="password" class="form-control" id="senha" name="senha" placeholder="Digite sua senha" required maxlength="9" title="Digite sua senha">
		</div>
		<div class="d-grid gap-2">
	 		<button class="btn btn-primary" type="submit">Cadastrar</button>
	 		<a href="<%= request.getContextPath() %>"><h6 class="text-center">Já tenho conta</h6></a>
		</div>
	</form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>