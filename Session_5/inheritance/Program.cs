using System;

namespace inheritance
{
    class Program
    {
        static void Main(string[] args)
        {
            Pesawat pesawat = new Pesawat();
            Pesawat_tempur pswttempur = new Pesawat_tempur();

            pesawat.Nama = "Helly";
            pesawat.JumlahRoda = 3;
            pesawat.Ketinggian = "1000 kaki";
            pesawat.JumlahPenumpang = "3 Penumpang";
            pswttempur.Nama = "AZ500TPU";
            pswttempur.JumlahRoda = 5;
            pswttempur.Ketinggian = "200 kaki";
            pswttempur.JumlahPenumpang = "2 Penumpang plus kopilot dan asistance";

            pesawat.terbang();
            pswttempur.terbangtinggi();
            Console.Read();
        }
    }
}
