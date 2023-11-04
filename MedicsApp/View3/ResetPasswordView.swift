//
//  ResetPasswordView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct ResetPasswordView: View {
    @State var selected = 1
    @State var email: String = ""
    @State var Phonenumber: String = ""
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.color
        
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        VStack{
            Image(systemName: "chevron.left")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            VStack{
                Text("Forget your password?")
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Enter your email or your phone number, we will send to you confirmation code.")
                    .foregroundStyle(.gray)
            } .padding()
            
            Picker("Choose a side", selection: $selected){
                Text("Email").tag(1)
                Text("Phone number").tag(2)
            }
            .padding(.horizontal)
            .pickerStyle(SegmentedPickerStyle())
            
            if selected == 1{
                TextField("Enter your email", text: $email)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(50.0)
                    .shadow(color:Color.black.opacity(0.1),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding()
            }else{
                TextField("Enter your phone number", text: $Phonenumber)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(50.0)
                    .shadow(color:Color.black.opacity(0.1),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            PrimaryButton(title: "Reset password")
                .frame(width: 365)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    ResetPasswordView()
}
