//
//  BookView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 03/11/2023.
//

import SwiftUI

struct BookView: View {
    var body: some View {
        VStack{
                HStack{
                    Image(systemName: "chevron.left")
                    Spacer()
                    Text("Appoinment")
                        .font(.title3)
                        .bold()
                    Spacer()
                    
                }.padding()
            
            ZStack{
                NavigationLink {
                    Text("Dr. Ali")
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
                            Text("Dr. Ali")
                                .bold()
                                .foregroundStyle(.black)
                            Text("Dentist")
                            
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
                HStack{
                    Text("Date")
                        .bold()
                    Spacer()
                    Text("Change")
                        .font(.callout)
                        .foregroundStyle(.gray)
                }.padding()
                HStack{
                    Image(systemName: "calendar")
                        .foregroundStyle(.color)
                        .padding(10)
                        .background(Circle()
                            .fill(.color.opacity(0.4))
                        )
                    Text("Wednesday, Jun 23, 2022 | 10:00 AM")
                        .font(.callout)
                        .foregroundStyle(.black.opacity(0.7))
                    Spacer()
                }.padding(.horizontal)
                Divider()
                    .padding(.horizontal)
            }
            VStack{
                HStack{
                    Text("Reason")
                        .bold()
                    Spacer()
                    Text("Change")
                        .font(.callout)
                        .foregroundStyle(.gray)
                }.padding(.horizontal)
                
                HStack{
                    Image(systemName: "square.and.pencil")
                        .foregroundStyle(.color)
                        .padding(10)
                        .background(Circle()
                            .fill(.color.opacity(0.4))
                        )
                    Text("Chest pain")
                        .font(.callout)
                        .foregroundStyle(.black.opacity(0.7))
                    Spacer()
                }.padding(.horizontal)
                Divider()
                    .padding(.horizontal)
                
                VStack{
                    HStack{
                        Text("Payment detail")
                            .bold()
                        Spacer()
                       
                    }.padding(.horizontal)
                    Spacer()
                        HStack{
                            Text("Consultation")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("$60.00")
                    }.padding(.horizontal)
                    
                    HStack{
                        Text("Admin Fee")
                            .foregroundStyle(.gray)
                        Spacer()
                        Text("$01.00")
                }.padding(.horizontal)
                    
                    HStack{
                        Text("Consultation")
                            .foregroundStyle(.gray)
                        Spacer()
                        Text("-")
                }.padding(.horizontal)
                    
                    HStack{
                        Text("Total")
                            .bold()
                        Spacer()
                        Text("$60.00")
                            .foregroundStyle(.color)
                                .bold()
                }.padding(.horizontal)
                    Divider()
                        .padding(.horizontal)
                    VStack{
                        Text("Payment method")
                            .bold()
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text("VISA")
                                .foregroundStyle(.blue)
                               .padding()
                            Spacer()
                            Text("Change")
                        }.padding(.horizontal,60)
                            .background(RoundedRectangle(cornerRadius: 10)
                                .stroke(.color.opacity(0.2), lineWidth: 1)
                                .frame(width: 300,height: 40)

                            )
                        
                    }
                }
                HStack{
                    VStack{
                        Text("Total")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                        Text("$61.00")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
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
            
            Spacer()
        }
    }
}

#Preview {
    BookView()
}
