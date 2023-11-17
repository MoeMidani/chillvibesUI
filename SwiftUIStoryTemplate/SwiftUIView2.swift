//
//  SwiftUIView2.swift
//  SwiftUIStoryTemplate
//
//  Created by Elancio Zeigler on 11/17/23.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        ZStack{
            Color.black
            Image("cave1").resizable().scaledToFit()
            ScrollView{
                VStack{
                    Spacer(minLength: 600)
                    Text("He takes his first step inside Sleepy Cave and he is shocked  to notice that one side of the caves’ wall is wet, while the other is dry and he remembers that one of the cave tunnel routes leads directly to the Shark Tooth Creek. He also remembers that the excess water from the creek creates a condensation that sticks to the right side of a cave tunnel. He knows all of these things because it was his grandpa’s favorite trail, so it must be the trail that the clue is on. He continues to walk forward while keeping his hand on the wet, right side of the cave until he approaches a 2-way split in the tunnel, and is startled by the sound of person screeching. The sound causes him to stumble to the ground, release his hand from the caves' wall and place it on the ground where he is almost bitten by a swarm of fire ants. This causes him to remember the cave song his grandpa taught him as a toddler, “Touch the walls, and not the ground, but if no walls, use your sound”. He stands up, ready's himself and chooses which path and which wall trail he should follow.").multilineTextAlignment(.trailing).bold().font(.custom("American Typewriter", size: 19))
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    SwiftUIView2()
}
