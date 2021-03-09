//
//  HourlyWage.swift
//  window-shopper
//
//  Created by Jeff Umandap on 3/9/21.
//

import Foundation

class HourlyWage {
    class func getHours(forWage wage: Double, forPrice price: Double) -> Int {
        print("\(Int(ceil(price / wage)))")
        return Int(ceil(price / wage))
    }
}
