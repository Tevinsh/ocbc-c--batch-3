using System;

public class Logika3
{
    public static void Main()
    {
        string Username;
        string Password;

        Console.Write("Username: ");
        Username = Console.ReadLine();
        Console.Write("Password: ");
        Password = Console.ReadLine();

        if (Username == "ocbc" && Password == "bootcamp")
        Console.WriteLine("Anda berhasil login");
        else if (Username == "ocbc" && Password != "bootcamp"){
            Console.WriteLine("Password Salah");
        }
        else{
            Console.WriteLine("Username atau Password anda salah");
        }
        
    }
}