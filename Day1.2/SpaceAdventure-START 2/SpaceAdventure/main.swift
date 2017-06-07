import Foundation
class Planet{
    var name:String?
    var discription:String?
    init(name:String, discription:String){
        self.name=name
        self.discription=discription
    }
}

class Galactic{
    let name = "Solar System Planets"
    var planets:[Planet] {
        let Mercury = Planet(name: "Mercury", discription: "Mercury is very beaituful")
        let Venus = Planet(name: "Venus", discription: "Venus is very beaituful")
        let Mars = Planet(name: "Mars", discription: "Mars is very beaituful")
        let Jupiter = Planet(name: "Jupiter", discription: "Jupiter is very beaituful")
        let Saturn = Planet(name: "Saturn", discription: "Saturn is very beaituful")
        let Uranus = Planet(name: "Uranus", discription: "Uranus is very beaituful")
        let Neptune = Planet(name: "Neptune", discription: "Neptune is very beaituful")
        let Pluto = Planet(name: "Pluto", discription: "Pluto is very beaituful")
            return [Mercury, Venus, Mars, Jupiter, Saturn, Uranus, Neptune, Pluto]
        }
}

let solarSystem = Galactic()

let intro = "Welcome to the Solar System Planets!"
let intro2 = "There are 8 planets to explore."
let choose = "Please, enter a planet you want to visit."

print("\(intro)\n\(intro2)")
print("Whta is your name?")
let name = getln()
print("Hello " + name + ". Nice to meet you. Let's do it!!!")


func result(){
    print("Shall I randomly choose a planet for you to visit? (Y or N)")
    let answer = getln()
    if (answer=="Y"){
        let rand = Int(arc4random_uniform(UInt32(8)))
        print(rand)
        print(solarSystem.planets[rand].name! + ". " + solarSystem.planets[rand].discription!)
    }
    else if (answer=="N"){
        print(choose)
        for planet in solarSystem.planets{
            print(planet.name!)
        }
        let choosedPlanet = getln()
        var find = false
        for planet in solarSystem.planets{
            if (choosedPlanet==planet.name){
                    find=true
                    print(planet.name! + ". " + planet.discription!)
            }
        }
        if(!find){
            print("Sorry, there is no such planet!")
        }
    }
    else{
        print("Sorry, please try again!")
        result()
    }
}

result()

