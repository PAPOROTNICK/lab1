using System;

namespace zadanie2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("1: рассчет радиант в градусы");
            Console.WriteLine("2: рассчет градусы  в радиант");
            int i = int.Parse(Console.ReadLine());
            switch (i)
            {
                case 1:
                    Console.WriteLine("введите радиант");
                    double a = double.Parse(Console.ReadLine());
                    double b = a * 180 / Math.PI;
                    Console.WriteLine(Math.Round(b));
                    Console.WriteLine(b);
                    break;
                case 2:
                    Console.WriteLine("введите градусы");
                    double c = double.Parse(Console.ReadLine());
                    double d = c * Math.PI / 180;
                    Console.WriteLine(Math.Round(d));
                    Console.WriteLine(d);
                    break;



            }

        }
    }
}
