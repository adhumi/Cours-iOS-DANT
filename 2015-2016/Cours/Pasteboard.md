

# \# Casting

-> Après les Optionals


---

![](assets/02_optionals.jpg)

![inline](assets/02_optionals.jpg)

---

# \# Optionals

- Une variable optionnelle peut recevoir `nil` :

```swift
var optional: String? = nil
```

- Aussi un type de retour ou un paramètre :

```swift
func function(param: Int?) -> String? {
	// ...
}
```

^ La variable `optional` est de type String ou nil
La méthode retourne un String ou nil
Elle prend en paramètre un entier ou nil

---

# \# Optionals

```swift
optional?.maMethode()
```

 - Si `optional` n'est pas `nil`, appeller la méthode `maMethode()` sur `optional`
 - Optional chaining

^ On ne peut pas appeller une méthode sur `nil`

---

# \# Fonctions et méthodes

- Les fonctions peuvent retourner des fonctions

```swift
func creerIncrementeur() -> (Int -> Int) {
	func ajouterUn(nombre: Int) -> Int {
		return nombre + 1
	}
	return ajouterUn
}
var incrementer = creerIncrementeur()
incrementer(7)
```

---

# \# Fonctions et méthodes

- Les fonctions peuvent prendre en paramètre des fonctions

```swift
func possedeLiens(liste: [Int], condition: Int -> Bool) -> Bool
```

---

# \# Closures

- Blocs de code qui peuvent être appelés plus tard

```swift
var states = ["California", "New York", "Texas", "Alaska"]
 
let abbreviatedStates = states.map({ (state: String) -> String in
    return state.substringToIndex(advance(state.startIndex, 2)).uppercaseString
})
 
println(abbreviatedStates)
```

---

# \# Fonctions et méthodes

- Avec les tuples, les fonctions peuvent retourner plusieurs paramètres

```swift
func maFonction(argument: String) -> (String, Int) {
    return (argument, count(argument))
}

let tuple = maFonction("DANT")
println(tuple.0)
// DANT
println(tuple.1)
// 4

---

# Contrôle d'accès
private public etc.