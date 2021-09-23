using System;

namespace SnakeandLadderUC2
{
    class Program
    {
        static void Main(string[] args)
        {
            int PlayerPosition = 0;
            Random random = new Random();
            int RollDice=random.Next(0, 7);
            Console.WriteLine("Player rolls  the dice and get =" + RollDice);
            Random ran = new Random();
            int RollDiceP = ran.Next(0, 7);
        }
    }
}
