// https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/bicep-functions-lambda
// https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/operators/lambda-expressions
// https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/operators/lambda-operator
/*

filter()
filter(inputArray, lambda expression)

map()
map(inputArray, lambda expression)

reduce()
reduce(inputArray, initialValue, lambda expression)

sort()
sort(inputArray, lambda expression)

*/

var dogs = [
  {
    isShowDog: false
    name: 'Evie'
    age: 5
    interests: [ 'Ball', 'Frisbee' ]
  }
  {
    isShowDog: true
    name: 'Casper'
    age: 3
    interests: [ 'Other dogs' ]
  }
  {
    name: 'Indy'
    age: 2
    interests: [ 'Butter' ]
  }
  {
    name: 'Kira'
    age: 8
    interests: [ 'Rubs' ]
  }
]
// filter(inputArray, lambda expression)
output oldDogs array = filter(dogs, dog => dog.age >= 6)
output oldandyoungDogs array = filter(dogs, dog => dog.age >= 6 || dog.age <= 3)
output ShowDog array = filter(dogs, dog => (contains(dog,'isShowDog') && bool(dog.isShowDog)))
output ShowDogsandyoungDogs array = filter(dogs, dog => dog.age <= 3 || (contains(dog,'isShowDog') && dog.isShowDog))

// with (paren) the OR || appears to be the incorrect color ?
output youngDogsandShowDogs array = filter(dogs, dog => (contains(dog,'isShowDog') && dog.isShowDog) || dog.age <= 3 )

// without (paren) the OR || appears to be the correct color, however precedence could be unclear ?
output youngDogsandShowDogs2 array = filter(dogs, dog => contains(dog,'isShowDog') && dog.isShowDog || dog.age <= 3 )

// // map(inputArray, lambda expression)
// output dogNames array = map(dogs, dog => dog.name)
// output sayHi array = map(dogs, dog => 'Hello ${dog.name}!')
// output mapObject array = map(range(0, length(dogs)), i => {
//   i: i
//   dog: dogs[i].name
//   greeting: 'Ahoy, ${dogs[i].name}!'
// })

// // reduce(inputArray, initialValue, lambda expression)
// var ages = map(dogs, dog => dog.age)
// output totalAge int = reduce(ages, 0, (cur, prev) => cur + prev)
// output totalAgeAdd1 int = reduce(ages, 1, (cur, prev) => cur + prev)

// // sort(inputArray, lambda expression)
// output dogsByAge array = sort(dogs, (a, b) => a.age < b.age)
