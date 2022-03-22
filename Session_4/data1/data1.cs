using System;

public class data1{

    public static void Main(){
        int i;
        int[] aAngka = new int[5] {1,2,3,4,5};
        string[] aNama = new string[] {"Joni","Meri","David"};
        object[] aobjek = {20.33, "Lorem ipsum", DateTime.Now, true,'D'}; 

        Console.WriteLine("----nilai aAngka----");
        for(i=0;i<aAngka.Length;i++){
            Console.WriteLine($"nilai aAngka yang ke - {i} adalah : {aAngka[i]}");
        }
        Console.WriteLine("----nilai aNama----");
        for(i=0;i<aNama.Length;i++){
            Console.WriteLine($"nilai aNama yang ke - {i} adalah : {aNama[i]}");
        }
        Console.WriteLine("----nilai aobjek----");
        for(i=0;i<aobjek.Length;i++){
            Console.WriteLine($"nilai objek yang ke - {i} adalah : {aobjek[i]}");
        }
        

    }
}