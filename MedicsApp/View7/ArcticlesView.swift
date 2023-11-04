//
//  PharmacyView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct ArcticlesView: View {
    @State var searchText: String = ""

    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                Spacer()
                Text("Arcticles")
                    .font(.title3)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }.padding()
            
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
            .padding(.vertical)
            Text("Popular Articles")
                
                .bold()
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    PopularView(title: "Covid-19")
                    Spacer(minLength: 50)
                    PopularView(title: "Diet")
                    Spacer(minLength: 55)
                    PopularView(title: "Fitness")

                }.padding()
            }
                HStack{
                    Text("Trending Articles")
                        .bold()
                    Spacer()
                    Text("See all")
                        .foregroundStyle(.color)
                }.padding()
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 15){
                    Image("Image 17")
                        .resizable()
                        .frame(width: 154, height: 219)
                    Image("Image 20")
                        .resizable()
                        .frame(width: 154, height: 219)
                    Image("Image 17")
                        .resizable()
                        .frame(width: 154, height: 219)
                }.padding(.horizontal)
            }
            
            HStack{
                Text("Related Articles")
                    .bold()
                Spacer()
                Text("See all")
                    .foregroundStyle(.color)
            }.padding()
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    Image("Image 22")
                        .resizable()
                        .frame(width: 335, height: 70)
                    Image("Image 21")
                        .resizable()
                        .frame(width: 335, height: 70)
                    Image("Image 22")
                        .resizable()
                        .frame(width: 335, height: 70)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ArcticlesView()
}
