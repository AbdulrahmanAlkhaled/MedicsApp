//
//  PharmacyView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct PharmacyView: View {
    @State var searchText: String = ""
    var body: some View {
        
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                Spacer()
                Text("Pharmacy")
                    .font(.title3)
                    .bold()
                Spacer()
                Image(systemName: "basket")
            }.padding()
            ScrollView{
            HStack{
                TextField("Search doctor, drugs, articles... ", text: $searchText)
                    .padding(.leading,25)
            }
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(20)
            .shadow(color:Color.color.opacity(0.4),radius: 1.0)
            .padding(.horizontal)
            .overlay(
                Image(systemName: "magnifyingglass")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,25)
                    .foregroundColor(.gray)
            )
          //  .padding()
            Image("Image 25")
                .resizable()
                .frame(width: 389, height: 219)
                .offset(CGSize(width: 10.0, height: -15.0))
               // .padding()
            
            HStack{
                Text("Popular product")
                    .bold()
                Spacer()
                Text("See all")
                    .foregroundStyle(.color)
            }.padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 15){
                    Image("Image 26")
                        .resizable()
                        .frame(width: 118, height: 165)
                    Image("Image 27")
                        .resizable()
                        .frame(width: 118, height: 165)
                    Image("Image 27")
                        .resizable()
                        .frame(width: 118, height: 165)
                    
                }.padding()
            }
                HStack{
                    Text("Product on sales")
                        .bold()
                    Spacer()
                    Text("See all")
                        .foregroundStyle(.color)
                }.padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 15){
                        Image("Image 29")
                            .resizable()
                            .frame(width: 118, height: 165)
                        Image("Image 28")
                            .resizable()
                            .frame(width: 118, height: 165)
                        Image("Image 28")
                            .resizable()
                            .frame(width: 118, height: 165)
                        
                    }.padding()
                }
            Spacer()
        }
    }
}
    }

#Preview {
    PharmacyView()
}
