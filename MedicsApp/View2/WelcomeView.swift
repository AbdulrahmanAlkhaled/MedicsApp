//
//  WelcomeView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
        VStack{
            Image(systemName: "aqi.medium")
                .resizable()
                .frame(width: 150, height: 150)
                .foregroundColor(Color("Color"))
            Text("Medics")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color("Color"))
        }.padding()
            Text("Let's get started!")
                .font(.title2)
                .bold()
            Text("Login to enjoy the features we've provided, and stay healthy!")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,50)
            PrimaryButton(title: "Login")
                .frame(width: 300)
                .padding()
            PrimaryButton2(title: "Sign up")
                .frame(width: 300)
                .frame(maxWidth: .infinity)
             //   .background(Color(.white))
                //.cornerRadius(50)
                .shadow(color:Color("Color"),radius: 1.3)

        }
    }
}

#Preview {
    WelcomeView()
}
