//
//  ShapesView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 02/11/2023.
//

import SwiftUI

struct PrimaryButton3: View{
    var title: String
    var body: some View{
        Text(title)
            .font(.footnote)
           .fontWeight(.bold)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(10)
            .background(Color("Color"))
            .cornerRadius(50)
    }
}

struct ShapesView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 350, height: 180)
                .cornerRadius(12)
                .foregroundColor(.color.opacity(0.2))
            VStack{
                Text("Early protection for your family health")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal,30)
                PrimaryButton3(title: "learn more")
                    .scaledToFit()
                    .frame(width: 160)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,45)
            }
            ZStack{
                Circle()
                    .frame(width: 130)
                    .foregroundColor(.white.opacity(0.6))
                    .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                    .offset(CGSize(width: -23.0, height:23.0))
                //.padding(25)
                Image("Image 4")
                    .resizable()
                    .frame(width: 100, height: 150)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .offset(CGSize(width: 0.0, height: 14.0))
                    .padding(41)
            }
        }
    }
}

#Preview {
    ShapesView()
}
