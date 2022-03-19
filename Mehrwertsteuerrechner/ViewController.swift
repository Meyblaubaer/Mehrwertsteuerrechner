//
//  ViewController.swift
//  Mehrwertsteuerrechner
//
//  Created by Sven-Christian Meyhoefer on 06.03.22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var kaufBetrag: UITextField!
    

    @IBOutlet weak var mwstSatz: UITextField!
    
    @IBOutlet weak var netto: UILabel!
    
    @IBOutlet weak var steuer: UILabel!
    
    @IBOutlet weak var brutto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func berechnen(_ sender: UIButton) {
        let betrag = Int(kaufBetrag.text!) ?? 0
        let steuerSatz = Int(mwstSatz.text!) ?? 0
        
        var steuerBerechnung = betrag * steuerSatz / 100
        
        steuer.text = "Die Merhwertsteuer beträgt:" + String(steuerBerechnung) + "€"
        
        netto.text = "Der Nettobetrag beträgt:" + "\(betrag)" + "€"
        
        brutto.text = "Der Gesamtbetrag beträgt:" + String(steuerBerechnung + betrag) + "€"
        
        
        
        
        
        
        

        
        
        
        
        
        
    }
    
    }
