//
//  HomeView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 01/11/2023.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    var body: some View {
        ZStack{
            Color.color2
            ScrollView{
                VStack{
                    HStack{
                        Text("Find your desire health solution")
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity,alignment: .leading)
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 25,height:25)
                    }.padding()
                    
                    HStack{
                        TextField("Search doctor, drugs, articles... ", text: $searchText)
                            .padding(.leading,25)
                    }
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                    .shadow(color:Color.color.opacity(0.8),radius: 1.0)
                    .padding(.horizontal)
                    .overlay(
                        Image(systemName: "magnifyingglass")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,25)
                            .foregroundColor(.gray)
                    )
                    //VStack{
                    HStack(spacing: 25){
                        OptionsView(name: "Doctor", imageName: "stethoscope")
                            .shadow(radius: 0.1)
                        OptionsView(name: "Pharmacy", imageName: "medical.thermometer")
                            .shadow(radius: 0.1)
                        OptionsView(name: "Hospital", imageName: "building")
                            .shadow(radius: 0.1)
                        OptionsView(name: "Ambulance", imageName: "truck.box")
                            .shadow(radius: 0.1)
                    }.padding()
                    
                    ShapesView()
                    //  }.padding()
                    
                    HStack{
                        Text("Top Doctor")
                            .bold()
                        Spacer()
                        Text("See all")
                            .bold()
                            .foregroundStyle(.color)
                    }.padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing:-180){
                            TopView(name: "Dr. Ali")
                            TopView(name: "Dr. Saad")
                            TopView(name: "Dr. Saad")

                            
                        }.padding()
                          
                    }.padding(.horizontal,-90)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
