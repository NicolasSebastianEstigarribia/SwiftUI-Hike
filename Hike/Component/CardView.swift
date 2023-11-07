//
//  CardView.swift
//  Hike
//
//  Created by Nicolas Estigarribia on 28/10/2023.
//

import SwiftUI

struct CardView: View {
    
    //Variables
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    //Funciones
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                //Header
                
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
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 3), value: imageNumber)
                }
                
                // Footer
                
                
                Button {
                    //Generar imagen random
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(.colorGreenLight)
                }
                .buttonStyle(GradientButtonStyle())
                
            }
        }.frame(width: 320 , height: 570)
    }
}

#Preview {
    CardView()
}
