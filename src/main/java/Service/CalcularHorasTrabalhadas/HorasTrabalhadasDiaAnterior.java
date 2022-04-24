package Service.CalcularHorasTrabalhadas;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import Model.Ponto;
import Model.Usuario;

public class HorasTrabalhadasDiaAnterior extends CalcularHorasTrabalhadas {

	@Override
	public String calcularHoras(HttpServletRequest req) {

		long totalMinutos = 0l;
		Integer totalHoras = 0;

		Ponto ponto = pontoService.buscarPontoDiaAnteriorDoUsuario((Usuario) req.getSession().getAttribute("usuario"));

		if(ponto == null) {
			return "0";
		}
		pontoService.validarHorarios(ponto);

		totalMinutos = this.calcularMinutos(ponto);

		totalMinutos *= -1;
		while (totalMinutos >= 60) {
			totalMinutos -= 60;
			totalHoras++;
		}

		return totalHoras.toString() + ":" + (totalMinutos == 0 ? "00" : totalMinutos) + "";
	}

	@Override
	public String intervalo() {
		Calendar data = Calendar.getInstance();
		data.add(Calendar.DAY_OF_MONTH, -1);

		return new SimpleDateFormat("dd/MM/yyyy").format(data.getTime());
	}

}
