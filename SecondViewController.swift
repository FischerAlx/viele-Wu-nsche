//
//  SecondViewController.swift
//  viele Wünsche
//
//  Created by Александр Фишер on 26.12.22.
//
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var mainTextLabel: UILabel!
    
    var questionNumber = 0
    var adjektive = ["praktisch", "offen", "pünktlich", "willensstark", "romantisch", "raffiniert", "humorvoll", "gastfreundlich", "hilfsbereit", "schlagfertig", "gutmütig", "zufrieden", "froh", "nett", "laut", "hoch", "kreativ", "lieblich"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adjektive.shuffle()
        
        
    }
    
    
    @IBAction func pressedMainButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            self.mainTextLabel.text = ""
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 ) {
            UIView.animate(withDuration: 0.2) {
                self.mainTextLabel.text = self.adjektive[self.questionNumber]
            } //UIView
        }
        //mainTextLabel.text = wünsche[questionNumber]
        if questionNumber + 1 < adjektive.count{
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        
    }
    
    
    
    @IBAction func pressedButtonChangeView(_ sender: Any) {
    }
    
    
    
    
    
    
    
}



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
