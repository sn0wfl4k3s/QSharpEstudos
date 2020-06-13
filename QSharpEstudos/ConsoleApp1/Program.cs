using Microsoft.Quantum.Simulation.Simulators;
using System;
using CustomAlgorithms;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            using var sim = new QuantumSimulator();
            
            var num = PureRandomNumber.Run(sim).Result;
            
            Console.WriteLine(num);
        }
    }
}
