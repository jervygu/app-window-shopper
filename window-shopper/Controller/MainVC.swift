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
    
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6123608351, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self,
                          action: #selector(MainVC.calculate),
                          for: .touchUpInside)
        
        hourlyWageTF.inputAccessoryView = calcBtn
        itemPriceTF.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    @objc func calculate() {
//        print("hey yes!")
        if let wageTxt = hourlyWageTF.text, let priceTxt = itemPriceTF.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                
                resultLbl.text = "\(HourlyWage.getHours(forWage: wage, forPrice: price))"
            }
            
        }
        
    }
    
    @IBAction func clearCalcPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        hourlyWageTF.text = ""
        itemPriceTF.text = ""
    }
    


}

