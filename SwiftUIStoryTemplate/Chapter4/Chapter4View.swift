import SwiftUI
    
    struct Chapter4View: View {
        var characterPronouns = ["they", "their", "theirs", "themself", "kid","them","they're"]
        
        @State private var buttonTapped = true
        
        var body: some View {
            VStack {
                Button("Chapter 4") {
                    print ("Enter Chapter 4")
                    self.buttonTapped =
                    true
                }
                .padding ()
                if buttonTapped{
                    //Text ("About now \(characterName) is hungry. \(characterPronouns[6]) already eaten the food  \(characterPronouns[6]) packed for the trip but it’s a long journey to the finish line. \(characterPronouns[0].capitalized) can tell \(characterPronouns[6]) almost there! But \(characterPronouns[0]) needs that extra push to continue. Around this area is where \(characterPronouns[1]) and grandpa George would stop to rest and eat a snack. There is a ton of beautiful berries and leaves grandpa would pull off and eat. \(characterPronouns[1].capitalized) favorite was the blackberry bush her grandpa and grandma planted. But which way is it?")
                        //.padding()
                }
            }
        }
        
    }

