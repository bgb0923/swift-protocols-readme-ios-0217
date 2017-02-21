protocol TextDescription {
    var textDescription: String { get }
}

class Person: TextDescription {
    var name: String
    var height: Double
    var favoriteFood: String
    var textDescription: String { return "name: \(self.name) \nHeight: \(self.height) \nFavorite Food: \(self.favoriteFood)" }
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
}

var jim = Person(name: "Jim", height: 6.0, favoriteFood: "Pasta")

print(jim.textDescription)

class Building: TextDescription {
    var address: String
    var height: Double
    var textDescription: String { return "Address: \(self.address) \nHeight: \(self.height)" }
    
    init(address: String, height: Double) {
        self.address = address
        self.height = height
    }
}

let library = Building(address: "Main Street", height: 20.0)

print(library.textDescription)