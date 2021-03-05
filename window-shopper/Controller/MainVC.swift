//
//  ViewController.swift
//  window-shopper
//
//  Created by Jeff Umandap on 3/5/21.
//

import UIKit

class MainVC: UIViewController {
    

    @IBOutlet weak var hourlyWageTF: CurrencyTxtFld!
    @IBOutlet weak var itemPriceTF: CurrencyTxtFld!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        hourlyWageTF.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        hourlyWageTF.placeholder = "Your hourly wage"
        hourlyWageTF.layer.cornerRadius = 5.0
        hourlyWageTF.textAlignment = .center

        
        itemPriceTF.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        itemPriceTF.placeholder = "Item price"
        itemPriceTF.layer.cornerRadius = 5.0
        itemPriceTF.textAlignment = .center
        
        hourlyWageTF.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        itemPriceTF.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        let placeH = NSAttributedString(string: hourlyWageTF.placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
        
        
    }


}

