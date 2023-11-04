//
//  ShapesView2.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 02/11/2023.
//

import SwiftUI

struct ShapesView2: View {
    var name: String
    var imageName: String
    var cardColor: Color = .white
   // var isClicked: Bool = false
    
    var body: some View {
        VStack{

            ZStack {
                Color(cardColor)
                    .ignoresSafeArea()
                    .shadow(radius: 10)
                    .clipShape(RoundedRectangle(cornerRadius: 22))
                    .frame(width: 60, height: 60)
                Image(systemName: imageName)
                    .font(.title)
                    .foregroundColor(Color("Color"))
            }
            Text(name)
                .font(.footnote)
                .foregroundStyle(.gray)
        }
        }

    }
#Preview {
    ShapesView2(name: "Doctors", imageName: "person")
}
