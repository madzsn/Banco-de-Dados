import java.sql.*;

public class adicaoFornecedoresCompras {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            // Inserting data into 'fornecedores' table
            String nome = "Leon";
            String contato = "(34) 88888-8888";

            String sqlFornecedores = "INSERT INTO fornecedores (nome, contato) VALUES (?, ?)";
            try (PreparedStatement stmtFornecedores = conexao.prepareStatement(sqlFornecedores, Statement.RETURN_GENERATED_KEYS)) {
                stmtFornecedores.setString(1, nome);
                stmtFornecedores.setString(2, contato);

                int linhasAfetadasFornecedores = stmtFornecedores.executeUpdate();

                if (linhasAfetadasFornecedores > 0) {
                    System.out.println("Fornecedor inserido com sucesso!");

                    // Retrieving the generated id_fornecedor
                    ResultSet generatedKeys = stmtFornecedores.getGeneratedKeys();
                    int idFornecedor = 0;
                    if (generatedKeys.next()) {
                        idFornecedor = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'compras' table
                    int idCompra = 1; // Assuming id_compra for assignment
                    String produtoComprado = "Produto A";
                    int quantidade = 10; // Assuming the quantity purchased

                    String sqlCompras = "INSERT INTO compras (id_compra, id_fornecedor, produto_comprado, quantidade) VALUES (?, ?, ?, ?)";
                    try (PreparedStatement stmtCompras = conexao.prepareStatement(sqlCompras)) {
                        stmtCompras.setInt(1, idCompra);
                        stmtCompras.setInt(2, idFornecedor);
                        stmtCompras.setString(3, produtoComprado);
                        stmtCompras.setInt(4, quantidade);

                        int linhasAfetadasCompras = stmtCompras.executeUpdate();

                        if (linhasAfetadasCompras > 0) {
                            System.out.println("Compra inserida com sucesso!");
                        } else {
                            System.out.println("Não foi possível inserir a compra.");
                        }
                    }
                } else {
                    System.out.println("Não foi possível inserir o fornecedor.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
