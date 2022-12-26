//
//  ViewController.swift
//  viele Wünsche
//
//  Created by Александр Фишер on 25.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sparkles: UIImageView!
    @IBOutlet weak var mainTextLabel: UILabel!
    
    var questionNumber = 0
    var wünsche = ["Alles wird gut im Leben, besonders an der persönlichen Front!", "Freude und Glück mit viel Geld kommen hinzu!", "Das Glück verlässt dich nicht, es wird ein neues Häuschen für dich geben!", "Ein Ausflug ans Meer erwartet Sie bald!", "Langweile dich nicht, es werden neue Freunde kommen!", "Freudentränen werden fließen - ein alter Freund kehrt zu dir zurück!", "Sie werden in die Creme der Gesellschaft aufgenommen, vielleicht finden Sie einen Sponsor!", "Liebe wird deine Tage schmücken und sie werden hell sein!", "Erwarten Sie sehr bald gute Nachrichten von Freunden!",  "Sie werden bald Glück haben, das Schicksal der guten Nachrichten!", "Ihre Brieftasche wird nicht leer sein, Sie werden das Knirschen des Geldes kennen!", "Jeden Tag und jede Stunde denkt jemand an dich!", "Schau fröhlicher nach vorn, dort erwartet dich Reichtum!", "Warte ein bisschen, die Straße wartet auf dich!", "Lebkuchen und Süßigkeiten, es wird viel Freude geben!", "Warte ohne zu weinen, viel Glück wird zu dir kommen!", "Sie werden immer leckeres Essen zu Hause haben!", "Du wirst das ganze Jahr über leicht leben, essen, trinken und singen, ohne Sorgen zu kennen!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wünsche.shuffle()
    }

    @IBAction func pressedMainButton(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.2) {
            self.mainTextLabel.text = ""
            //self.sparkles.layer.position = .init(x: 302, y: 124)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 ) {
            UIView.animate(withDuration: 0.2) {
                self.mainTextLabel.text = self.wünsche[self.questionNumber]
                
                //self.sparkles.layer.position = .init(x: 100, y: 0)
            } //UIView
        }
        //mainTextLabel.text = wünsche[questionNumber]
        if questionNumber + 1 < wünsche.count{
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        
        
        //var letters = Set<Character>()
        //mainTextLabel.text = "\(letters)"
        //print("letters имеет тип Set<Character> с \(letters.count) элементами.")
        
    }
    
    @IBAction func pressedButtonChangeView(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToAnimals", sender: self)
        
        
        
    }
    
    
}

