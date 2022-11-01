// See https://aka.ms/new-console-template for more information

using Newtonsoft.Json;

Console.WriteLine("Hello, World!");

Func<int, int> square = x => x * x;
Console.WriteLine(square(5));

System.Linq.Expressions.Expression<Func<int, int>> e = x => x * x;
Console.WriteLine(e);

int[] numbers = { 2, 3, 4, 5 };
var squaredNumbers = numbers.Select(x => x * x);
Console.WriteLine(string.Join(" ", squaredNumbers));

List<Dog> myDogs = new List<Dog>
{
    new Dog {
        Name = "Evie",
        Age = 5,
        Interests = new String[] { "Ball", "Frisbee" }
    },
    new Dog {
        Name = "Casper",
        Age = 3,
        Interests = new String[] { "Other dogs" }
    },
    new Dog {
        Name = "Indy",
        Age = 2,
        Interests = new String[] { "Butter" }
    },
    new Dog {
        Name = "Kira",
        Age = 8,
        Interests = new String[] { "Rubs" }
    }
};

var oldDogs = myDogs.Where(dog => dog.Age >= 5);

var oldDogNames = oldDogs.Select(dog => dog.Name);

Console.WriteLine("All dogs: " + JsonConvert.SerializeObject(myDogs));

Console.WriteLine(string.Join(", ", oldDogNames) + " are old dogs");

var dogNames = myDogs.Select(dog => dog.Name);

Console.WriteLine(string.Join(", ", dogNames) + " are all of the dogs names");

for (int i = 0; i < myDogs.Count; i++)
{
    Console.WriteLine(i);
    Console.WriteLine(myDogs[i].Name);
    Console.WriteLine($"Ahoy {myDogs[i].Name}");
}
