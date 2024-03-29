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
        
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        

    }



    
    @IBAction func berechnen(_ sender: UIButton) {
        
        let steuerSatz = Float(mwstSatz.text!) ?? 0
        
//        let replaced = kaufBetrag.text!.replacingOccurrences(of: ",", with: ".")
        
//        let betrag = Float(replaced) ?? 0
        let betrag = Float(kaufBetrag.text!.replacingOccurrences(of: ",", with: ".")) ?? 0

        
        
        
        
        
        let steuerBerechnung = betrag * steuerSatz / 100
//        let gerundetsteuerBerechnung = round(steuerBerechnung*100) / 100
        
//        steuer.text = "Die Mehrwertsteuer beträgt:" + String(gerundetsteuerBerechnung) + "€"
        
//        netto.text = "Der Nettobetrag beträgt:" + "\(betrag)" + "€"
        
//        brutto.text = "Der Gesamtbetrag beträgt:" + String(gerundetsteuerBerechnung + betrag) + "€"
        
        steuer.text = String(format: "Die Mehrwertsteuer beträgt: %.2f€", steuerBerechnung)
        netto.text = String(format: "Der Nettobetrag beträgt: %.2f€", betrag)
        brutto.text = String(format: "Der Gesamtbetrag beträgt: %.2f€", steuerBerechnung + betrag)

        
    }
    
    }
