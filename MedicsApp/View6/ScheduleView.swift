//
//  ScheduleView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct ScheduleView: View {
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
                Text("Schedule")
                    .font(.title)
                    .bold()
                Spacer()
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 24, height: 24)
            }.padding()
            
            Picker("Choose a side", selection: $selected){
                Text("Upcoming").tag(1)
                Text("Completed").tag(2)
                Text("Canceled").tag(3)
            }
            .padding()
            .pickerStyle(SegmentedPickerStyle())
            VStack(spacing:50){
                ScheduleDetails(name: "Dr. Marcus Horizon", major: "Psychologist", image: "Image 13", date: "28/06/2022", time: "10:00 PM")
                ScheduleDetails(name: "Dr. Alysa Hana", major: "Psychologist", image: "Image 12", date: "26/06/2022", time: "10:00 AM")
            }.padding(.vertical)
            Spacer()
        }
    }
}

#Preview {
    ScheduleView()
}
