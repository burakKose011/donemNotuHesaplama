//
//  ViewController.swift
//  DonemNotuHesaplama
//
//  Created by macbook on 14.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var textFieldVize: UITextField!
    @IBOutlet weak var textFieldFinal: UITextField!
    @IBOutlet weak var hesaplaButton: UIButton!
    @IBOutlet weak var NotLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hesaplaButton.layer.cornerRadius = 18
        
    }
    
    
    @IBAction func HesaplaButonu(_ sender: Any) {
        
        
        if let vize = Double(textFieldVize.text!){
            if let final = Double(textFieldFinal.text!){
                
                if vize <= 100 && final <= 100 {
                let sonuc = (vize * 40 / 100) + (final * 60 / 100)
                    NotLabel.text = "Notunuz: \(sonuc)"
                }
                else{
                    NotLabel.text = "UYARI: Lütfen 100' den küçük sayı giriniz."
                }
            }
            
        }
        

    
        
    }
    


}

