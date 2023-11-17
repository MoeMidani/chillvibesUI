

import SwiftUI
    
struct Chapter4View: View {
    
    
    //var characterPronouns = ["they", "their", "theirs", "themself", "kid","them","they're"]
    //switch characterGender {
    
    //var characterPronouns = ["they", "their", "theirs", "themself", "kid","them","they're"]
    //var characterGender
    // var characterGender = gender.lowercased()
    //var characterPronouns [0 = subject pronoun: he, she they,
    // 1 = object pronoun: his, her, their,
    //2 = is a possessive pronoun: his, hers, theirs,
    //3 = added for himself, hersolf, themself,
    //4 = added for direct gender reference: boy, girl, kid,
    //5 = added for him, her, them,
    //6 = added for hes, shes, theyre]
    
    //case "b":
    //characterPronouns = ["he", "his", "his", "himself","boy","him","he's"]
    //case "g":
    // characterPronouns = ["she", "her", "hers", "herself","girl","her","she's"]
    // case "n":
    //  characterPronouns = ["they", "their", "theirs", "themself", "kid","them","they're"]
    
    
    @State private var buttonTapped = false
    @State private var buttonTapped2 = false
    
    var body: some View {
        VStack {
            Button("Chapter 4") {
                print ("Enter Chapter 4")
                self.buttonTapped =
                true
            }
            .padding ()
            if buttonTapped == true {
                VStack {
                    Image ("forestPath3")
                        .resizable()
                        .scaledToFit()
                    
                    Text ("\t About now Jordan is hungry. She’s already eaten the food she packed for the trip but it’s a long journey to the finish line. She can tell she’s almost there! But she needs that extra push to continue. Around this area is where her and grandpa George would stop to rest and eat a snack. There is a ton of beautiful berries and leaves grandpa would pull off and eat. Her favorite was the blackberry bush her grandpa and grandma planted. But which way is it?")
                        .padding(.trailing)
                        .padding(.leading)
                    
                    //  struct SheetView: View {
                    @State var isPresented = false
                    
                    Button ( "Enter Left or Right") {
                        print ("Left or Right")
                        
                        
                        self.buttonTapped2 == true
                        ($buttonTapped2)
                    }
                }
            }
        }
        
    }
}
    
#Preview {
        Chapter4View()
    }

