//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    
    
    let stories = [
        Story("Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
              "I'll hop in. Thanks for the help!", 2,
              "Better ask him if he's a murderer first.", 1
                ),
                Story(
                    "He nods slowly, unfazed by the question.",
                    "At least he's honest. I'll climb in.", 2,
                    "Wait, I know how to change a tire.", 3
                ),
                Story(
                    "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                    "I love Elton John! Hand him the cassette tape.", 5,
                    "It's him or me! You take the knife and stab him.", 4
                ),
                Story(
                    "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                    "The", 0,
                    "End", 0
                ),
                Story(
                    "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                    "The", 0,
                    "End", 0
                ),
                Story(
                    "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
                    "The", 0,
                    "End", 0
                )

    ]
    
    var currentStoryNumber = 0
    
    func getCurrentStory() -> Story {
        return stories[currentStoryNumber]
    }
    
    mutating func getNextStory(_ currentStory: Story, _ userChoice: String) -> Story {
        if (userChoice == currentStory.choice1) {
            currentStoryNumber = currentStory.choice1Destination
            return stories[currentStory.choice1Destination]
        }
        currentStoryNumber = currentStory.choice2Destination
        return stories[currentStory.choice2Destination]
    }
}


