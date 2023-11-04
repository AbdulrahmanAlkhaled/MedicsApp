//
//  SuccessView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        ZStack{
CreateNewPasswordView()
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.gray.opacity(0.1))
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 350, height: 450)
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
                    .padding()
                Text("You have successfully reset your password.")
                    .padding(.horizontal,18)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                PrimaryButton(title: "Login")
                    .frame(width: 200)
                    .padding()
            }.frame(maxWidth: .infinity)
                .padding()
        }
    }
}

#Preview {
    SuccessView()
}
