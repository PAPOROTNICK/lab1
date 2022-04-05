using System;


namespace zadanie4
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine();
            string vvod = Console.ReadLine();
            if (String.IsNullOrEmpty(vvod))
            {
                Console.WriteLine("ошибка");
                Environment.Exit(0);
            }
            vvod = vvod.Replace("+", ".+");
            vvod = vvod.Replace("-", ".-");
            string[] mas = vvod.Split('.', '=');

            for (int i = 0; i < mas.Length; i++)
                if (mas[i].EndsWith('x'))
                {
                    mas[i] = mas[i].Replace('x', ' ');
                    Console.WriteLine("множитель:" + mas[i]);
                }
            for (int i = 0; i < mas.Length; i++)
            {
                if (mas[i].EndsWith("|"))
                {
                    mas[i] = mas[i].Replace("|", "");
                    mas[i] = mas[i].Replace("-", "");
                    mas[i] = mas[i].Replace("+", "");
                    string mas2 = mas[i];
                    Console.WriteLine("модуль числа:" + mas2);
                }
            }
        }
    }
}


