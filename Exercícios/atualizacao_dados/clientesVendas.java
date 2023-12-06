package atualizacao_dados;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class clientesVendas {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario,
                senha)) {
                    // Inserindo dados na tabela clientes
            String sqlInserirClientes = "INSERT INTO clientes (id_cliente, nome, email) VALUES " +
                                        "(1, 'Ana', 'ana@example.com'), " +
                                        "(2, 'Pedro', 'pedro@example.com')";

            try (PreparedStatement stmtClientes = conexao.prepareStatement(sqlInserirClientes)) {
                int linhasAfetadasClientes = stmtClientes.executeUpdate();
                if (linhasAfetadasClientes > 0) {
                    System.out.println("Dados de clientes inseridos com sucesso!");
                } else {
                    System.out.println("Não foi possível inserir dados de clientes.");
                }
            }

            // Inserindo dados na tabela vendas
            String sqlInserirVendas = "INSERT INTO vendas (id_venda, id_cliente, produto_vendido, valor) VALUES " +
                                      "(1, 1, 'Celular', 1200.00), " +
                                      "(2, 2, 'Fones', 150.00)";

            try (PreparedStatement stmtVendas = conexao.prepareStatement(sqlInserirVendas)) {
                int linhasAfetadasVendas = stmtVendas.executeUpdate();
                if (linhasAfetadasVendas > 0) {
                    System.out.println("Dados de vendas inseridos com sucesso!");
                } else {
                    System.out.println("Não foi possível inserir dados de vendas.");
                }
            }
        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}