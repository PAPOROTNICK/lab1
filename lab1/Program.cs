using System;

public enum Navigation
{
    x,
    y,
    z,
    round,
}

namespace lab1
{
    class Program
    {
        public static void Main(string[] args)
        {
            Navigation state = Navigation.x;
            double x = 0; // основание
            double y = 0; // результат 
            double z = 0; // степень



            while (true)
            {
                switch (state)
                {
                    case Navigation.x:
                        //просим поьзователя ввести основание тут же мы проверяем чтобы пользователь вводил только число и выполнял все условия ввода
                        Console.WriteLine("Введите Основание: ");
                        if (double.TryParse(Console.ReadLine(), out x) && x > 0 && x != 1)

                        {
                            state = Navigation.y;

                        }
                        else
                        {
                            Console.WriteLine("основание должно содержать только цифры и быть больше 0");
                            state = Navigation.x;
                        }

                        break;
                    case Navigation.y:

                        // тоже самое делаем и с другими вводимыми данными
                        Console.WriteLine("Введите результат: ");
                        if (double.TryParse(Console.ReadLine(), out y) && y > 0)

                        {
                            state = Navigation.z;

                        }
                        else
                        {
                            Console.WriteLine("результат должно содержать только цифры и быть больше 0");
                            state = Navigation.y;
                        }
                        break;


                    case Navigation.z:
                        // считаем логарифм
                        z = Math.Log(x, y);
                        //очищаем консоль чтобы не мешалось
                        Console.Clear();
                        //округляем
                        Console.WriteLine($"Ответ:{Math.Round(z)}");
                        Console.WriteLine($"Ответ:{z}");
                        //даем возможность повторить рассчет или выйти из программы
                        Console.WriteLine("для  рассчета по новой введите restart");
                        Console.WriteLine("для  выхода нажмите enter");

                        if (Console.ReadLine() == "restart")
                        {
                            //отправляет на самое начало ввод даных
                            state = Navigation.x;
                        }
                        else
                        {
                            //выход из программы если пользователь не написал restat
                            Environment.Exit(0);
                        }

                        break;

                }
            }


        }
    }
}




