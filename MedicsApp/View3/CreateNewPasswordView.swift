//
//  CreateNewPasswordView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct CreateNewPasswordView: View {
    @State var password: String = ""
    @State var confirmPassword: String = ""

    var body: some View {
        VStack{
            Image(systemName: "chevron.left")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            VStack(spacing:10){
                Text("Create new password")
                    .bold()
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                Text("Create your new password to login")
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal)
            }
            
                SecureField("Enter your new password", text: $password)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(50.0)
                    .shadow(color:Color.black.opacity(0.1),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding()
                SecureField("Confirm your new password", text: $confirmPassword)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(50.0)
                    .shadow(color:Color.black.opacity(0.1),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
            
            PrimaryButton(title: "Create password")
                .frame(width: 365)
                .padding()
            
            Spacer()
        }
    }
}
#Preview {
    CreateNewPasswordView()
}
