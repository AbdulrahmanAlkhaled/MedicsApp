//
//  VerificationView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct VerificationView: View {
    @State var code: String = ""
    @State var code2: String = ""
    @State var code3: String = ""
    @State var code4: String = ""

    var body: some View {
        VStack{
            Image(systemName: "chevron.left")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Enter verification code")
                .bold()
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            Text("Enter code that we have sent to you +96655255*****")
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal)
            
            HStack{
                ZStack{
                    TextField("", text: $code)
                        .padding()
                        .frame(maxWidth: .infinity)
                      //  .multilineTextAlignment(.leading)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                            
                                .stroke(code.isEmpty ? .black : Color("Color"), lineWidth: 2)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 70, height: 70)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                        )
                }
                ZStack{
                    TextField("", text: $code2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                            
                                .stroke(code2.isEmpty ? .black : Color("Color"), lineWidth: 2)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 70, height: 70)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                        )
                }
                ZStack{
                    TextField("", text: $code3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                            
                                .stroke(code3.isEmpty ? .black : Color("Color"), lineWidth: 2)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 70, height: 70)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                        )
                }
                ZStack{
                    TextField("", text: $code4)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                            
                                .stroke(code4.isEmpty ? .black : Color("Color"), lineWidth: 2)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 70, height: 70)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                        )
                }
            }   .padding(32)

            PrimaryButton(title: "Verify")
                .frame(width: 365)
                .padding()
            HStack{
                Text("Don't receive the code?")
                    .foregroundStyle(.gray)
                Text("Resend")
                    .foregroundStyle(Color("Color"))
            }.frame(maxWidth: .infinity)
            
            Spacer()
        }
    }
}

#Preview {
    VerificationView()
}
