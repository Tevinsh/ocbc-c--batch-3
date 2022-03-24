using System;

namespace Pesawat
{
    class Program
    {
        static void Main(string[] args)
        {
            Pesawat pesawat = new Pesawat();
            pesawat.nama = "GARUDAKU";
            pesawat.ketinggian = "2500 kaki";
            Console.WriteLine("Hello World!");

            pesawat.terbang();
            pesawat.sudahterbang();
            Console.Read();
        }
    }
}
