package br.com.churrascofantasia.conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	
	private static String url = "jdbc:postgresql://localhost:5432/churrasco-fantasia?autoreconnect=true\";";
	private static String user = "postgres";
	private static String senha = "admin";
	private static Connection conexao = null;

	//Se a classe for chamada em qualquer lugar, você vai ter a conexão através do método conectar
	static {
		conectar();
	}
	
	//Construtor que será instânciado e criara uma conexão através do método conectar
	public Conexao() {
		conectar();
	}
	
	private static void conectar() {
		try {
			if(conexao == null) {
				Class.forName("org.postgresql.Driver"); //Carrega drive de conexão com o banco
				conexao = DriverManager.getConnection(url, user, senha);
				conexao.setAutoCommit(false);
				System.out.println("Conex�o realizada com sucesso!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConexao() {
		return conexao;
	}
}
