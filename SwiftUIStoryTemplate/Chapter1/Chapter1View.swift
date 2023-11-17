import SwiftUI

import SwiftUI

struct Chapter1View: View {
    @EnvironmentObject var characterInfoViewModel: CharacterInfoViewModel
    @State private var decisionResult: String? = nil
    @State private var currentImage: String = "Chap1Pic"
    
    var body: some View {
        VStack {
            Image(currentImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 400)
                .padding(.top)
            
            VStack {
                HStack {
                    ScrollView {
                        Text("\nOnce upon a time there was a little \(characterInfoViewModel.characterPronouns[4]) named \(characterInfoViewModel.characterName). \(characterInfoViewModel.characterPronouns[0].capitalized) lived with \(characterInfoViewModel.characterPronouns[1]) grandpa George and every weekend they would take an adventure through the forest. \(characterInfoViewModel.characterName) loved to find things and explore the forest with grandpa George. \(characterInfoViewModel.characterName)'s favorite thing to do was to look for clues and find different animals. On every adventure \(characterInfoViewModel.characterName)'s grandpa taught \(characterInfoViewModel.characterPronouns[5]) how to use \(characterInfoViewModel.characterPronouns[1]) eyes, ears, nose and hands to make new discoveries. \(characterInfoViewModel.characterName) would soon be a year older, and grandpa George wants to test \(characterInfoViewModel.characterPronouns[1]) knowledge, so he put together a plan. Grandpa George tells \(characterInfoViewModel.characterPronouns[5]) that if \(characterInfoViewModel.characterPronouns[0]) can get through the forest by \(characterInfoViewModel.characterPronouns[3]), \(characterInfoViewModel.characterPronouns[0]) will receive a prize. \(characterInfoViewModel.characterName) needs to use all \(characterInfoViewModel.characterPronouns[1]) senses to get through the forest alone. \(characterInfoViewModel.characterName) is sure \(characterInfoViewModel.characterPronouns[0]) can do it, but \(characterInfoViewModel.characterPronouns[6]) still a little afraid.\(characterInfoViewModel.characterPronouns[0].capitalized) needs your help! With \(characterInfoViewModel.characterPronouns[1]) tools on their back you you by there side, \(characterInfoViewModel.characterPronouns[6]) sure to pass grandpa's test.")
                            .multilineTextAlignment(.center)
                        
                        // Display the decision buttons
                        if decisionResult == nil {
                            Button(action: {
                                handleDecision("1", newImage: "rrr")
                            }) {
                                Text("Go down the river path")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(8)
                            }
                            .padding(.vertical, 5)
                            
                            Button(action: {
                                handleDecision("2", newImage: "oldShack2")
                            }) {
                                Text("Explore the abandoned shack")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(8)
                            }
                            .padding(.vertical, 5)
                        } else {
                            // Display the result based on the user's decision
                            Text(decisionResult ?? "")
                                .padding()
                        }
                    }
                }
            }
            .padding(.horizontal, 15)
        }
        .background(Color("LightGreen"))
    }
    
    // Function to handle the user's decision
    private func handleDecision(_ decision: String, newImage: String) {
        switch decision {
        case "1":
            decisionResult = """
            \(characterInfoViewModel.characterName) decided to follow the river path and soon came across fresh animal tracks on the muddy riverbank. \(characterInfoViewModel.characterName) couldn't help but wonder what kind of animal the tracks belonged to and where they would lead, so \(characterInfoViewModel.characterPronouns[0]) decided to follow them. The tracks took \(characterInfoViewModel.characterPronouns[5]) deeper into the forest, winding through tall grass and over rocks.  As \(characterInfoViewModel.characterName) ventured further into the woods, \(characterInfoViewModel.characterPronouns[0]) came upon a curious raccoon with a mischievous glint in its eyes. The raccoon chattered inquisitively at \(characterInfoViewModel.characterName) and tugged at a piece of paper stuck in a thorny bush. It was a map that led to a big tree with a beehive and some honey pots. \(characterInfoViewModel.characterName) realized the raccoon was on a quest for the honey and decided to help the raccoon get there. \(characterInfoViewModel.characterPronouns[0].capitalized) carefully followed the map and when they reached the tree, \(characterInfoViewModel.characterName) and the raccoon each took a honey pot. While putting the honey pot in \(characterInfoViewModel.characterPronouns[1]) backpack, \(characterInfoViewModel.characterName) noticed something carved into the trunk of the great oak tree...it was a picture of Sleepy Cave. \(characterInfoViewModel.characterPronouns[0]) had explored the cave before with grandpa George, so \(characterInfoViewModel.characterPronouns[0]) knew just where to go!
            """
            currentImage = newImage
            // You can update the characterInfoViewModel here if needed
            // characterInfoViewModel.updateWithDecision1()
            // ...
            
        case "2":
            decisionResult = """
            \(characterInfoViewModel.characterName)'s curiosity got the better of \(characterInfoViewModel.characterPronouns[5]), and \(characterInfoViewModel.characterPronouns[0]) decided to explore the mysterious abandoned shack. The old building was hidden beneath the thick canopy; its windows were broken, and its wooden planks had been weathered by time, but \(characterInfoViewModel.characterPronouns[0]) decided to go in to look around. Once inside, \(characterInfoViewModel.characterPronouns[0]) went into the kitchen, where \(characterInfoViewModel.characterPronouns[0]) found a map sitting on the table. At the center of the map was a giant tree marked with an X. \(characterInfoViewModel.characterName) was just about to put the map in \(characterInfoViewModel.characterPronouns[1]) backpack when two black bats flew from one of the cupboards. Startled, \(characterInfoViewModel.characterName) ran out of the house as fast as \(characterInfoViewModel.characterPronouns[0]) could. \(characterInfoViewModel.characterPronouns[0].capitalized) ran for what seemed like forever before stopping at the foot a large oak tree. Without realizing it, \(characterInfoViewModel.characterPronouns[0]) had found \(characterInfoViewModel.characterPronouns[1]) way to the giant tree from the map! \(characterInfoViewModel.characterName) studied the tree and soon discovered a piece of paper tied to one of its branches...it was a drawing of Sleepy Cave. \(characterInfoViewModel.characterName) had explored the cave before with grandpa George, so \(characterInfoViewModel.characterPronouns[0]) knew just where to go!
            """
            currentImage = newImage
            // You can update the character
        default:
            Text("Hey")
        }
    }
}

struct Chapter1View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1View()
            .environmentObject(CharacterInfoViewModel())
    }
}
