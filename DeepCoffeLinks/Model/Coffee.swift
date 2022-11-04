struct Coffee: Identifiable {
    var id, title, description, productImage, productPrice: String
}

var coffees: [Coffee] = [
    Coffee(id: "COFFB11", title: "Black Cofee", description: "No frills here: Black coffee is made from plain ground coffee beans that are brewed hot. It's served without added sugar, milk or flavorings", productImage: "Coffee1", productPrice: "$17"),
    Coffee(id: "COFFB12", title: "Decaff", description: "Coffee beans naturally contain caffeine, but roasters can use several different processes to remove almostall of it. Decaf coffee is brewed with these decaffeinated beans", productImage: "Coffee2", productPrice: "$10"),
    Coffee(id: "COFFB13", title: "Expresso", description: "Test description to Expresso, Test description to Expresso, Test description to Expresso, Test description to Expresso, Test description to Expresso, Test description to Expresso", productImage: "Coffee3", productPrice: "$19"),
    Coffee(id: "COFFB14", title: "Latte", description: "Test description to Latte, Test description to Latte, Test description to Latte, Test description to Latte, Test description to Latte, Test description to Latte, ", productImage: "Coffee4", productPrice: "$22"),
    Coffee(id: "COFFB15", title: "Cappuccino", description: "Test description to Cappuccino, Test description to Cappuccino, Test description to Cappuccino, Test description to Cappuccino, Test description to Cappuccino, Test description to Cappuccino, ", productImage: "Coffee5", productPrice: "$15"),
    Coffee(id: "COFFB16", title: "Machiato", description: "Test description to Machiato, Test description to Machiato, Test description to Machiato, Test description to Machiato, Test description to Machiato, ", productImage: "Coffee6", productPrice: "$25")
]
