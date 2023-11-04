//
//  SuccessLogin.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//



import SwiftUI

struct SuccessLogin: View {
    //@State var email: String = ""
    var body: some View {
        ZStack{
            LoginView()
            
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
                Text("Yeah! Welcome back")
                    .font(.title2)
                    .bold()
                Text("Once again you login successfully into medidoc app")
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                PrimaryButton(title: "Go to home")
                    .frame(width: 170)
                    .padding()
            }.frame(maxWidth: .infinity)
        }
        }
        
    }

#Preview {
    SuccessLogin()
}
