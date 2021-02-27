//
//  CardModel.swift
//  MatchApp
//
//  Created by Валерий Эль-Хатиб on 09.08.2020.
//  Copyright © 2020 EVM Corporation. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an empty array
        var generatedCards = [Card]()
        
        
        // Randomly generate 8 pairs of cards
        for _ in 1...8 {
            
            // Generate a random number
            let randomNuber = Int.random(in: 1...13)
            
            // Create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            
            // Set their image names
            cardOne.imageName = "card\(randomNuber)"
            cardTwo.imageName = "card\(randomNuber)"
        
            // Add them to the array
            generatedCards += [cardOne, cardTwo]
            
            print(randomNuber)
        }
        
        // Randomize the cards within the array
        generatedCards.shuffle()
        
        // Return the array
        return generatedCards
    }
    
}
