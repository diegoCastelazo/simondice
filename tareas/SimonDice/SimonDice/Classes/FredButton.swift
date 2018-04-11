//
//  FredButton.swift
//  SimonDice
//
//  Created by diego castelazo on 06/03/18.
//  Copyright © 2018 diego castelazo. All rights reserved.
//

import Foundation
import UIKit

class FredButton{
    var red: CGFloat;
    var green: CGFloat;
    var blue: CGFloat;
    var button: UIButton?;
    
    let alphaLow: CGFloat = 0.3;
    let alphaHigh: CGFloat = 1.0;
    
    init() {
        self.red = 0;
        self.green = 0;
        self.blue = 0;
        self.button = nil;
        
    }
    
    init?(red: CGFloat, green: CGFloat, blue: CGFloat, button: UIButton){
        if(red < 0 || red > 1){
            return nil;
        }
        if(blue < 0 || blue > 1){
            return nil;
        }
        if(green < 0 || green > 1){
            return nil;
        }
        self.red = red;
        self.green = green;
        self.blue = blue;
        self.button = button;
        self.button?.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alphaLow);
    }
    
    func highLightButton(){
        self.button?.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alphaHigh);
    }
    func deLightButton(){
        self.button?.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alphaLow);
    }
    
}
