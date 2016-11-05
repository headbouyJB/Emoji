//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jesse Bryce on 5/11/16.
//  Copyright © 2016 Jesse Bryce. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableFull: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableFull.dataSource = self
        tableFull.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        print(emoji.stringEmoji)
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.definition = "Happy Face"
        emoji1.birthYear = 2014
        emoji1.category = "Smiley Face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.definition = "Poo Face"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley Face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐳"
        emoji3.definition = "Whale Spout"
        emoji3.birthYear = 2017
        emoji3.category = "Animals"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😈"
        emoji4.definition = "Devil Face"
        emoji4.birthYear = 2013
        emoji4.category = "Evil Emoji"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐼"
        emoji5.definition = "Panda Face"
        emoji5.birthYear = 2015
        emoji5.category = "Animals"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(sender)
        let desVC = segue.destination as! definitionViewController
        desVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

