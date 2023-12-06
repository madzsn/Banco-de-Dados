import java.sql.*;

public class funcionariosDepartamento {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            // Inserting data into 'funcionarios' table
            String nome = "Gabriela";
            String cargo = "Chefe";

            String sqlFuncionario = "INSERT INTO funcionarios (nome, cargo) VALUES (?, ?)";
            try (PreparedStatement stmtFuncionario = conexao.prepareStatement(sqlFuncionario, Statement.RETURN_GENERATED_KEYS)) {
                stmtFuncionario.setString(1, nome);
                stmtFuncionario.setString(2, cargo);

                int linhasAfetadasFuncionario = stmtFuncionario.executeUpdate();

                if (linhasAfetadasFuncionario > 0) {
                    System.out.println("Funcionário inserido com sucesso!");

                    // Retrieving the generated id_funcionario
                    ResultSet generatedKeys = stmtFuncionario.getGeneratedKeys();
                    int idFuncionario = 0;
                    if (generatedKeys.next()) {
                        idFuncionario = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'departamentos' table
                    String nomeDepartamento = "Logística";

                    String sqlDepartamento = "INSERT INTO departamentos (id_funcionario, nome_departamento) VALUES (?, ?)";
                    try (PreparedStatement stmtDepartamento = conexao.prepareStatement(sqlDepartamento)) {
                        stmtDepartamento.setInt(1, idFuncionario);
                        stmtDepartamento.setString(2, nomeDepartamento);

                        int linhasAfetadasDepartamento = stmtDepartamento.executeUpdate();

                        if (linhasAfetadasDepartamento > 0) {
                            System.out.println("Departamento inserido com sucesso!");
                        } else {
                            System.out.println("Não foi possível inserir o departamento.");
                        }
                    }
                } else {
                    System.out.println("Não foi possível inserir o funcionário.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
