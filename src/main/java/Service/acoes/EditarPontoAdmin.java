package Service.acoes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Ponto;
import Service.PontoService;

public class EditarPontoAdmin implements AcaoInterface{

	@Override
	public String executar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Long user_id = Long.parseLong(req.getParameter("user_id"));
		String data = req.getParameter("data");
		String horaEntrada = req.getParameter("horaEntrada");
		String horaAlmoco = req.getParameter("horaAlmoco");
		String horaVoltaAlmoco = req.getParameter("horaVoltaAlmoco");
		String horaSaida = req.getParameter("horaSaida");
		
		List<Ponto> pontos = new ArrayList<>();
		

		 
		 
		new PontoService().editarRegistro(user_id, data, horaEntrada, horaAlmoco, horaVoltaAlmoco, horaSaida);
		
		return "forward:historicoPontosAdmin.jsp";
	}

	
	
}
