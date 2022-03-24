using System;

namespace inheritance
{
    public class Pesawat
    {
        public string Nama;
        public int JumlahRoda;
        public string Ketinggian;
        public string JumlahPenumpang;
        public void terbang()
            {
                Console.WriteLine("Pesawat dengan nama{0}, yang mempunya jumlah roda{1}, sedang berada pada ketinggian {2} dengan membawa jumlah penumpang sebanyak{3} Akana meledakkan senjata", this.Nama, this.JumlahRoda, this.Ketinggian, this.JumlahPenumpang);
            }
           
    }
     class Pesawat_tempur:Pesawat
        {
            public void terbangtinggi()
            {
                Console.WriteLine("Pesawat tempur dengan nama{0}, yang mempunya jumlah roda{1}, sedang berada pada ketinggian {2} dengan membawa jumlah penumpang sebanyak{3} Akana meledakkan senjata", this.Nama, this.JumlahRoda, this.Ketinggian, this.JumlahPenumpang);
            }
        }
}