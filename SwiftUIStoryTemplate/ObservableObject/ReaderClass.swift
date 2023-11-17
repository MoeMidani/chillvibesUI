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
    
    @Published var caveWalls = ["wet", "dry"]
    @Published var senseTouch = "touch"
    @Published var senseSound = "sound"
    @Published var wetAndRight = true
    @Published var wetAndLeft = false
    @Published var dryAndRight = false
    @Published var dryAndLeft = false
    @Published var userFavSong = "2nd clue"
 
    
    @Published var gender = ["Male", "Female", "Non-Binary"]
    @Published var characterPronouns = ["they", "their", "theirs", "themself", "kid","them","they're"]
    
    @Published var characterName2: String = ""
    @Published var characterAge2: String = ""
    @Published var characterGender2 = 0 {
        didSet {
            updateCharacterPronouns()
        }
    }
    
    func updateCharacterPronouns() {
        switch characterGender2 {
        case 0:
            characterPronouns = ["he", "his", "his", "himself", "boy", "him", "he's"]
        case 1:
            characterPronouns = ["she", "her", "hers", "herself", "girl", "her", "she's"]
        case 2:
            characterPronouns = ["they", "their", "theirs", "themself", "kid", "them", "they're"]
        default:
            print("If gender entry was invalid, the story defaults to neutral.")
        }
    }
}
