import java.sql.*;

public class registroAlunoCursos {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            String nomeAluno = "Maria";
            String curso = "Java Programming";

            String sqlAluno = "INSERT INTO alunos (nome_aluno, curso) VALUES (?, ?)";
            try (PreparedStatement stmtAluno = conexao.prepareStatement(sqlAluno, Statement.RETURN_GENERATED_KEYS)) {
                stmtAluno.setString(1, nomeAluno);
                stmtAluno.setString(2, curso);

                int linhasAfetadasAluno = stmtAluno.executeUpdate();

                if (linhasAfetadasAluno > 0) {
                    System.out.println("Aluno registrado com sucesso!");

                    // Retrieving the generated id_aluno
                    ResultSet generatedKeys = stmtAluno.getGeneratedKeys();
                    int idAluno = 0;
                    if (generatedKeys.next()) {
                        idAluno = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'cursos' table
                    String nomeCurso = "Java Programming";

                    String sqlCurso = "INSERT INTO cursos (id_aluno, nome_curso) VALUES (?, ?)";
                    try (PreparedStatement stmtCurso = conexao.prepareStatement(sqlCurso)) {
                        stmtCurso.setInt(1, idAluno);
                        stmtCurso.setString(2, nomeCurso);

                        int linhasAfetadasCurso = stmtCurso.executeUpdate();

                        if (linhasAfetadasCurso > 0) {
                            System.out.println("Curso registrado com sucesso!");
                        } else {
                            System.out.println("Não foi possível registrar o curso.");
                        }
                    }
                } else {
                    System.out.println("Não foi possível registrar o aluno.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
