using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
         
            Program program = new Program();
            Console.WriteLine(program.isValid2("(([]){})"));

            Console.ReadKey();
        }


        bool isValid(string s)
        {
            while (s.Contains("()") || s.Contains("[]") || s.Contains("{}"))
            {
                s = s.Replace("()", "").Replace("[]", "").Replace("{}", "");
            }

            return s.Length == 0;
        }

        bool isValid2(string s)
        {
            if (s.Length % 2 != 0) return false;
            var leftParens = new[] { '[', '{', '(' };
            var rightParens = new[] { ']', '}', ')' };
            var s2 = new Stack<char>();

            for (var i = 0; i < s.Length; i++)
            {
                if (leftParens.Contains(s[i]))
                {
                    s2.Push(s[i]);

                    continue;
                }

                if (rightParens.Contains(s[i]))
                {
                    if (!s2.Any()) return false;

                    var x = s2.Peek() - s[i];

                    if (x < 0 && x >= -2)
                    {
                        s2.Pop();
                        continue;
                    }
                    return false;
                }
            }

            if (s2.Any()) return false;
            return true;
        }

    }


}
