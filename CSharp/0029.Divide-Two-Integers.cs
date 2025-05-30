using System;
using System.Collections.Generic;

namespace ConsoleApp1
{
    internal class Program
    {

        static void Main(string[] args)
        {
            Program program = new Program();
            Console.WriteLine( program.Divide(11 , 2));
            Console.ReadKey();
        }


        public int Divide(int dividend, int divisor)
        {            
            if (dividend == int.MinValue && divisor == -1)
            {
                return int.MaxValue;
            }
            bool isNegative = (dividend < 0) != (divisor < 0);
            
            long absDividend = Math.Abs((long)dividend);
            long absDivisor = Math.Abs((long)divisor);
            
            int result = 0;

            while (absDividend >= absDivisor)
            {
                long tempDivisor = absDivisor;
                int count = 1;

                while (absDividend >= (tempDivisor + tempDivisor))
                {
                    tempDivisor += tempDivisor;
                    count += count;
                }

                absDividend -= tempDivisor;
                result += count;
            }
            return isNegative ? -result : result;
        }

    }
}
