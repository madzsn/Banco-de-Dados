import java.sql.*;

public class cadastroUsuarioPedido {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            // Inserting data into 'usuario' table
            String nome = "Maria Eduarda";
            String email = "maduemail@gmail.com";

            String sqlUsuario = "INSERT INTO usuario (nome, email) VALUES (?, ?)";
            try (PreparedStatement stmtUsuario = conexao.prepareStatement(sqlUsuario, Statement.RETURN_GENERATED_KEYS)) {
                stmtUsuario.setString(1, nome);
                stmtUsuario.setString(2, email);

                int linhasAfetadasUsuario = stmtUsuario.executeUpdate();

                if (linhasAfetadasUsuario > 0) {
                    System.out.println("Usuário inserido com sucesso!");

                    // Retrieving the generated id_usuario
                    ResultSet generatedKeys = stmtUsuario.getGeneratedKeys();
                    int idUsuario = 0;
                    if (generatedKeys.next()) {
                        idUsuario = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'produto' table
                    String produto = "Garrafa";
                    int quantidade = 10;

                    String sqlProduto = "INSERT INTO produto (id_usuario, produto, quantidade) VALUES (?, ?, ?)";
                    try (PreparedStatement stmtProduto = conexao.prepareStatement(sqlProduto)) {
                        stmtProduto.setInt(1, idUsuario);
                        stmtProduto.setString(2, produto);
                        stmtProduto.setInt(3, quantidade);

                        int linhasAfetadasProduto = stmtProduto.executeUpdate();

                        if (linhasAfetadasProduto > 0) {
                            System.out.println("Produto inserido com sucesso!");
                        } else {
                            System.out.println("Não foi possível inserir o produto.");
                        }
                    }
                } else {
                    System.out.println("Não foi possível inserir o usuário.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
