//
//  ReaderForm.swift
//  SwiftUIStoryTemplate
//
//  Created by Jennifer Simond on 11/15/23.
//

import SwiftUI

struct ReaderForm: View {
    
    @EnvironmentObject var readerInfo: ReaderInfo

    var body: some View {
        
        ZStack {
            
            Color(Color("OffWhite"))
                .ignoresSafeArea()
            
            VStack {
                
                Text("GrandPa's Adventure")
                    .font(.system(size: 35, weight: .heavy, design: .rounded))
                    .foregroundColor(Color("LightGreen"))
                
                Image("OldBook")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .opacity(0.9)
                    .frame(width: 900, height: 340)
                    .padding(.bottom, 15)
                    .padding(.top, -6)
                
                VStack {
                    TextField("Enter Your Name", text: $readerInfo.characterName2)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 350)
                    
                    TextField("Enter Your Age", text: $readerInfo.characterAge2)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 350)
                    
                    Picker(selection: $readerInfo.characterGender2, label: Text("Select Your Gender")) {
                        ForEach(0..<readerInfo.gender.count, id: \.self) {
                            Text(readerInfo.gender[$0])
                                .foregroundColor(Color("LightGreen"))
                        }
                    }
                }
            }
        }
    }
}
    

#Preview {
    ReaderForm()
        .environmentObject(ReaderInfo())
}
