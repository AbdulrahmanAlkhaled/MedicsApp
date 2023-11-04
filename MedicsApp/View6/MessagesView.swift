//
//  MessagesView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct MessagesView: View {
    @State var selected = 1
    @State var upComing: String = ""
    @State var completed: String = ""
    @State var canceled: String = ""

    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.color
        
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack{
            HStack{
                Text("Message")
                    .font(.title)
                    .bold()
                Spacer()
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 24, height: 24)
            }.padding()
            
            Picker("Choose a side", selection: $selected){
                Text("All").tag(1)
                Text("Group").tag(2)
                Text("Private").tag(3)
            }
            .padding()
            .pickerStyle(SegmentedPickerStyle())
            VStack{
                MessagesDetails(name: "Dr. Marcus Horizon", image: "Image 13", message: "Hi how can I help you?", time: "10:00", notifcation: "Image 15")
                MessagesDetails(name: "Dr. Alysa hana", image: "Image 12", message: "I don't have any fever", time: "10:00", notifcation: "Image 14")
                MessagesDetails(name: "Dr. Marcus Horizon", image: "Image 16", message: "Do you have fever?", time: "10:00", notifcation: "Image 14")
            }
            
         Spacer()

                ZStack{
                    Circle()
                        .frame(width: 60)
                        .foregroundStyle(.color)
                    Image(systemName: "ellipsis.message.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.white)
                }.padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

#Preview {
    MessagesView()
}
