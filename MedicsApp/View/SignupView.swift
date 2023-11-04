//
//  SignupView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct SignupView: View {
    var enterEmail: String = ""
    var enterPassword: String = ""
    var name: String = ""
    
    var emailError: String = "Email is Empty"
    var passwordError: String = "Password is Empty"
    
    var body: some View {
        VStack{
            HStack(spacing:30){
                Image(systemName: "chevron.left")
                Text("Sign up")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,alignment: .center)
                Spacer()
            }
           
            TextField("Name", text: .constant(""))
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 25)
                    .stroke(name.isEmpty ? .gray : .red, lineWidth: 2)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                )
            
            TextField("Email", text: .constant(""))
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 25)
                    .stroke(emailError.isEmpty ? .black : .gray, lineWidth: 2)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                ).padding(.vertical)
            
            SecureField("Password", text: .constant(""))
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 25)
                    .stroke(passwordError.isEmpty ? .black : .red, lineWidth: 2)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                )
            
            if enterPassword.isEmpty{
                Text(passwordError)
                    .foregroundStyle(.red)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
            VStack{
            HStack{
                
                Image(systemName: "square")
                    .foregroundColor(.gray)
                Text("I agree to the")
                    .foregroundStyle(Color(.gray))
                Text("Terms of service")
                    .foregroundStyle(Color("Color"))
                Text("and")
                    .foregroundStyle(Color(.gray))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
                Text("Privacy and Ploicy")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(Color("Color"))
                    .padding(.leading,26)
            }

            .padding()

            PrimaryButton(title: "Sign up")
            HStack{
                Text("Do you have account?")
                Text("Sign in")
                    .foregroundStyle(Color("Color"))
            }
            .padding()
            
           
            Spacer()

        }
        .padding()   
    }
}

#Preview {
    SignupView()
}
