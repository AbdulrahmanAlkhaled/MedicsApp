//
//  ProfileView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct ProfileView: View {
    let myWorkRows: Array<RowData> = [
      RowData(
        title: "My saved",
        leadingImageName: "heart",
        leadingImageBackgroundColor: .color.opacity(0.1)
      ),
      RowData(
        title: "Appointment",
        leadingImageName: "doc.plaintext",
        leadingImageBackgroundColor: .color.opacity(0.1)
      ),
      RowData(
        title: "Payment method",
        leadingImageName: "folder",
        leadingImageBackgroundColor: .color.opacity(0.1)
      ),
      RowData(
        title: "FAQs",
        leadingImageName: "ellipsis.message",
        leadingImageBackgroundColor: .color.opacity(0.1)
      ),
      RowData(
        title: "Logout",
        leadingImageName: "rectangle.portrait.and.arrow.forward",
        leadingImageBackgroundColor: .color.opacity(0.1)
      )
    ]
    var body: some View {
            VStack{
                ZStack{
                    Color.color
                      //  .ignoresSafeArea()
                        .offset(y:-100)
                    Image("Image")
                        .resizable()
                        .frame(width: 339, height: 369)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .offset(CGSize(width: 10.0, height: -255.0))
                    VStack{
                        HStack{
                            Image(systemName: "ellipsis")
                            //    .frame(maxWidth: .infinity, alignment: .trailing)
                                .offset(CGSize(width: 170.0, height: 0.0))
                                .foregroundColor(.white)
                                .padding()
                        }
                        Image("Image 1")
                            .resizable()
                            .frame(width: 125, height: 121)
                            .padding()
                        Image("Image 2")
                            .resizable()
                            .frame(width: 290, height: 71)
                        Spacer()
                        VStack {
                                ForEach(myWorkRows) { row in
                                    makeRow(row: row)
                                    if myWorkRows.last?.id != row.id {
                                        Divider()
                                            .padding(.leading)
                                    }
                                }
                        }.background(RoundedRectangle(cornerRadius: 25)
                            .foregroundStyle(.white)
                            .frame(height: 400)
                        )
                            .padding(.vertical)
                            .background(.white.opacity(0.75))
                            .cornerRadius(8)
                            
                        }
                    
                      .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                      )
                    
                      //  Spacer()
                      
                        
                    }
                    // Spacer()
                    
                }
                // Spacer()
                
            }
        
func makeRow(row: RowData) -> some View {
  HStack {
    Image(systemName: row.leadingImageName)
      .resizable()
      .foregroundStyle(.color)
     // .scaledToFit()
      .frame(width: 24, height: 24)
      .foregroundColor(row.leadingImageForegroundColor)
      .padding(8)
      .background(
        RoundedRectangle(cornerRadius: 8)
          .fill(row.leadingImageBackgroundColor)
      )
    Text(row.title)
    Spacer()
    Image(systemName: "chevron.right")
  }
  .padding(.horizontal)
}
}

#Preview {
    ProfileView()
}
struct RowData: Identifiable {
  let id = UUID()
  let title: String
  let leadingImageName: String
  let leadingImageForegroundColor: Color = .white
  let leadingImageBackgroundColor: Color
}

