using System;

class latihan1{
    public static void Main(string[] args){

        Console.WriteLine("===ISI BIODATA===");

        Console.Write("Masukkan Username : ");
        string username = Console.ReadLine();

        Console.Write("Masukkan Password : ");
        string password = Console.ReadLine();

        Console.Write("Masukkan Umur : ");
        string umur = Console.ReadLine();
        while (!int.TryParse(umur,out int number) || int.Parse(umur)>100){
            Console.WriteLine("--input salah, silahkan coba lagi--");
            Console.Write("Masukkan Umur : ");
            umur = Console.ReadLine();
        }

        Console.Write("Masukkan Jenis Kelamin(L/P) :");
        string jenkel = Console.ReadLine();
 
        while(jenkel != "L" && jenkel != "P"){
            Console.WriteLine("--input salah, silahkan coba lagi--");
            Console.Write("Masukkan Jenis Kelamin(L/P) :");
            jenkel = Console.ReadLine();
        }
        if(jenkel == "L"){
            jenkel = "laki - laki";
        }else if(jenkel == "P"){
            jenkel = "Perempuan";
        }else{
            jenkel = "tidak dikenali";
        }
        Console.Write("Masukkan Status Nikah (B jika belum S jika menikah): ");
        string status = Console.ReadLine();
        while(status != "B" && status != "S"){
            Console.WriteLine("--input salah, silahkan coba lagi--");
            Console.Write("Masukkan Status Nikah (B jika belum S jika menikah): ");
            status = Console.ReadLine();
        }
        bool hasilstatus;
        if (status == "S"){
            hasilstatus = true;
        }else{
            hasilstatus = false;
        }

        Console.WriteLine("===ISI NILAI===");

        int ntotal = 0;

        Console.Write("Masukkan Jumlah input nilai : ");
        string jml = Console.ReadLine();
        
        while(!int.TryParse(jml, out int jmln)){
             Console.WriteLine("-- input salah,silahkan coba lagi--");
             Console.Write("Masukkan Jumlah input nilai : ");
             jml = Console.ReadLine();
        }
        String input;
        for (int i = 1;i<=int.Parse(jml);i++){
            Console.Write($"Masukkan Nilai {i} : ");
            input = Console.ReadLine();
            while (!int.TryParse(input,out int nilai) || int.Parse(input)>100){
                Console.WriteLine("--input salah,silahkan coba lagi--");
                Console.Write($"Masukkan Nilai {i} : ");
                input = Console.ReadLine();
            }
            ntotal += int.Parse(input);

        }
        

        Console.WriteLine("===HASIL AKHIR===");
        Console.WriteLine($"umur: {umur}");
        Console.WriteLine($"Username: {username}");
        Console.WriteLine($"Jenkel: {jenkel}");
        Console.WriteLine($"Status Nikah: {hasilstatus}");
        Console.WriteLine($"Total Nilai : {ntotal}");
        Console.WriteLine($"Rata Nilai : {ntotal/int.Parse(jml)}");


    }
}