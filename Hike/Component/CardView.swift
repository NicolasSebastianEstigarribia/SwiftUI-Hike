//
//  CardView.swift
//  Hike
//
//  Created by digital express on 28/10/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                //Header]
                
                VStack (alignment: .leading) {
                    //Title
                    HStack {
                        //Title text
                        
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors:
                                        [
                                         .customGrayLight,
                                         .customGrayMedium
                                        ],
                                        startPoint: .top,
                                        endPoint: .bottom
                                )
                        )
                        Spacer()
                        
                        //Title Button
                        Button {
                            //Action: show a sheet.
                            print("The button was pressed.")
                        } label: {
                            CustomButtonView()
                        }
                        
                    }
                    //Subtitle
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGreenMedium)
                    
                    
                }// End Header
                .padding(.horizontal, 30)
                
                //Main content
                
                
                
                
                ZStack {
                    Circle().fill(
                        LinearGradient(colors:
                                        [
                                            Color(UIColor.colorIndigoMedium),
                                            Color(UIColor.colorSalmonLight)
                                        ],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    ).frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                // Footer
            }
        }.frame(width: 320 , height: 570)
    }
}

#Preview {
    CardView()
}
