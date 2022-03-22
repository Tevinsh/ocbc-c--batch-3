using System;
using System.Collections.Generic;

    class assignment1{
        public void triangle()
        {
        int i,j,k,m,n;
        char ch = 'A';
        enter: Console.Write("enter amount of row : ");
        string input = Console.ReadLine();
        while (!int.TryParse(input, out n)){goto enter;}
        n = int.Parse(input);
        for(i=1;i<=n;i++){
            for(j=n;j>=i;j--){
                Console.Write(" ");
            }
            for(k=1;k<=i;k++){
                Console.Write(ch++);
            }
            ch--;
            for(m=1;m<i;m++){
                Console.Write(--ch);
            }
            Console.Write("\n");
            ch='A';
        }
        }

        public void triangle2 () {
            int i,j,k,l,n;
        enter: Console.Write("enter the number : ");
        string input = Console.ReadLine();
        while (!int.TryParse(input, out n)){goto enter;}
        n = int.Parse(input);
        //Console.WriteLine(i);
        for(i=1;i<=n;i++){
            for(j=1;j<=n - i ;j++){
                Console.Write(" ");
            }
            for(k=1; k <= i;k++){
                Console.Write(k);
            }
            for(l=i-1;l >= 1;l--){
                Console.Write(l);
            }
            Console.Write("\n");
        }
        }

        public void factorial (){
            int n,result;
        enter: Console.Write("Enter the Number :");
        string input = Console.ReadLine();
        while (!int.TryParse(input, out n)){goto enter;}
        n = int.Parse(input);
        result = 1;
        while (n!=0){
            result *= n;
            n--;
            Console.WriteLine(result);
        }
        Console.WriteLine("result is = "+result);
        }

        public void reverse() 
        {
        enter: Console.Write("Masukkan angka :");
        string input = Console.ReadLine();
        while(!int.TryParse(input,out int n)){goto enter;};
        char[] splitted = input.ToCharArray();
        Array.Reverse(splitted);
        String result = new string(splitted);
        Console.Write("balik angka : "+result);        
        }

        public void reversekata() 
        {
        enter: Console.Write("Masukkan kata :");
        string input = Console.ReadLine();
        while(int.TryParse(input,out int n)){goto enter;};
        char[] splitted = input.ToCharArray();
        Array.Reverse(splitted);
        String result = new string(splitted);
        Console.WriteLine("balik angka : "+result);        
        }

        public void about(){
            Console.WriteLine("---tentang saya---");
            Console.WriteLine("Nama : Pangeran Tevin Shidqi");
            Console.WriteLine("Jenis Kelamin : Laki - laki");
            Console.WriteLine("alamat : Jl Mandor Ety No 2c");
            Console.WriteLine("Hobi : Olahraga");
            Console.WriteLine("umur : 22 tahun");
            Console.WriteLine("pekerjaan : Fullstack Developer");
            Console.WriteLine("jurusan : Teknik Informatika");
            Console.WriteLine("Kampus : Politeknik Negeri Jakarta");
        }

        public void dictionary()
        {
            string result = "";
            var nomor = new Dictionary<char,string>(){
            {'0',"nol"},
            {'1',"satu"},
            {'2',"dua"},
            {'3',"tiga"},
            {'4',"empat"},
            {'5',"lima"},
            {'6',"enam"},
            {'7',"tujuh"},
            {'8',"delapan"},
            {'9',"sembilan"}
        };
        string test = nomor['0'];
        enter: Console.Write("Enter the number : ");
        string input = Console.ReadLine();
        while (!int.TryParse(input, out int n)){goto enter;}
        char[] splitted = input.ToCharArray();
        for(int i = 0;i<=splitted.Length-1;i++){
            result += nomor[splitted[i]]+" ";
        }
        Console.WriteLine(result);
        }

        public static void Main(string[] args){
            bool run = true;
            while(run){
            Console.WriteLine("----MAIN MENU----");
            assignment1 a = new assignment1();           
            Console.WriteLine("1. Segitiga Alphabet");
            Console.WriteLine("2. Segitiga Angka");
            Console.WriteLine("3. faktorial");
            Console.WriteLine("4. balik angka");
            Console.WriteLine("5. Convert angka ke string");
            Console.WriteLine("6. balik huruf");
            Console.WriteLine("7. tentang Saya");
            Console.WriteLine("8. Keluar");
            restart: Console.Write("pilih nomor :"); 
            string menu = Console.ReadLine();
            while(!char.TryParse(menu, out char m)){goto restart;}
            switch (menu){
                case "1":
                a.triangle();
                break;
                case "2":
                a.triangle2();
                break;
                case "3":
                a.factorial();
                break;
                case "4":
                a.reverse();
                break;
                case "5":
                a.dictionary();
                break;
                case "6":
                a.reversekata();
                break;
                case "7":
                a.about();
                break;
                case "8":
                run = false;
                Console.WriteLine("---TERIMA KASIH---");
                break;
                default:
                break;
            }
        }
        }
}
