//
//  SwiftUIView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Color("Color")
                .ignoresSafeArea()
            VStack{
                Image(systemName: "aqi.medium")
                    .resizable()
                   // .scaledToFill()
                    .frame(width: 150,height: 150)
                    .padding(.horizontal)
                    .bold()
                    .foregroundColor(.white)
                    
                Text("Medics")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
