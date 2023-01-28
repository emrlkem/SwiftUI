//
//  ContentView.swift
//  Navigations
//
//  Created by Emre Ülkem on 27.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink(destination: Color.blue){
                    Text("Do something")
                }
            }
            .navigationTitle("Little Lemon")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
