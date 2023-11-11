//
//  SuccessLogout.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 05/11/2023.
//

import SwiftUI

struct SuccessLogout: View {
    var body: some View {
        ZStack{
           SelectView()
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.gray.opacity(0.3))
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
                Text("Are you sure to log out of your account?")
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                PrimaryButton(title: "Logout")
                    .frame(width: 200)
                .padding(10)
                PrimaryButton(title: "Cancel")
                    .frame(width: 200)
            }.frame(maxWidth: .infinity)
                .padding()
            
        }
    }
}

#Preview {
    SuccessLogout()
}
