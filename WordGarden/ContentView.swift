//
//  ContentView.swift
//  WordGarden
//
//  Created by VILLALOBOS, STEPHANIE on 1/12/26.
//

import SwiftUI

struct ContentView: View {
    @State private var wordsGuessed = 0
    @State private var wordsMissed = 0
    @State private var wordsToGuess = ["SWIFT", "DOG", "CAT"] //ALL CAPS
    @State private var gameStatusMessage = "How Many Guesses to Uncover the Hidden Word?"
    @State private var currentWord = 0
    @State private var guessedLetter = ""
    
    var body: some View {
        VStack {
            HStack{
                VStack(alignment: .leading){
                    Text("Words Guessed: \(wordsGuessed)")
                    Text("Words Missed: \(wordsMissed)")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Words to Guess: \(wordsToGuess.count - (wordsGuessed + wordsMissed))")
                    Text("Words in Game: \(wordsToGuess.count)")
                }
            }
            Spacer()
            Text(gameStatusMessage)
                .font(.title)
                .multilineTextAlignment(.center)
            
            //TODO: Switch to wordsToGuess[currentWord]
            Text("_ _ _ _ _")
                .font(.title)
            
            
            
            HStack{
                TextField("", text: $guessedLetter)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 30)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.gray, lineWidth: 2)
                    }
                
                Button("Guess a Letter:") {
                    //TODO: Guess a Letter button action here
                }
                .buttonStyle(.bordered)
                .tint(.mint)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
