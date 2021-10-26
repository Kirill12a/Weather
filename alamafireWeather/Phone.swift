//
//  Phone.swift
//  alamafireWeather
//
//  Created by Kirill Drozdov on 20.10.2021.
//

import Foundation
import UIKit
class PhoneGradient {
    

    static var gradient: CAGradientLayer = {
    let gradient = CAGradientLayer()
    gradient.type = .axial
    gradient.colors = [
        UIColor.red.cgColor,
        UIColor.purple.cgColor,
        UIColor.cyan.cgColor
    ]
    gradient.locations = [0, 0.25, 1]
    return gradient
}()
}
