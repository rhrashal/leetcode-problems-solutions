using System;

namespace ConsoleApp1
{
    internal class Program
    {

        static void Main(string[] args)
        {

            Program prg = new Program();


            var res = prg.IsPalindrome(22);

            Console.WriteLine(res);



            Console.ReadKey();
        }



        public bool IsPalindrome(int n)
        {
            int r = 0;
            int sum = 0;
            int temp = n;
            while (n > 0)
            {
                r = n % 10;
                sum = (sum * 10) + r;
                n = n / 10;
            }
            if (temp == sum)
                return true;
            else
                return false;
        }

    }
}
