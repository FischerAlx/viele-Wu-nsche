//
//  ViewController.swift
//  viele Wünsche
//
//  Created by Александр Фишер on 25.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainTextLabel: UILabel!
    
    var questionNumber = 0
    var wünsche = ["Alles wird gut im Leben, besonders an der persönlichen Front!", "Freude und Glück mit viel Geld kommen hinzu!", "Das Glück verlässt dich nicht, es wird ein neues Häuschen für dich geben!", "Ein Ausflug ans Meer erwartet Sie bald!", "Langweile dich nicht, es werden neue Freunde kommen!", "Freudentränen werden fließen - ein alter Freund kehrt zu dir zurück!", "Sie werden in die Creme der Gesellschaft aufgenommen, vielleicht finden Sie einen Sponsor!", "Liebe wird deine Tage schmücken und sie werden hell sein!", ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wünsche.shuffle()
    }

    @IBAction func pressedMainButton(_ sender: UIButton) {
        
        mainTextLabel.text = wünsche[questionNumber]
        if questionNumber + 1 < wünsche.count{
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        
        //var letters = Set<Character>()
        //mainTextLabel.text = "\(letters)"
        //print("letters имеет тип Set<Character> с \(letters.count) элементами.")
        
        
        
        
    }
    
}

