import java.sql.*;

public class registroClienteVenda {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            // Inserting data into 'clientes' table
            String nomeCliente = "Juninho";
            String emailCliente = "cliente@email.com";

            String sqlCliente = "INSERT INTO clientes (nome, email) VALUES (?, ?)";
            try (PreparedStatement stmtCliente = conexao.prepareStatement(sqlCliente, Statement.RETURN_GENERATED_KEYS)) {
                stmtCliente.setString(1, nomeCliente);
                stmtCliente.setString(2, emailCliente);

                int linhasAfetadasCliente = stmtCliente.executeUpdate();

                if (linhasAfetadasCliente > 0) {
                    System.out.println("Cliente registrado com sucesso!");

                    // Retrieving the generated id_cliente
                    ResultSet generatedKeys = stmtCliente.getGeneratedKeys();
                    int idCliente = 0;
                    if (generatedKeys.next()) {
                        idCliente = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'vendas' table
                    String produtoVendido = "Capa de chuva";
                    float valor = 5.00f;

                    String sqlVenda = "INSERT INTO vendas (id_cliente, produto_vendido, valor) VALUES (?, ?, ?)";
                    try (PreparedStatement stmtVenda = conexao.prepareStatement(sqlVenda)) {
                        stmtVenda.setInt(1, idCliente);
                        stmtVenda.setString(2, produtoVendido);
                        stmtVenda.setFloat(3, valor);

                        int linhasAfetadasVenda = stmtVenda.executeUpdate();

                        if (linhasAfetadasVenda > 0) {
                            System.out.println("Venda registrada com sucesso!");
                        } else {
                            System.out.println("Não foi possível registrar a venda.");
                        }
                    }
                } else {
                    System.out.println("Não foi possível registrar o cliente.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
