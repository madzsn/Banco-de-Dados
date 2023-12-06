import java.sql.*;

public class gestaoExamesPacientes {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            // Inserting data into 'exames' table
            String tipoExame = "xxx xxx";
            String resultado = "xxxx";
            int idExames = 0;

            String sqlExames = "INSERT INTO exames (id_exame, tipo_exame, resultado) VALUES (?, ?, )";
            try (PreparedStatement stmtExames = conexao.prepareStatement(sqlExames, Statement.RETURN_GENERATED_KEYS)) {
                stmtExames.setInt(1, idExames);
                stmtExames.setString(2, tipoExame);
                stmtExames.setString(3, resultado);


                int linhasAfetadasExames = stmtExames.executeUpdate();

                if (linhasAfetadasExames > 0) {
                    System.out.println("Resultado de exame inserido com sucesso!");

                    // Retrieving the generated id_evento
                    ResultSet generatedKeys = stmtExames.getGeneratedKeys();
                    if (generatedKeys.next()) {
                        idExames = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'pacientes' table
                    int idPacientes = 1; // Assuming id_pacientes for assignment
                    String nomePaciente = "Jonh Doe";
                    String dataNascimento = "1989-12-13";

                    String sqlParticipante = "INSERT INTO pacientes (id_pacientes, nome_paciente, data_nascimento) VALUES (?, ?, ?)";
                    try (PreparedStatement stmtPacientes = conexao.prepareStatement(sqlParticipante)) {
                        stmtPacientes.setInt(1, idPacientes);
                        stmtPacientes.setString(2, nomePaciente);
                        stmtPacientes.setString(3, dataNascimento);


                        int linhasAfetadasPacientes = stmtPacientes.executeUpdate();

                        if (linhasAfetadasPacientes > 0) {
                            System.out.println("Paciente inserido com sucesso!");
                        } else {
                            System.out.println("Não foi possível inserir o paciente.");
                        }
                    }
                } else {
                    System.out.println("Não foi possível inserir o resultado do exame.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
