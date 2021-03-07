//
//  ViewController.swift
//  SimpleApp
//
//  Created by SurbineHuang on 7/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    
    let purple = UIColor(red: 160/255, green: 32/255, blue: 240/255, alpha: 1)
    let indigo = UIColor(red: 25/255, green: 25/255, blue: 112/255, alpha: 1)
    let blue = UIColor(red: 0/255, green: 191/255, blue: 255/255, alpha: 1)
    let green = UIColor(red: 60/255, green: 179/255, blue: 113/255, alpha: 1)
    let yellow = UIColor(red: 255/255, green: 255/255, blue: 0, alpha: 1)
    let orange = UIColor(red: 255/255, green: 64/255, blue: 0, alpha: 1)
    let red = UIColor(red: 255/255, green: 0, blue: 0, alpha: 1)
    
    var colors: [UIColor] = [UIColor]()
   
    
    let text = [
        "Loremipsumdolorsitamet,consecteturadipiscingelit.Maecenastempus.",
        "Contrarytopopularbelief,LoremIpsumisnotsimplyrandomtext.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in",
        "lookeduponeofthemoreobscureLatinwords,consectetur",
        "from a Lorem Ipsum passage, and going through the cites of the word",
        "Thisbookisatreatiseonthetheoryofethics,verypopularduringthe.",
        "ThefirstlineofLoremIpsum,Loremipsumdolorsitamet.."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.colors = [self.purple, self.indigo, self.blue, self.green, self.yellow, self.orange, self.red]
    }
    
    @IBAction func randomColor(_ sender: Any) {
        
        let index = Int.random(in: 0...6)
        let selectedColor = self.colors[index]
        self.view.backgroundColor = selectedColor
        
        let selectedSentence = text[index]
        self.textLabel.text = selectedSentence
        
        print("index: \(index)")
        print("selectedSentence: \(selectedSentence)")
    }
}
