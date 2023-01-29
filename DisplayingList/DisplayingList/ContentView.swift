//
//  ContentView.swift
//  DisplayingList
//
//  Created by Emre Ülkem on 27.01.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = Model()
    
    struct Item: Identifiable {
        let name: String
        let id = UUID()
    }
    
    class Model: ObservableObject {
        @Published var meals: [Item] = menuItems()
        
        static func menuItems() -> [Item] {
            return [
                    Item(name: "Lasagna"),
                    Item(name: "Fettuccini Alfredo"),
                    Item(name: "Spaghetti"),
                    Item(name: "Avocado Toast"),
                    Item(name: "Tortellini"),
                    Item(name: "Pizza")
            ]
        }
    }
    
    var body: some View {
        VStack {
            List {
                ForEach(model.meals) { item in
                Text(item.name)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
