//
//  GestureRecognizer.swift
//  GestureRecognizer
//
//  Created by Emre Ülkem on 28.01.2023.
//

import SwiftUI

struct GestureRecognizer: View {
    @State private var flag: Bool = false
    var body: some View {
        Text("Tap Me")
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding(15)
            .background(flag ? Color.green : Color.yellow)
            .onTapGesture {
                flag.toggle()
            }
    }
}

struct GestureRecognizer_Previews: PreviewProvider {
    static var previews: some View {
        GestureRecognizer()
    }
}
