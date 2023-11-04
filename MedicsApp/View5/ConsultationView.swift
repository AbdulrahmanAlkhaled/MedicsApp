//
//  ConsultationView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 02/11/2023.
//

import SwiftUI

struct ConsultationView: View {
    @State var searchText: String = ""
    
    let row = [GridItem(.fixed(100)) , GridItem(.fixed(100))]
    
    
    var body: some View {
        ZStack{
                Color.color2
                    .ignoresSafeArea()
                VStack{
                    HStack(spacing: 30){
                        Image(systemName: "chevron.left")
                        //.frame(maxWidth: .infinity, alignment: .leading)
                        Text("Find Doctors")
                            .bold()
                            .font(.title3)
                            .frame(maxWidth: .infinity)
                        Spacer()
                        
                    }.padding()
                    
                    HStack{
                        TextField("Search doctor, drugs, articles... ", text: $searchText)
                            .padding(.leading,25)
                    }
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                    .shadow(color:Color.gray.opacity(0.8),radius: 1.0)
                    .padding(.horizontal)
                    .overlay(
                        Image(systemName: "magnifyingglass")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,25)
                            .foregroundColor(.gray)
                    )
                    VStack{
                        Text("Category")
                            .font(.title3)
                            .bold()
                           // .padding(.horizontal)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(CGSize(width: 1.0, height: 10.0))
                        LazyHGrid(rows: row , spacing: 15) {
                            ShapesView2(name: "General", imageName: "stethoscope")
                            ShapesView2(name: "Covid-19", imageName: "ev.plug.ac.type.1")
                            ShapesView2(name: "Dentist", imageName: "building")
                            ShapesView2(name: "Lungs specalist", imageName: "lines.measurement.vertical")
                            ShapesView2(name: "suregon", imageName: "medical.thermometer")
                            ShapesView2(name: "cardiogoist", imageName: "pyramid")
                            ShapesView2(name: "Psychialist", imageName: "timelapse")
                        }
                    }.padding(.horizontal)
                    VStack{
                        Text("Recommended Doctors")
                            .font(.title3)
                            .bold()
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Shapes3View()
                    }                    .padding(.vertical)
                    VStack{
                        
                        Text("Your recent doctors")
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing:15){
                                RecentView(name: "Dr. Ali", imageName: "person")
                                RecentView(name: "Dr. Saad", imageName: "person")
                                RecentView(name: "Dr. Fahd", imageName: "person")
                                RecentView(name: "Dr. Ahmad", imageName: "person")
                            }
                        }
                    }                            .padding()

                    Spacer()
                }
            }
        }
}
#Preview {
    ConsultationView()
}
