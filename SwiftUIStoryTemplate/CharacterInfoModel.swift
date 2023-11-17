//
//  CharacterInfoModel.swift
//  SwiftUIStoryTemplate
//
//  Created by Jennifer Simond on 11/16/23.
//

import Foundation



import Foundation

class CharacterInfoViewModel: ObservableObject {
    @Published var characterName: String {
        didSet {
            saveCharacterInfo()
        }
    }
    @Published var characterAge: Int {
        didSet {
            saveCharacterInfo()
        }
    }
    @Published var selectedGenderIndex: Int {
        didSet {
            saveCharacterInfo()
            setPronouns()
        }
    }
    @Published var characterPronouns: [String] {
        didSet {
            saveCharacterInfo()
        }
    }

    let characterGenders = ["Male", "Female", "Non-Binary"]

    init() {
        self.characterName = UserDefaults.standard.string(forKey: "characterName") ?? ""
        self.characterAge = UserDefaults.standard.integer(forKey: "characterAge")
        self.selectedGenderIndex = UserDefaults.standard.integer(forKey: "selectedGenderIndex")
        self.characterPronouns = UserDefaults.standard.stringArray(forKey: "characterPronouns") ?? []
        setPronouns()
    }

    private func saveCharacterInfo() {
        UserDefaults.standard.set(characterName, forKey: "characterName")
        UserDefaults.standard.set(characterAge, forKey: "characterAge")
        UserDefaults.standard.set(selectedGenderIndex, forKey: "selectedGenderIndex")
        UserDefaults.standard.set(characterPronouns, forKey: "characterPronouns")
    }

    private func setPronouns() {
        switch characterGenders[selectedGenderIndex] {
        case "Male":
            characterPronouns = ["he", "his", "his", "himself", "boy", "him", "he's"]
        case "Female":
            characterPronouns = ["she", "her", "hers", "herself", "girl", "her", "she's"]
        case "Non-Binary":
            characterPronouns = ["they", "their", "theirs", "themself", "kid", "them", "they're"]
        default:
            characterPronouns = []
        }
    }
}
