//
//  Extension + UIView.swift
//  LogInPage
//
//  Created by Марина Иванова on 13.05.2023.
//

import UIKit

// MARK: - Set background color
    
    let primaryColor = UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1)
    let secondaryColor = UIColor(red: 107/255, green: 148/255, blue: 230/255, alpha: 1)
    
    extension UIView {
        func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
            let gradient = CAGradientLayer()
            gradient.frame = bounds
            gradient.colors = [topColor.cgColor, bottomColor.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            gradient.endPoint = CGPoint(x: 0, y: 1)
            layer.insertSublayer(gradient, at: 0)
        
    }
}
