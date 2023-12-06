import java.sql.*;

public class gerenciamentoProjetoAtribuicao {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            // Inserting data into 'projetos' table
            String nomeProjeto = "Xmen";
            String descricao = "abuble buble";

            String sqlProjeto = "INSERT INTO projetos (nome_projeto, descricao) VALUES (?, ?)";
            try (PreparedStatement stmtProjeto = conexao.prepareStatement(sqlProjeto, Statement.RETURN_GENERATED_KEYS)) {
                stmtProjeto.setString(1, nomeProjeto);
                stmtProjeto.setString(2, descricao);

                int linhasAfetadasProjeto = stmtProjeto.executeUpdate();

                if (linhasAfetadasProjeto > 0) {
                    System.out.println("Projeto inserido com sucesso!");

                    // Retrieving the generated id_projeto
                    ResultSet generatedKeys = stmtProjeto.getGeneratedKeys();
                    int idProjeto = 0;
                    if (generatedKeys.next()) {
                        idProjeto = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'atribuicoes' table
                    int idFuncionario = 1; // Assuming id_funcionario for assignment

                    String sqlAtribuicao = "INSERT INTO atribuicoes (id_projeto, id_funcionario) VALUES (?, ?)";
                    try (PreparedStatement stmtAtribuicao = conexao.prepareStatement(sqlAtribuicao)) {
                        stmtAtribuicao.setInt(1, idProjeto);
                        stmtAtribuicao.setInt(2, idFuncionario);

                        int linhasAfetadasAtribuicao = stmtAtribuicao.executeUpdate();

                        if (linhasAfetadasAtribuicao > 0) {
                            System.out.println("Atribuição inserida com sucesso!");
                        } else {
                            System.out.println("Não foi possível inserir a atribuição.");
                        }
                    }
                } else {
                    System.out.println("Não foi possível inserir o projeto.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
