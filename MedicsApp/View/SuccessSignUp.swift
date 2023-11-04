//
//  SuccessSignUp.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct SuccessSignUp: View {
    var body: some View {
        ZStack{
          SignupView()
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.gray.opacity(0.1))
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 350, height: 400)
                .foregroundColor(.white)
                .shadow(radius: 5)
            VStack{
                ZStack{
                    Circle()
                        .foregroundColor(.gray.opacity(0.1))
                        .frame(width:100)
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color("Color"))
                }.padding()
                Text("Success")
                    .font(.title2)
                    .bold()
                Text("Your account has been registered")
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                PrimaryButton(title: "Login")
                    .frame(width: 150)
                    .padding()
            }.frame(maxWidth: .infinity)
                .padding()
        }
    }
}

#Preview {
    SuccessSignUp()
}
