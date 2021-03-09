//
//  CurrenctTxtFld.swift
//  window-shopper
//
//  Created by Jeff Umandap on 3/5/21.
//

import UIKit

@IBDesignable
class CurrencyTxtFld: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
        
        
//        let tf = CurrencyTxtFld()
//
//        tf.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
//        tf.layer.cornerRadius = 5.0
//        tf.textAlignment = .center
//
//        if let p = tf.self.placeholder {
//            let plc = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
//            tf.attributedPlaceholder = plc
//            tf.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        }
        
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    
}
