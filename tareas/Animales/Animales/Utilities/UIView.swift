//
//  UIView.swift
//  Animales
//
//  Created by diego castelazo on 27/03/18.
//  Copyright © 2018 diego castelazo. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options:nil).first as! UIView
    }
}
