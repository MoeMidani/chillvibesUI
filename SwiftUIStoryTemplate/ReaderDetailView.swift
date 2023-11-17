//
//  ReaderDetailView.swift
//  SwiftUIStoryTemplate
//
//  Created by Jennifer Simond on 11/16/23.
//

import SwiftUI

struct ReaderDetailView: View {
    
    @EnvironmentObject var characterInfoViewModel: CharacterInfoViewModel

        var body: some View {
            ZStack {
                Color(Color("Yelloww"))
                    .ignoresSafeArea()

                VStack {
                    Text("GrandPa's Adventure")
                        .font(.system(size: 35, weight: .heavy, design: .rounded))
                        .foregroundColor(Color("LightGreen").opacity(0.9))

                    Image("OldBook")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 300, height: 300, alignment: .center)
                        .opacity(0.9)

                    Divider().padding(.bottom, 10)

                    VStack {
                        TextField("Enter your name", text: $characterInfoViewModel.characterName)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 350)

                        TextField("Enter your age", text: .init(get: { "\(characterInfoViewModel.characterAge)" }, set: {
                            characterInfoViewModel.characterAge = Int($0) ?? 12
                        }))
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 350)

                        VStack {
                            Picker("Select Gender", selection: $characterInfoViewModel.selectedGenderIndex) {
                                ForEach(0..<characterInfoViewModel.characterGenders.count) { index in
                                    Text(characterInfoViewModel.characterGenders[index])
                                        .tag(index)
                                }
                            }
                            .pickerStyle(SegmentedPickerStyle())
                        }
                        .padding()
                        .background(Color("LightGreen").opacity(0.7))
                        .frame(width: 350, height: 34)
                        .cornerRadius(8)
                        .padding(.bottom)

                        // Display pronouns based on selected gender
                        Text("Pronouns: \(characterInfoViewModel.characterPronouns.joined(separator: "/"))")
                            .font(.system(size: 16))
                            .foregroundColor(Color("Cinn"))

                        Text("Hello \(characterInfoViewModel.characterName), it's nice to meet ya! Ok, Time to start the adventure!")
                            .font(.system(size: 26, weight: .heavy, design: .rounded))
                            .foregroundColor(Color("Cinn"))
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                }
                .padding(.bottom, 10)
            }
            .onAppear {
                // Load character info when the view appears
                let newCharacterInfoViewModel = CharacterInfoViewModel()
                characterInfoViewModel.characterName = newCharacterInfoViewModel.characterName
                characterInfoViewModel.characterAge = newCharacterInfoViewModel.characterAge
                characterInfoViewModel.selectedGenderIndex = newCharacterInfoViewModel.selectedGenderIndex
                characterInfoViewModel.characterPronouns = newCharacterInfoViewModel.characterPronouns
            }
        }
    }

    struct ReaderDetailView_Previews: PreviewProvider {
        static var previews: some View {
            ReaderDetailView()
                .environmentObject(CharacterInfoViewModel())
        }
    }
