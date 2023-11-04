//
//  DetailsView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 03/11/2023.
//

import SwiftUI

struct DetailsView: View {
    var name : String
    var major: String
    var day: String
    var date: String
    var isClicked: Bool = true
    
    let threeColoumns =  [GridItem(), GridItem(), GridItem()]
                          
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                Spacer()
                Text("Doctor detail")
                    .font(.title3)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }.padding()
            
            ZStack{
                NavigationLink {
                    Text(name)
                    // Image(systemName: "person")
                } label: {
                    ZStack{
                        HStack{
                            ZStack{
                                Image(systemName: "person")
                                    .frame(width: 100,height: 100)
                                    .foregroundColor(.gray)
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 100,height: 100
                                    )
                            }
                            Spacer()
                        }
                        VStack{
                            Text(name)
                                .bold()
                                .foregroundStyle(.black)
                            Text(major)
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 5) // Background shape for both image and text
                                    .foregroundColor(Color.color.opacity(0.3))
                                    .frame(width: 43,height: 20)
                                HStack{
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.color)
                                    Text("4.7")
                                        .font(.footnote)
                                        .foregroundColor(Color.color)
                                }
                            }
                            HStack{
                                Image(systemName: "mappin")
                                Text("800m away")
                                    .font(.footnote)
                            }
                        }
                    }
                    
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray.opacity(0.1), lineWidth: 2)
                            .fill(.white)
                            .containerShape(RoundedRectangle(cornerRadius: 16))
                    )
                    .padding(.horizontal)
                }
            }
            VStack{
                Text("About")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("""
graduated from harvard university and he have 3 years experinces in his major different countries
""")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.leading)
                    Text("Read more")
                        .foregroundStyle(.color)

            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    DateView(day: "Mon", date: "23", isClicked: false)
                    DateView(day: "Tue", date: "24", isClicked: false)
                    DateView(day: "Wed", date: "25", isClicked: false)
                    DateView(day: "Thu", date: "26", isClicked: false)
                    DateView(day: "Fri", date: "27", isClicked: true)
                    DateView(day: "Sat", date: "28", isClicked: false)
                    DateView(day: "Sun", date: "29", isClicked: false)
                    DateView(day: "Sun", date: "30", isClicked: false)
                    DateView(day: "Mon", date: "31", isClicked: false)

                }.padding()
            }
        }
        Rectangle()
            .frame(height: 0.5) // Adjust the height as needed
            .foregroundColor(.color.opacity(0.5)) // Change the color to your desired color
            .padding()
        
        LazyVGrid(columns: threeColoumns){
            AppoinmentView(oclock: "2:00 PM", notAvailable: false)
            AppoinmentView(oclock: "3:00 PM", isClicked: false)
            AppoinmentView(oclock: "4:00 PM", notAvailable: false)
            AppoinmentView(oclock: "5:00 PM", notAvailable: false)
            AppoinmentView(oclock: "5:00 PM", notAvailable: false)
            AppoinmentView(oclock: "6:00 PM")
            AppoinmentView(oclock: "7:00 PM")
            AppoinmentView(oclock: "8:00 PM")
            AppoinmentView(oclock: "9:00 PM", notAvailable: false)

        }.padding(.horizontal)
        Spacer()

        HStack{
            Image(systemName: "ellipsis.message")
                .padding()
                .foregroundColor(.color)
                .background(RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.color.opacity(0.2)))
                .frame(maxWidth: .infinity, alignment: .leading)
                //.padding()
            Text("Book Appointment")
                .bold()
                .frame(width: 250)
                 .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(.color))
                //.padding()
        }.padding()
        }
    }


#Preview {
    DetailsView(name: "Dr. Ali", major: "Dentist", day: "Mon", date: "21")
}
