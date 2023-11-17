import SwiftUI

enum Pathchoice: String {
    case left
    case right
    case straight
}


struct Location {
    var name: String
    var description: String
}


var characterName = "moe"
var characterPronouns = ["they", "their", "theirs", "themself", "kid","them","they're"]

struct Chapter3View: View {
    
    
    
    
    var isLost = true
    var chosenPath: Pathchoice = .left
    @State var displayedText = ""
    let characterLocation = Location(name: "Mysterious Forest", description: "surrounded by the enchanting sounds of nature")
    @State var choseRightPath = false
    @State var isWrong = false
    @State private var isHStackVisible = false
    @State private var isChapter4ButtonVisible = false


    
    
    var body: some View {
        GeometryReader{geo in
            ZStack{
                Image("threePaths")
                    .resizable()
                    .ignoresSafeArea()
                
                if !choseRightPath {
                    
                    
                    VStack{
                        ZStack{
                            Image("thoughtCloud2")
                                .resizable()
                                .frame(width: 340, height: 230)
                            
                            
                            Text(displayedText)
                                .frame(width: 240, height: 230)
                                .multilineTextAlignment(.center)
                            
                        }
                        Spacer()
                        Spacer()
                        
                        
                        HStack{
                            Spacer()
                            ZStack{
                                Button(action: {
                                    choseRightPath = true
                                    
                                }, label: {
                                    Spacer()
                                    
                                    Rectangle()
                                        .fill(.white)
                                        .cornerRadius(25)
                                        .frame(width: 90, height: 80)
                                        .padding(.leading)
                                    Spacer()
                                    
                                })
                                Text("Left Path")
                                    .frame(width: 80, height: 50)
                                    .padding([.leading], 15)
                                    .multilineTextAlignment(.center)
                                    .bold()
                            }
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            
                            ZStack{
                                Button(action: {isWrong.toggle()},
                                       label: {
                                    
                                    Rectangle()
                                        .fill(.white)
                                        .cornerRadius(25)
                                        .frame(width: 90, height: 80)
                                    Spacer()
                                    
                                })
                                Text("Straight Path")
                                    .frame(width: 80, height: 50)
                                    .padding([.trailing], 85)
                                    .multilineTextAlignment(.center)
                                    .bold()
                                
                            }
                        }
                        .opacity(isHStackVisible ? 1.0 : 0.0)
                        .animation(
                            .easeInOut(duration: 8)
                            .delay(1))
                        
                        Spacer()
                        HStack{
                            Spacer()
                            ZStack{
                                Button(action:  {isWrong.toggle()} , label: {
                                    
                                    Rectangle()
                                        .fill(.white)
                                        .cornerRadius(25)
                                        .frame(width: 90, height: 80)
                                        .padding(.trailing)
                                    
                                })
                                Text("Right Path")
                                    .frame(width: 80, height: 50)
                                    .padding([.trailing], 13)
                                    .multilineTextAlignment(.center)
                                    .bold()
                                
                                
                            }
                        }
                        .opacity(isHStackVisible ? 1.0 : 0.0)
                        .animation(
                            .easeInOut(duration: 8)
                            .delay(1))
                        
                        
                  
                    }
                    .alert(isPresented: $isWrong, content: {
                        Alert(title: Text("Wrong Path"))
                        
                    })
                    
                    
                    .onAppear {
                        printSlow(phrase: " \(characterPronouns[0].capitalized) found \(characterPronouns[3]) deep in the \(characterLocation.name), \(characterLocation.description).")
                        
                        
                        
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
                            printSlow(phrase: "\(characterName) must choose the right path to get out of the \(characterLocation.name). \n There are three paths ahead: 'Left', 'Right', and 'Straight'.")
                           
                            withAnimation {isHStackVisible = true}
                        }
                       

                        
                        
                        
                    }
                }
                else {
                    VStack{
                        
                        ZStack{
                            Image("thoughtCloud2")
                                .resizable()
                                .frame(width: 340, height: 230)
                            
                            
                            Text(displayedText)
                                .frame(width: 250, height: 150)
                                .multilineTextAlignment(.center)
                            
                            
                        }
                        
                        .onAppear {
                            printSlow(phrase:" \(characterName) followed the sound of the stream and successfully found \(characterPronouns[2]) way out of the \(characterLocation.name).")
                            
                            
//                            if isChapter4ButtonVisible {
//                                NavigationLink(destination: Chapter4View(), isActive: $isChapter4ButtonVisible) {
//                                    Circle()
//                                        .frame(width: 90, height: 80)
//                                        .background(Color.white)
//                                        .cornerRadius(25)
//                                }
//                            //    .hidden()
//                            }
                            

                            let finalText = """
                                       \(characterName) emerged from the \(characterLocation.name),
                                       enriched by nature's symphony.
                                       The end of \(characterPronouns[1]) adventure marked a deep appreciation
                                       for the world around \(characterPronouns[5]).
                                       """
                            
                            
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
                                self.printSlow(phrase: finalText)

                            }
                            withAnimation {isChapter4ButtonVisible = true}

                            print(isChapter4ButtonVisible)

                            
                        }
                        Spacer()

                    }
                }
            }
            
        }
    }
        
        
        
        
        func printSlow(phrase: String, speed: TimeInterval = 0.05) {
            displayedText.removeAll()
            for (index, character) in phrase.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + speed * Double(index)) {
                    
                    displayedText.append(character)
                }
            }
        }
    }
    












      


#Preview {
    Chapter3View()
}






