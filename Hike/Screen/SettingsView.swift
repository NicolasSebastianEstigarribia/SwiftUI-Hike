//
//  SettingsView.swift
//  Hike
//
//  Created by Nicolas Estigarribia on 30/11/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - Header
            
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack (spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors Choise")
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors:
                            [
                                .customGreenLight,
                                .customGreenMedium,
                                .customGreenDark
                            ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                ).padding(.top, 8)
                
                VStack (spacing : 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                    .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app. ")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGrayMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 8)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                
            }//: HEADER
            .listRowSeparator(.hidden)
            
            
            // MARK: - Icons
            
            
            // MARK: - About
            
            Section (
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
            ) {
                // 1. Basic labeled content
                LabeledContent("Aplication", value: "Hike")
                
                // 2. Advanced labeled content
                
                LabeledContent {
                    Text("Hike")
                        .foregroundStyle(.primary)
                        .fontWeight(.heavy)
                } label: {
                    
                    HStack {
                        ZStack{
                            RoundedRectangle (cornerRadius: 8)
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.blue)
                            Image(systemName: "apps.iphone")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                            
                        }
                        
                        Text("Aplication")
                    }
                    
                    
                }
                
                
            }
            .padding(.vertical, 8)
            
        }
    }
}

#Preview {
    SettingsView()
}
