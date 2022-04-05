using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;


namespace zadanie5
{
    class Program
    {
        static void Main(string[] args)
        {
            int[,] mas = new int[5, 10];
            Random rmd = new Random();
            HashSet<int> known = new HashSet<int>();

            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    int newchisla;
                    newchisla = rmd.Next(-100, 100);
                    while (known.Contains(newchisla))
                    {
                        newchisla = rmd.Next(-100, 100);
                    }
                    known.Add(newchisla);
                    mas[i, j] = newchisla;
                    Console.WriteLine(newchisla);
                }

            }
            Console.WriteLine("________________первое задаение________________");
            int min = mas[0, 0];
            int max = mas[0, 0];


            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    if (min > mas[i, j])
                        min = mas[i, j];
                }
            }
            Console.WriteLine("минимальный элемент:" + min);



            for (int i = 0; i < 5; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    if (max < mas[i, j])
                        max = mas[i, j];
                }
            }
            Console.WriteLine("максимальный элемент:" + max);
            Console.WriteLine("________________рассчет sin,cos.tan ________________");

            for (int j = -10; j < 10; j++)
            {
                double sin = Math.Sin(j * max);
                double cos = Math.Cos(j * max);
                double tan = Math.Tan(j * max);
                double sinround = Math.Round(sin, 2);
                double cosround = Math.Round(cos, 2);
                double tanround = Math.Round(tan, 2);
                string sins = Convert.ToString(sinround);
                string coss = Convert.ToString(cosround);
                string tans = Convert.ToString(tanround);


                Console.WriteLine("________________рассчет sin ________________");
                Console.WriteLine(sins);
                Console.WriteLine("________________рассчет cos ________________");
                Console.WriteLine(coss);
                Console.WriteLine("________________рассчет tan ________________");
                Console.WriteLine(tans);
            }

            Console.WriteLine("________________второе задаение________________");
            double[] mas_0 = new double[5];
            for (int i = 0; i < 5; i++)
            {
                double mas_1 = 0;
                for (int j = 0; j < 10; j++)
                {
                    mas_1 = Math.Abs(mas[i, j]);
                }
                mas_1 /= 10;
                mas_0[i] = mas_1;

            }
            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine(mas_0[i]);
            }
            Console.WriteLine("________________третье задаение________________");
            double min2 = double.MinValue;
            double max2 = double.MaxValue;
            for (int i = 0; i < 5; i++)
            {
                if (mas_0[i] < min2)
                {
                    min2 = mas_0[i];
                }
            }
            for (int i = 0; i < 5; i++)
            {
                if (mas_0[i] > min2)
                {
                    max2 = mas_0[i];
                }
            }

            Console.WriteLine("минимальное значение" + min2);
            Console.WriteLine("максимальное значение" + max2);
            using StreamWriter file = new("test.xlst", append: true);
            for (int j = -10; j < 10; j++)
            {
                double sin = Math.Sin(j * max2);
                double cos = Math.Cos(j * max2);
                double tan = Math.Tan(j * max2);
                double sinround = Math.Round(sin, 2);
                double cosround = Math.Round(cos, 2);
                double tanround = Math.Round(tan, 2);
                string sins = Convert.ToString(sinround);
                string coss = Convert.ToString(cosround);
                string tans = Convert.ToString(tanround);


                file.WriteLineAsync($"|{sins}|{coss}|{tans}|");



            }

        }
    }
}



