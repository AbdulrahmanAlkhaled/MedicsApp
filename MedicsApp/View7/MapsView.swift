//
//  MapsView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//
import MapKit
import SwiftUI

struct MapsView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
                                                   
    @State var searchText: String = ""
var body: some View {
    VStack{
        HStack{
            Image(systemName: "chevron.left")
                Spacer()
            Text("Ambulance")
                .bold()
            Spacer()
        }.padding()
        ZStack{
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack{
                HStack{
                    TextField("Search location, zip code... ", text: $searchText)
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
                Spacer()
            }.padding(.vertical)
        }
    }
    }
}

#Preview {
    MapsView()
}
