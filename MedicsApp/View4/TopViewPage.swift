//
//  TopViewPage.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 02/11/2023.
//

import SwiftUI

struct TopViewPage: View {
    var body: some View {
        VStack{
            HStack(spacing: 100){
                Image(systemName: "chevron.left")
                Text("Top Doctor")
                    .font(.title2)
                    .bold()
                Image(systemName: "ellipsis")
            }.padding()
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 25){
                    TopView2(name: "Dr. Ali", major: "Pyschologist")
                    TopView2(name: "Dr. Saad", major: "Pyschologist")
                    TopView2(name: "Dr. Fahad", major: "Pyschologist")
                    TopView2(name: "Dr. Hamad", major: "Pyschologist")
                    TopView2(name: "Dr. Faisal", major: "Pyschologist")

                }.padding(.vertical)
            }
            Spacer()
        }
    }
}

#Preview {
    TopViewPage()
}
