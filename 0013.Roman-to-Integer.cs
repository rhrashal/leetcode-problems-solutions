using System;

namespace ConsoleApp1
{
    internal class Program
    {

        static void Main(string[] args)
        {
            var res = RomanToInt("MCMXCIV");

            Console.WriteLine(res);

            Console.ReadKey();
        }


        public static int RomanToInt(string s)
        {
            Dictionary<char, int> dect = new Dictionary<char, int>()
            {
                {'I', 1},
                {'V', 5},
                {'X', 10},
                {'L', 50},
                {'C', 100},
                {'D', 500},
                {'M', 1000}
            };

            int res = 0;
            int last = 0;
            for (int i = s.Length - 1; i >= 0; i--)
            {
                int curr = dect[s[i]];
                if (last > curr)
                {
                    curr = last - curr;
                    res = res + curr;
                    last = 0;
                }
                else if (last == 0)
                {
                    last = curr;
                }
                else
                {
                    res = res + last;
                    last = curr;
                }

            }
            res = res + last;
            return res;
        }

    }
}
