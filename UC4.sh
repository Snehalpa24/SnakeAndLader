using System;

namespace SnakeandLadder4
{
    class Program
    {
        static int Winner(int N)
        {
            int[] dicepos = new int[N];
            dicepos[0] = 1;
            dicepos[1] = 2;
            int i = 2;

            do
            {
                dicepos[i] = dicepos[i - 1] + dicepos[i - 2];
            } 
            while (dicepos[i++] <= N);


            return (i - 2);
        }
        public static void Main()
        {
            int N = 100;
            Console.Write(Winner(N));
        }
    }
}
