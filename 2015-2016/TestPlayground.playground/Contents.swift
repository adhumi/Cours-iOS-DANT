var monInt: Int = 42
var monFloat = 4.1
var monString = "DANT"





//let maConstante = 42
//maConstante = 50


let pommes = 3
let oranges = 5
let pommesTotal = "Je possède \(pommes) pommes."
// Je possède 3 pommes.
let orangesTotal = "Je possède \(oranges) oranges."
// Je possède 5 oranges.
let fruitsTotal = "Je possède \(pommes + oranges) fruits en tout."
// Je possède 8 fruits en tout.
let pommesEtOranges = pommesTotal + " " + orangesTotal
// Je possède 3 pommes. Je possède 5 oranges.

println(orangesTotal)


var tableau: [String] = ["Milan", "Leila", "Alban"]
println(tableau[0])

let tableauVide = [String]()
let dictionnaireVide = [String: Float]()

let individuelScore = [75, 43, 103, 87, 12]
var equipeScore = 0
for score in individuelScore {
    if score > 50 {
        equipeScore += 3
    } else {
        equipeScore += 1
    }
}
println(equipeScore)




let legume = "poivre rouge"
switch legume {
case "celeri":
    let commentaireLegume = "Ajouter quelques raisins."
case "concombre", "salade":
    let commentaireLegume = "Ça devrait faire un bon sandwich."
case let x where x.hasSuffix("poivre"):
    let commentaireLegume = "On sent les épices \(x)?"
default:
    let commentaireLegume = "Tout a bon goût dans la soupe."
}


for var i = 0; i < 10; ++i {
    print("\(i) ")
}

println()

for i in 0..<10 {
    print("\(i) ")
}

func maFonction(argument: String) -> (String, Int) {
    return (argument, count(argument))
}

let tuple = maFonction("DANT")
println(tuple.0)
// DANT
println(tuple.1)
// 4



let table = [1, 2, 3]
map(table, { (i: Int) -> Int in
    return i * 2
})



class MaClasse {
    var maPropriete: String

    init() {
        maPropriete = "DANT"
    }

    init(name: String) {
        maPropriete = name
    }
}

let classe = MaClasse(name: "Toto")
classe.maPropriete
