using System;

class Program
{
    public int bilangan1,bilangan2;
    public void bilangan(int angka1, int angka2)
    {
        bilangan1 = angka1;
        bilangan2 = angka2;
    }

    public virtual void penjumlahanperkaliandll()
    {
        Console.WriteLine("Overriding 1.......------>>>>>>");
        Console.WriteLine("Hasil penjumlahan angka{0} dan angka {1}", bilangan1,bilangan2,bilangan1+bilangan2);
        Console.WriteLine("Hasil Perkalian angka {0} dan angka {1} = {2} \n\n",bilangan1,bilangan2, bilangan1 * bilangan2);
    }
}

class overide:Program
{
    public override void penjumlahanperkaliandll()
    {
        Console.WriteLine("Overiding 2...======>>>>>");
        Console.WriteLine("Hasil Pembagian angka {0} dan angka {1} = ");
        Console.WriteLine("Hasil Pengurangan angka {0} dan angka {1} = {2}", bilangan1, bilangan2,bilangan1/bilangan2);
        Console.WriteLine("Hasil Pengurangan angka {0} dan angka {1} = {2}",bilangan1,bilangan2, bilangan1 - bilangan2);
    }

    static void Main (string[] args)
    {
        Program overiding = new Program();
        overiding.penjumlahanperkaliandll();
        overiding = new overide();
        overiding.bilangan(20, 5);
        overiding.penjumlahanperkaliandll();
        Console.Read();
    }
}