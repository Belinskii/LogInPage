//
//  Extension + UIView.swift
//  LogInPage
//
//  Created by Марина Иванова on 13.05.2023.
//

import UIKit

// MARK: - Set background color


    
    extension UIView {
        func addVerticalGradientLayer() {
            let primaryColor = UIColor(named: "TopColor")
            let secondaryColor = UIColor(named: "BottomColor")
            let gradient = CAGradientLayer()
            gradient.frame = bounds
            gradient.colors = [primaryColor!.cgColor, secondaryColor!.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            gradient.endPoint = CGPoint(x: 0, y: 1)
            layer.insertSublayer(gradient, at: 0)
        
    }
}
