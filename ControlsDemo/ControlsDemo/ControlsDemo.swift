//
//  ControlsDemo.swift
//  ControlsDemo
//
//  Created by Emre Ülkem on 26.01.2023.
//

import SwiftUI

struct ControlsDemo: View {
    @State var selectedDate = Date()
    
    var body: some View {
        Form {
            HStack {
                DatePicker(
                    selection: $selectedDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ) {}
                
                Button(role: .none) {
                    print("do something!")
                } label: {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }.padding(20)
            }
            Text("Date is \(selectedDate.formatted(date: .long, time: .complete))")
        }
    }
}

struct ControlsDemo_Previews: PreviewProvider {
    static var previews: some View {
        ControlsDemo()
    }
}
