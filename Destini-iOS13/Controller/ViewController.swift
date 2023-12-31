//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStory(storyBrain.getCurrentStory())
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        let currentStory = storyBrain.getCurrentStory()
        updateStory(storyBrain.getNextStory(currentStory, userChoice))
    }
    
    func updateStory(_ story: Story) {
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }
}

