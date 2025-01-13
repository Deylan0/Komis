import DATABASE.MysqlCon;

import java.util.Scanner;

public class Menu{
    Scanner input = new Scanner(System.in);
    MysqlCon MysqlCon = new MysqlCon();
    public void Start() throws Exception {
        System.out.println("1.LOGIN \b 2.SIGNIN");
        int i=input.nextInt();
        input.nextLine();

        if(i == 1){
            logIn();
        } else if (i == 2) {
            signIn();
        }else {
            System.out.println("Wrong input");
        }
    }
    private void logIn() throws Exception {
        System.out.println("Under construction");
        Start();
    }
    private void signIn() throws Exception {
        System.out.println("Input Name:");
        String name = input.nextLine();
        System.out.println("Input Surname");
        String username = input.nextLine();
        System.out.println("Input email");
        String email = input.nextLine();
        System.out.println("Input password");
        String pass = input.nextLine();
        String query = "INSERT INTO `users`(`imie`, `nazwisko`, `email`, `haslo`, `rodzaj_konta`) VALUES ('"+name+"','"+username+"','"+email+"','"+pass+"','user')";
        MysqlCon.insert(query);
        Start();
    }

}
