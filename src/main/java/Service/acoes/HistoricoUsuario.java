package Service.acoes;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Ponto;
import Model.Usuario;
import Service.PontoService;

public class HistoricoUsuario implements AcaoInterface{
	
	@Override
	public String executar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Ponto> pontosUsuario = new PontoService().buscarHistoricoDoUsuario((Usuario) req.getSession().getAttribute("usuario"));
		req.setAttribute("listaPontos", pontosUsuario);
		return "forward:historicoPontos.jsp";
	}


}
