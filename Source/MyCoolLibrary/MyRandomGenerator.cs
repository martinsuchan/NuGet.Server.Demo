using System;

namespace MyCoolLibrary
{
    /// <summary>
    /// Generates truly random numbers, based on seed 42.
    /// </summary>
    public class MyRandomGenerator
    {
        private static readonly Random R = new Random(42);

        /// <summary>
        /// Returns next random number.
        /// </summary>
        /// <returns>Next random number.</returns>
        public static int GetRandom()
        {
            return R.Next();
        }
    }
}