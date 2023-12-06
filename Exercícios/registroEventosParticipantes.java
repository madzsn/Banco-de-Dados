import java.sql.*;

public class registroEventosParticipantes {
    static final String host = "localhost";
    static final String database = "ExercicioSQLjava";
    static final String usuario = "root";
    static final String senha = "";

    public static void main(String[] args) {

        try (Connection conexao = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + database, usuario, senha)) {

            // Inserting data into 'eventos' table
            String nomeEvento = "CCXP";
            String dataEvento = "2023-12-05";
            int idEvento = 0;

            String sqlEventos = "INSERT INTO eventos (id_evento, nome_evento, data_evento) VALUES (?, ?, )";
            try (PreparedStatement stmtEventos = conexao.prepareStatement(sqlEventos, Statement.RETURN_GENERATED_KEYS)) {
                stmtEventos.setInt(1, idEvento);
                stmtEventos.setString(2, nomeEvento);
                stmtEventos.setString(3, dataEvento);


                int linhasAfetadasEventos = stmtEventos.executeUpdate();

                if (linhasAfetadasEventos > 0) {
                    System.out.println("Evento inserido com sucesso!");

                    // Retrieving the generated id_evento
                    ResultSet generatedKeys = stmtEventos.getGeneratedKeys();
                    if (generatedKeys.next()) {
                        idEvento = generatedKeys.getInt(1);
                    }

                    // Inserting data into 'participantes' table
                    int idParticipante = 1; // Assuming id_participante for assignment
                    String nomePart = "Jonh Doe";

                    String sqlParticipante = "INSERT INTO participantes (id_participante, id_evento, nome_participante) VALUES (?, ?, ?)";
                    try (PreparedStatement stmtParticipante = conexao.prepareStatement(sqlParticipante)) {
                        stmtParticipante.setInt(1, idParticipante);
                        stmtParticipante.setInt(2, idEvento);
                        stmtParticipante.setString(3, nomePart);


                        int linhasAfetadasParticipante = stmtParticipante.executeUpdate();

                        if (linhasAfetadasParticipante > 0) {
                            System.out.println("participante inserido com sucesso!");
                        } else {
                            System.out.println("Não foi possível inserir o participante.");
                        }
                    }
                } else {
                    System.out.println("Não foi possível inserir o evento.");
                }
            }

        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
