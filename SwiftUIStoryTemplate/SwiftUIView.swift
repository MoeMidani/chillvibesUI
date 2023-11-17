//
//  SwiftUIView.swift
//  SwiftUIStoryTemplate
//
//  Created by Elancio Zeigler on 11/16/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Color.black
            Image("cave4").resizable().scaledToFit()
            ScrollView{
                VStack{
                    Spacer(minLength: 630)
                    
                    
                    Text("It is extremely hollow inside and the cave is pitch black. He discovers his flashlight has broken, and he would have to rely on his sense of touch and sound  to get to the clue in the cave tunnels. The cave is full of challenges and surprises and it’s up to him to find the best route to get to his grandpa’s clue.").multilineTextAlignment(.trailing).bold().font(.custom("American Typewriter", size: 19))
                        .foregroundStyle(.white)
                }
                
                
            }
        }.ignoresSafeArea();
    }
}

#Preview {
    SwiftUIView()
}
/*import Foundation
 struct CaveFeels{}
 let caveWalls = ["wet", "dry"]
 let w = wetAndRight || wetAndLeft
 let d = dryAndRight || dryAndLeft
 let senseTouch = "touch"
 let senseSound = "sound"
 let wetAndRight = true
 let wetAndLeft = false
 let dryAndRight = false
 let dryAndLeft = false
 let userFavSong = "2nd clue"
 var cN = characterName
 var cP = characterPronouns



 func chapterTwo() {
    
     let charactersDate = Date()

     
     print(charactersDate)
     
     print( "\n\(characterName) makes \(characterPronouns[1]) way to the entrance of Sleepy Cave. It is extremely hollow inside and the cave is pitch black. \(characterPronouns[0]) discovers \(characterPronouns[1]) flashlight has broken, and \(characterPronouns[0]) would have to rely on \(characterPronouns[1]) sense of \(senseTouch) and \(senseSound)  to get to the \(userFavSong) in the cave tunnels. The cave is full of challenges and surprises and it’s up to \(characterPronouns[5]) to find the best route to get to his grandpa’s clue.")
     
     print("\n\(characterName) takes \(characterPronouns[1]) first step inside Sleepy Cave and \(characterPronouns[0]) is shocked  to notice that one side of the caves’ wall is \(caveWalls[0]), while the other is \(caveWalls[1]) and \(characterPronouns[0]) remembers that one of the cave tunnel routes leads directly to the Shark Tooth Creek. \(characterPronouns[0].capitalized) also remembers that the excess water from the creek creates a condensation that sticks to the right side of a cave tunnel. \(characterPronouns[0].capitalized) knows all of these things because it was \(characterPronouns[1]) grandpa’s favorite trail, so it must be the trail that the \(userFavSong) is on. \(characterPronouns[0].capitalized) continues to walk forward while keeping \(characterPronouns[1]) hand on the \(caveWalls[0]), right side of the cave until he approaches a 2-way split in the tunnel, and is startled by the sound of person screeching. The sound causes him to stumble to the ground, release his hand from the caves' wall and place it on the ground where he is almost bitten by a swarm of fire ants. This causes him to remember the cave song his grandpa taught him as a toddler, “Touch the walls, and not the ground, but if no walls, use your sound”. \(characterPronouns[0].capitalized) stands up, ready's himself and chooses which path and which wall trail he should follow ")
     
     
     
     print("\nEnter '1' to hold \(caveWalls[0]) wall with left hand. \nEnter '2' to hold \(caveWalls[0]) wall with right hand. ")
     
     var storyDecision2 = ""
     if let decision2 = readLine()
     {
         storyDecision2 = decision2
         switch storyDecision2{
         case "1" :
             print("\n\(characterName) chooses to walk down the cave with \(characterPronouns[1]) left hand on the side of the caves wall and the other in front of him so that he does not fall again to avoid the fire ants. \(characterPronouns[0].capitalized) walks for what seems like forever to \(characterPronouns[5]) until \(characterPronouns[0]) hears the sound of critter animals and wolves howling in the night. \(characterPronouns[0].capitalized) has made it to the entrance of Sleepy Cave again!!! \nIt is almost midnight, \(characterPronouns[0]) is hungry and dehydrated, and \(characterPronouns[0]) hears the wolves' footsteps and growls getting louder.")
         case"2":
             print ("\n\(cN) chooses to walk up the cave with one hand on the \(caveWalls[0]), right side of the caves’ wall and the other in front of \(cP[5]) so that \(cP[0]) does not fall again to avoid the ants. \(cP[0]) walks for about 7 minutes, until \(cP[0]) hears the sound of a record scratching and a person screeching repeatedly. \(cP[0]) starts to notice that the person’s voice sounds familiar and realizes that it was one of \(cP[2]) grandpa’s favorite songs playing on a broken record player which caused the song to skip. \(cN) was terrified of the sound when \(cP[0]) first entered the cave, but now \(cP[0]) feels a moment of relief and \(cP[0]) sees a glimmer of light that starts to fill the whole cave up. As \(cP[0]) starts to walk toward the light source, \(cP[0]) approaches a cave wall with some writing on it. It’s in \(cP[1]) grandpa’s hand writing! The message tells \(cN) to solve the math equation on the wall in order to get the combination for a nearby safe with a nice prize in it. Filled with excitement, \(cN) reads the equation and gets to work!" )
             
         default:
             print("neutral")
             
         }; if storyDecision2 == "1"{
             print("\n\n\(cN) made the wrong choice, so \(cP[0]) entered back into the cave and began the trail again until he approached the 2-way split in the tunnel again and was presented a choice...")
         
            
             print("\nEnter '1' to hold wet wall with RIGHT hand.\nEnter '2' to hold wall with LEFT hand. ")
             var storyDecision3 = ""
             if let decision3 = readLine()
             {
                 storyDecision3 = decision3
                 switch storyDecision3{
                 case "1" :
                     print("\n\(cP[0].capitalized) walks for about 15 minutes, until \(cP[0]) hears the sound of a record scratching and a person screeching repeatedly. \(cP[0].capitalized) starts to notice that the person’s voice sounds familiar and realizes that it was one of \(cP[2]) grandpa’s favorite songs playing on a broken record player which caused the song to skip. \(cN) was terrified of the sound when \(cP[0]) first entered the cave, but now \(cP[0]) feels a moment of relief and \(cP[0]) sees a glimmer of light that starts to fill the whole cave up. As \(cP[0]) starts to walk toward the light source, \(cP[0]) approaches a cave wall with some writing on it. It’s in \(cP[1]) grandpa’s hand writing! The message tells \(cN) to solve the math equation on the wall in order to get the combination for a nearby safe with a nice prize in it. Filled with excitement, \(cN) reads the equation and gets to work!")
                 case "2":
                     print("He walked...")
                 default:
                     print("There is only one path")
                 };
 //                while storyDecision3 == "2"{
 //                    print("And he walked..")
                 if storyDecision3 == "2"{
                     for i in 0 ... 80 {
                         print("\nAnd he walked..")
                         Thread.sleep(forTimeInterval: 0.1)
                     }
                         
                         print("\n\(cP[0].capitalized) walks for about 3 hours, until \(cP[0]) hears the sound of a record scratching and a person screeching repeatedly. \(cP[0].capitalized) starts to notice that the person’s voice sounds familiar and realizes that it was one of \(cP[2]) grandpa’s favorite songs playing on a broken record player which caused the song to skip. \(cN) was terrified of the sound when \(cP[0]) first entered the cave, but now \(cP[0]) feels a moment of relief and \(cP[0]) sees a glimmer of light that starts to fill the whole cave up. As \(cP[0]) starts to walk toward the light source, \(cP[0]) approaches a cave wall with some writing on it. It’s in \(cP[1]) grandpa’s hand writing! The message tells \(cN) to solve the math equation on the wall in order to get the combination for a nearby safe with a nice prize in it. Filled with excitement, \(cN) reads the equation and gets to work!")
                     
                 }
             }
         }
         let mathEquation1 = Int.random(in: 1...999)
         let mathEquation2 = Int.random(in: 1...999)
         let safeCombination = mathEquation1 + mathEquation2
         var safeCombo1 = safeCombination
         let answer: String? = nil
      
         print ("\nSolve this line to get a prize \(mathEquation1) + \(mathEquation2) = \(answer ?? "")")
         if answer == nil{
             print("\n\(cP[0]) haves to solve this or \(cP[0]) can't get the the safe combo." )
             
         };   var safeCombo2 = readLine()
         while safeCombo2 == "" {
             print("\n\(cP[0].capitalized) has to solve this or \(cP[0]) can't get the the safe combo.")
         }
         print("Great!!! \n\(cP[0].capitalized) input the combination to the safe, opened the door and grabbed another one of grandpa's clues. It was an old compass pointing west, as if it were telling \(cP[5]) to travel to the forest. \(cN) grabbed all of \(cP[2]) items and tools and proceeded to exit the cave, towards Fantasy Forest.")
        /* if let wall = readLiene(){
             let caveWall = wall.lowercased()
             switch caveWall {
             case "1" :
                 caveFeels = ["wet"]
             case "2":
                 caveFeels = ["dry"]
             default:
                 print("which wall should I touch")*/
             
             
         
         
     }
 }
*/
