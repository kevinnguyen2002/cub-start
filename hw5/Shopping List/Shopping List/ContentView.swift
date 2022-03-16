//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI



class Items: Identifiable {
    
    let imageName: String
    let itemName: String
    let quantity: Int
    
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
    
}

struct ContentView: View {
    
    var Fruits = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "strawberry", itemName: "Strawberries", quantity: 12),
        Items(imageName: "pineapple", itemName: "Pineapples", quantity: 2)
    ]
    
    var Vegetables = [
        Items(imageName: "lettuce", itemName: "Lettuce", quantity: 1),
        Items(imageName: "kale", itemName: "Kale", quantity: 3),
        Items(imageName: "potato", itemName: "Potatoes", quantity: 30),
        Items(imageName: "green beans", itemName: "Green Beans", quantity: 1)
    ]
    
    var Dairy = [
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12),
        Items(imageName: "milk", itemName: "Milk", quantity: 2),
        Items(imageName: "cheese", itemName: "Cheese", quantity: 0),
        Items(imageName: "yogurt", itemName: "Yogurt", quantity: 100)
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(Fruits) {
                        i in CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Vegetables")) {
                    ForEach(Vegetables) {
                        i in CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Dairy")) {
                    ForEach(Dairy) {
                        i in CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }.navigationTitle("Shopping List")
        }
    }
}
