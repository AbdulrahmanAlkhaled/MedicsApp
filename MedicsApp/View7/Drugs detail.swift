//
//  Drugs detail.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct Drugs_detail: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                Spacer()
                Text("Drugs Detail")
                Spacer()
                Image(systemName: "basket")
            }.padding()
         Image("Image 30")
                .resizable()
                .frame(width: 163, height: 163)
                .padding()
            
            DrugsView()
            
            Image("Image 33")
                .resizable()
                .frame(width: 334, height: 109)
            Spacer()
            HStack{
                Image(systemName: "basket")
                    .padding()
                    .foregroundColor(.color)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.color.opacity(0.2)))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    //.padding()
                Text("Buy now")
                    .bold()
                    .frame(width: 250)
                     .padding()
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.color))
                    //.padding()
            }.padding()
        }
    }
}

#Preview {
    Drugs_detail()
}
