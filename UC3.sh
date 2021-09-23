using System;

namespace SnakeandLadderUC3
{
    class Program
    {
        static void Main(string[] args)
        {
            int Player1 = 0;
            
            Random ran = new Random();
            int RollDice = ran.Next(1, 7);
                Console.WriteLine("Player = " + RollDice);
            int Choose = ran.Next(0, 3);
            Console.WriteLine("Choose = " + Choose);
            const int NoPlay = 0;
            const int Ladder = 1;
            const int Snake = 2;
            switch (Choose)
            {
                case NoPlay:
                    break;
                case Ladder:
                    Player1 = Player1 + RollDice;
                    Console.WriteLine("Player position = " + Player1);
                    break;
                case Snake:
                    Player1 = Player1 + RollDice;
                    Console.WriteLine("Player position = " + Player1);
                    break;
            }
        }
    }
}
