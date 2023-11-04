//
//  ContentView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Text("Width: \(Int(geometry.size.width))")
                Spacer()
                Text("Height: \(Int(geometry.size.height))")
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
