//
//  definitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jesse Bryce on 5/11/16.
//  Copyright © 2016 Jesse Bryce. All rights reserved.
//

import UIKit

class definitionViewController: UIViewController {
    
    var emoji = Emoji()

    @IBOutlet weak var emojiDefinition: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var age: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(emoji)
        emojiLabel.text = emoji.stringEmoji
        category.text = emoji.category
        age.text = "Origination Date: \(emoji.birthYear)"
        emojiDefinition.text = emoji.definition

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
