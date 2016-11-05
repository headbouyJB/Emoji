//
//  definitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jesse Bryce on 5/11/16.
//  Copyright © 2016 Jesse Bryce. All rights reserved.
//

import UIKit

class definitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"

    @IBOutlet weak var emojiDefinition: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(emoji)
        emojiLabel.text = emoji
        if emoji == "🐳" {
        emojiDefinition.text = "A fat whale"
        }
        if emoji == "💩" {
            emojiDefinition.text = "A big poo"
        }
        if emoji == "🐼" {
            emojiDefinition.text = "A panda"
        }
        if emoji == "😱" {
            emojiDefinition.text = "A scared face"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
