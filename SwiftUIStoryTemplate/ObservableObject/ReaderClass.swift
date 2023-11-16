//
//  ReaderClass.swift
//  SwiftUIStoryTemplate
//
//  Created by Jennifer Simond on 11/15/23.
//

import Foundation
import SwiftUI

/* ObservableObjects subscribe to a view hieratchy --when you attach an enviornmental object, it is only accessible to the view you attach it to (the parent), and all of its subviews.
 resources:  https://youtu.be/jD6c9y8CFGQ?si=1oRuuaFTLQ1jYqHZ , https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-environmentobject-to-share-data-between-views*/

class ReaderInfo: ObservableObject {
    
    @Published var gender = ["Male", "Female", "Non-Binary"]
        
        @Published var characterName2: String = ""
        @Published var characterAge2: String = ""
    @Published var characherGender2 = 0
}


//struct ReaderDemographics: View {
//    
//    @Binding var characterName: String
//    @Binding var characterAge: String
//    @Binding var characterGender: String
//    
//    
//    var body: some View {
//        Text("")
//    }
//}


