//
//  LoginView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//


import SwiftUI

struct PrimaryButton: View{
    var title: String
    var body: some View{
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("Color"))
            .cornerRadius(50)
    }
}
   

struct PrimaryButton2: View{
    var title: String
    var body: some View{
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundStyle(Color("Color"))
            .frame(maxWidth: .infinity)
            .padding()
            .background(.white)
            .cornerRadius(50)
    }
}

struct LoginView: View {
    var enterEmail: String = ""
    var enterPassword: String = ""
    
    var emailError: String = "Email is Empty"
    var passwordError: String = "Password is Empty"

    var body: some View {
            VStack{
                HStack(spacing: 30){
                    Image(systemName: "chevron.left")
                    
                    Text("Sign in")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity,alignment: .center)
                    Spacer()
                }
                TextField("Email", text: .constant(""))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 25)
                        .stroke(emailError.isEmpty ? .black : .red, lineWidth: 2)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    )
                
                if enterEmail.isEmpty{
                    Text(emailError)
                        .foregroundStyle(.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    SecureField("Password", text: .constant(""))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 25)
                            .stroke(.gray,lineWidth: 2)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                        )
                    
            }
//                SecureField("Enter your password", text: $password)
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.gray.opacity(0.1))
//                    .cornerRadius(50.0)
//                    .shadow(color:Color.black.opacity(0.1),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                
//                Text("Forgot password?")
//                    .foregroundStyle(Color("Color"))
//                    .frame(maxWidth: .infinity, alignment: .trailing)
//                    .padding()
                PrimaryButton(title: "Login")
                    .padding(.vertical)
                HStack{
                    Text("Don't have account?")
                    Text("sign up")
                        .foregroundStyle(Color("Color"))
                }
                .padding()
                HStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 150, height: 1)
                    Text("OR")
                        .foregroundStyle(.gray)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 150, height: 1)
                }
                VStack{
                    HStack(spacing:60){
                        Image(systemName: "apple.logo")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Sign in with apple")
                        Spacer()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(.white))
                    .cornerRadius(50)
                    .shadow(color:Color.black.opacity(0.8),radius: 0.8)
                    HStack(spacing:60){
                        Image("Image 6")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Sign in with google")
                        Spacer()
                    }  .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(.white))
                    .cornerRadius(50)
                    .shadow(color:Color.black.opacity(0.8),radius: 0.8)
                    HStack(spacing:60){
                        Image("meta_")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Sign in with meta")
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(.white))
                    .cornerRadius(50)
                    .shadow(color:Color.black.opacity(0.8),radius: 0.8)
                }
                
                .padding()
                Spacer()
                
            }
            .padding()
            
        }
        }

#Preview {
    LoginView()
}
