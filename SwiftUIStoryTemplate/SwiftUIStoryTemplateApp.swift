//
//  SwiftUIStoryTemplateApp.swift
//  SwiftUIStoryTemplate
//
//  Created by Zoe Cutler on 11/7/23.
//

import SwiftUI

@main
struct SwiftUIStoryTemplateApp: App {
    
    @StateObject var readerInfo = ReaderInfo()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(readerInfo)
        }
    }
}
