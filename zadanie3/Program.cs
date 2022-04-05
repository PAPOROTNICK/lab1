using System;

namespace zadanie3
{
    class Program
    {
        static void Main(string[] args)
        {   //вводим точки
            Console.WriteLine("введите точки первой фигуры a по х");
            double ax1 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки первой фигуры а по у ");
            double ay1 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки первой фигуры b по х");
            double bx1 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки первой фигуры b по у ");
            double by1 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки первой фигуры c по x ");
            double cx1 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки первой фигуры c по y ");
            double cy1 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки первой фигуры d по x ");
            double dx1 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки первой фигуры d по y ");
            double dy1 = double.Parse(Console.ReadLine());


            Console.WriteLine("введите точки второй фигуры a по х ");
            double ax2 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки второй фигуры a по у ");
            double ay2 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки второй фигуры b по x ");
            double bx2 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки второй фигуры b по y ");
            double by2 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки второй фигуры c по x");
            double cx2 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки второй фигуры c по y ");
            double cy2 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки второй фигуры d по х ");
            double dx2 = double.Parse(Console.ReadLine());
            Console.WriteLine("введите точки второй фигуры d по y ");
            double dy2 = double.Parse(Console.ReadLine());

            //создаем стороны двух фигур
            double levo1 = ay1 + by1;
            double pravo1 = cy1 + dy1;
            double levo2 = ay1 + by1;
            double pravo2 = cy2 + dy2;
            double up1 = bx1 + cx1;
            double down1 = ax1 + dx1;
            double up2 = dx2 + cx2;
            double down2 = ax2 + dx2;

            // проверяем паралаерограм 
            if (levo1 == pravo1 | levo2 == pravo2 | up1 == down1 | up2 == down2)
            {
                //проверяем накладывается ли или нет Проверяем если верхняя грань первого прямоугольника находится ниже второго, или нижняя выше верхней  грани первого. Тоже самое и для оси X. 
                if (by1 < dy2 || dy1 > by2 || dx1 < bx2 || bx1 > dx2)
                {
                    Console.WriteLine("фигураы построены и не накладываются");
                }
                else
                {
                    Console.WriteLine("накладываются");
                }
            }

            else
            {
                Console.WriteLine("неверный ввод данных");
            }
        }


    }
}


