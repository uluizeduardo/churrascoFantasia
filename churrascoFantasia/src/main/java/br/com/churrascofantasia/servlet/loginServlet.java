package br.com.churrascofantasia.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpf = request.getParameter("cpf");
		String cpfFormatado = cpf.replaceAll("[^0-9]", "");
		String senha = request.getParameter("senha");
		
		System.out.println(cpf);
		System.out.println("CPF: " + cpf.replaceAll("[^0-9]", ""));
	}
}
