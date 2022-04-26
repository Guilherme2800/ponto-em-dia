<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Ponto em Dia - Historico</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="shortcut icon" href="img/favicon-16x16.png" />

<link href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
</head>


<body id="body-pd">

	<%@ include file="css/sideBarCss.jsp"%>
	<%@ include file="scripts/sideBarScript.jsp"%>

    <c:set var="pagina" value="historicoAdmin" scope="request" />
	<%@ include file="sideBarV2.jsp"%>

	<!--Container Main start-->
	<div class="container center-block" style="overflow-y: auto">

			<h1>Historico de pontos registrados - Todos usu�rios</h1>
			<hr>

			<table class="table" id="tabelaHistorico">
				<thead>
					<tr>
						<th>Id usuario</th>
						<th>Data</th>
						<th>Horario chegada</th>
						<th>Horario Almoco</th>
						<th>Horario volta do Almoco</th>
						<th>Horario saida</th>
						<th>A��o</th>
					</tr>

				</thead>
				<tbody>

					<c:forEach items="${listaPontos}" var="ponto">
						<tr>
							<td>${ponto.user_id}</td>
							<td>${ponto.data}</td>
							<td>${ponto.dataEntrada}</td>
							<td>${ponto.dataAlmoco}</td>
							<td>${ponto.dataVoltaAlmoco}</td>
							<td>${ponto.dataSaida}</td>

							<td><button type="button" class="btn btn-outline-success"
									data-bs-toggle="modal" data-bs-target="#editar"
									onclick="editar(this)">Edit</button>
								<button type="button" class="btn btn-outline-danger"
									data-bs-toggle="modal" data-bs-target="#remover"
									onclick="editar(this)">Remove</button></td>

						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
		
		<div class="modal fade" id="editar" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Editar</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<form action="entrada?acao=EditarPontoAdmin" method="post">

						<input hidden="" id="user_id_update" class="form-control border-0"
							type="text" name="user_id"> <input hidden=""
							id="data_update" class="form-control border-0" type="text"
							name="data"> <label>Horario chegada: </label> <input
							required id="horaEntrada" class="form-control border-0"
							type="time" name="horaEntrada"> <label>Horario
							Almo�o: </label> <input required id="horaAlmoco"
							class="form-control border-0" type="time" name="horaAlmoco">

						<label>Horario volta do Almo�o: </label> <input required
							id="horaVoltaAlmoco" class="form-control border-0" type="time"
							name="horaVoltaAlmoco"> <label>Horario sa�da: </label> <input
							required id="horaSaida" class="form-control border-0" type="time"
							name="horaSaida">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Cancelar</button>
					<button class="btn btn-success" type="submit" name="submit">Salvar</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal Remover-->
	<div class="modal fade" id="remover" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Deletar
						Registro</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">Realmente deseja apagar esse registro?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success"
						data-bs-dismiss="modal">Cancelar</button>
					<form action="entrada?acao=ApagarRegistroAdmin" method="post">
						<input hidden="" id="user_id_remove"
							class="form-control border-0 user_id" type="text" name="user_id">
						<input hidden="" id="data_remove" class="form-control border-0"
							type="text" name="data">
						<button class="btn btn-danger" type="submit" name="submit">Apagar</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>


<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<%@ include file="scripts/HistoricoAdmin.jsp"%>

</html>