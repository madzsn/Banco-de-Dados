import java.sql.*;

public class gestaoProdutosCategorias {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            // Inserting data into 'produto' table
            String nomeProduto = "Celular";
            float preco = 10000;

            String sqlProduto = "INSERT INTO produto (nome_produto, preco) VALUES (?, ?)";
            try (PreparedStatement stmtProduto = conexao.prepareStatement(sqlProduto, Statement.RETURN_GENERATED_KEYS)) {
                stmtProduto.setString(1, nomeProduto);
                stmtProduto.setFloat(2, preco);

                int linhasAfetadasProduto = stmtProduto.executeUpdate();

                if (linhasAfetadasProduto > 0) {
                    System.out.println("Produto inserido com sucesso!");

                    // Retrieving the generated id_produto
                    ResultSet generatedKeys = stmtProduto.getGeneratedKeys();
                    int idProduto = 0;
                    if (generatedKeys.next()) {
                        idProduto = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'categoria' table
                    String nomeCategoria = "Eletrônicos";

                    String sqlCategoria = "INSERT INTO categoria (id_produto, nome_categoria) VALUES (?, ?)";
                    try (PreparedStatement stmtCategoria = conexao.prepareStatement(sqlCategoria)) {
                        stmtCategoria.setInt(1, idProduto);
                        stmtCategoria.setString(2, nomeCategoria);

                        int linhasAfetadasCategoria = stmtCategoria.executeUpdate();

                        if (linhasAfetadasCategoria > 0) {
                            System.out.println("Categoria inserida com sucesso!");
                        } else {
                            System.out.println("Não foi possível inserir a categoria.");
                        }
                    }
                } else {
                    System.out.println("Não foi possível inserir o produto.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
