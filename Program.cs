using System;
using System.IO;

class Program
{
    static void Main()
    {
        // Get the root directory info
        DriveInfo rootDrive = new DriveInfo("/");

        if (rootDrive.IsReady)
        {
            long freeBytes = rootDrive.AvailableFreeSpace;
            double freeGB = freeBytes / (1024.0 * 1024 * 1024);
            Console.WriteLine($"Free space on '/' partition: {freeGB:F2} GB");
        }
        else
        {
            Console.WriteLine("Drive '/' is not ready or accessible.");
        }
    }
}

