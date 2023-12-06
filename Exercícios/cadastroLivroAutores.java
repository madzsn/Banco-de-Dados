import java.sql.*;

public class cadastroLivroAutores {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            // Inserting data into 'livros' table
            String titulo = "O Morro dos Ventos Uivantes";
            int anoPublicacao = 1847;
            int idLivro = 0;

            String sqlLivros = "INSERT INTO livros (id_livro, titulo, ano_publicacao) VALUES (?, ?, )";
            try (PreparedStatement stmtLivros = conexao.prepareStatement(sqlLivros, Statement.RETURN_GENERATED_KEYS)) {
                stmtLivros.setInt(1, idLivro);
                stmtLivros.setString(2, titulo);
                stmtLivros.setInt(3, anoPublicacao);


                int linhasAfetadasLivros = stmtLivros.executeUpdate();

                if (linhasAfetadasLivros > 0) {
                    System.out.println("Livro inserido com sucesso!");

                    // Retrieving the generated id_livro
                    ResultSet generatedKeys = stmtLivros.getGeneratedKeys();
                    if (generatedKeys.next()) {
                        idLivro = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'autores' table
                    int idAutor = 1; // Assuming id_compra for assignment
                    String nomeAutor = "Emily Bronte";

                    String sqlCompras = "INSERT INTO autores (id_autor, nome_autor) VALUES (?, ?)";
                    try (PreparedStatement stmtCompras = conexao.prepareStatement(sqlCompras)) {
                        stmtCompras.setInt(1, idAutor);
                        stmtCompras.setString(2, nomeAutor);

                        int linhasAfetadasCompras = stmtCompras.executeUpdate();

                        if (linhasAfetadasCompras > 0) {
                            System.out.println("Autor inserido com sucesso!");
                        } else {
                            System.out.println("Não foi possível inserir o autor.");
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
