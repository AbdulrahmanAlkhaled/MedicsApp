//
//  CartView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                Spacer()
                Text("My Cart")
                    .bold()
                Spacer()
            }.padding()
            
            Image("Image 34")
                .resizable()
                .frame(width: 334, height: 121)
                .padding(.vertical)
            Image("Image 35")
                .resizable()
                .frame(width: 334, height: 121)
            VStack{
                Text("Payment Detail")
                    .bold()
                    .frame(maxWidth: .infinity, alignment:.leading)
                HStack{
                    Text("Subtotal")
                        .foregroundStyle(.color4)
                    Spacer()
                    Text("$25.98")
                        .foregroundStyle(.color4)

                }.padding(.vertical,5)
                HStack{
                    Text("Taxes")
                        .foregroundStyle(.color4)
                    Spacer()
                    Text("$1.00")
                        .foregroundStyle(.color4)

                }.padding(.vertical,5)
                HStack{
                    Text("Total")
                    Spacer()
                    Text("$26.98")
                }.padding(.vertical,5)
                Divider()
            }.padding()
        
            VStack{
                Text("Payment Detail")
                    .bold()
                    .frame(maxWidth: .infinity, alignment:.leading)
                Image("Image 36")
                    .resizable()
                    .frame(width: 334, height: 49)
            }.padding(.horizontal)
            Spacer()
            
            HStack{
                VStack{
                    Text("Total")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.gray)
                    Text("$26.98")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                    //.padding()
                Text("Checkout")
                    .bold()
                    .frame(width: 200)
                     .padding()
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.color))
                    //.padding()
            }.padding()
        }
    }
}

#Preview {
    CartView()
}
