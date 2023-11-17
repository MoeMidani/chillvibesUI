import SwiftUI

struct Chapter1View: View {
    
    //@ObservedObject var characterInfoViewModel: CharacterInfoViewModel
    
    @EnvironmentObject var characterInfoViewModel: CharacterInfoViewModel
    
    
    var body: some View {
        
        
        
        
        
        
        VStack {
         
            Text("Hey \(characterInfoViewModel.characterName) how \(characterInfoViewModel.characterPronouns[3])")
        }
    }
}

struct Chapter1View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1View()
            .environmentObject(CharacterInfoViewModel())
    }
}
