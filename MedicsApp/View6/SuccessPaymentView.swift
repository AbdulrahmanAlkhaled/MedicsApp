//
//  SuccessPaymentView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 03/11/2023.
//

import SwiftUI

struct SuccessPaymentView: View {
    var body: some View {
        ZStack{
            BookView()
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
                Text("Payment Success")
                    .font(.title2)
                    .bold()
                Text("Your payment has been successful, you can have a consultation session with your trusted doctor")
                    .padding(.horizontal)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                PrimaryButton(title: "Chat Doctor")
                    .frame(width: 170)
                    .padding()
            }.frame(maxWidth: .infinity)
                .padding()
        }
    }
}

#Preview {
    SuccessPaymentView()
}
