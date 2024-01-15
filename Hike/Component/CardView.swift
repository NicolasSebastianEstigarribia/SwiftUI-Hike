//
//  CardView.swift
//  Hike
//
//  Created by Nicolas Estigarribia on 28/10/2023.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - VARIABLES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCIONES
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
                // MARK: - HEADER
                
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
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet, content: {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                            
                        })
                        
                    }
                    //Subtitle
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGreenMedium)
                    
                    
                }// End Header
                .padding(.horizontal, 30)
                
                // MARK: - BODY
                
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 3), value: imageNumber)
                }
                
                // MARK: - FOOTER
                
                
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
