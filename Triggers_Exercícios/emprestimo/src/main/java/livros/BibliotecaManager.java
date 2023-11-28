package livros;

import java.sql.*;
import java.util.Scanner;

public class BibliotecaManager {

   public static void main(String[] args) {
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Biblioteca", "root", "");

            Statement statement = connection.createStatement();

            // Criação das tabelas
            statement.executeUpdate("CREATE TABLE IF NOT EXISTS Cliente (id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(50), email VARCHAR(50), sexo VARCHAR(10))");

            //crie as tabelas livros e emprestimos.
         statement.executeUpdate("CREATE TABLE IF NOT EXISTS Livros (id INT AUTO_INCREMENT PRIMARY KEY, livro VARCHAR(50), autor VARCHAR(50), genero VARCHAR(10), status VARCHAR(50))");

         statement.executeUpdate("CREATE TABLE IF NOT EXISTS Empréstimos (id INT AUTO_INCREMENT PRIMARY KEY, id_cliente VARCHAR(50), id_livro VARCHAR(50), Status VARCHAR(50))");

            // Trigger Atualização do Status do Livro para "emprestado" ao fazer um empréstimo
            statement.executeUpdate("CREATE TRIGGER atualizaStatusEmprestimo AFTER INSERT ON Emprestimo FOR EACH ROW " +
                    "BEGIN " +
                    "UPDATE Livro SET status = 'Emprestado' WHERE id = NEW.id_livro; " +
                    "END");

            // crie o Trigger Atualização do Status do Livro para "disponível" ao devolver um livro
            statement.executeUpdate("CREATE TRIGGER atualizaStatusDevolucao AFTER UPDATE ON Emprestimo FOR EACH ROW " +
                    "BEGIN " +
                    "IF NEW.status = 'Devolvido' THEN" +
                    "UPDATE Livro SET status = 'disponivel' WHERE id = NEW.id_livro; " +
                    "END");
            Scanner scanner = new Scanner(System.in);

            // Inserção de dados para a tabela Cliente
            System.out.println("\nInserir novo cliente:");
            System.out.print("Nome do cliente: ");
            String nomeCliente = scanner.nextLine();
            System.out.print("Email do cliente: ");
            String emailCliente = scanner.nextLine();
            System.out.print("Sexo do cliente: ");
            String sexoCliente = scanner.nextLine();

            String inserirClienteQuery = "INSERT INTO Cliente (nome, email, sexo) VALUES (?, ?, ?)";
            PreparedStatement inserirCliente = connection.prepareStatement(inserirClienteQuery);
            inserirCliente.setString(1, nomeCliente);
            inserirCliente.setString(2, emailCliente);
            inserirCliente.setString(3, sexoCliente);
            inserirCliente.executeUpdate();


            // Inserção de dados para a tabela Livro

        System.out.println("\nInserir novo livro:");
            System.out.print("Nome do livro: ");
            String nomelivro = scanner.nextLine();
            System.out.print("autor do livro: ");
            String autorlivro = scanner.nextLine();
            System.out.print("genero do livro: ");
            String generoLivro = scanner.nextLine();
            System.out.print("Status do livro: ");
            String statusLivro = scanner.nextLine();

            String inserirLivroQuery = "INSERT INTO livro (nome, autor, genero, status) VALUES (?, ?, ?, ?)";
            PreparedStatement inserirLivro = connection.prepareStatement(inserirLivroQuery);
            inserirLivro.setString(1, nomelivro);
            inserirLivro.setString(2, autorlivro);
            inserirLivro.setString(3, generoLivro);
            inserirLivro.setString(4, statusLivro);
            inserirLivro.executeUpdate();

            // Inserção de dados para a tabela Empréstimo

            System.out.println("\nInserir novo Status de emprestimo:");
            System.out.print("Nome do Cliente: ");
            String cadastroCliente = scanner.nextLine();
            System.out.print("nome do livro: ");
            String nomeLivro = scanner.nextLine();
            System.out.print("Status do livro: ");
            String statusEmprestimo = scanner.nextLine();
             System.out.print("Data de devolução do livro: ");
            String dataDevolucao = scanner.nextLine();

            String inserirEmprestimoQuery = "INSERT INTO livro (cliente, livro, status, devolução) VALUES (?, ?, ?, ?)";
            PreparedStatement inserirEmprestimo = connection.prepareStatement(inserirEmprestimoQuery);
            inserirEmprestimo.setString(1, cadastroCliente);
            inserirEmprestimo.setString(2, nomeLivro);
            inserirEmprestimo.setString(3, statusEmprestimo);
            inserirEmprestimo.setString(4, dataDevolucao);
            inserirEmprestimo.executeUpdate();

            // Consulta de Livros
            ResultSet resultSetLivros = statement.executeQuery("SELECT * FROM Livro");
            while (resultSetLivros.next()) {
                System.out.println("Livro ID: " + resultSetLivros.getInt("id") + ", Nome: " + resultSetLivros.getString("nome") + ", Status: " + resultSetLivros.getString("status"));
            }

            resultSetLivros.close();
            inserirCliente.close();
            statement.close();
            connection.close();
        
        

            System.out.println("Operações concluídas com sucesso!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
   }
}