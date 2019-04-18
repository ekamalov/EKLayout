//
//  Layoutable.swift
//  EKKit
//
//  Created by Erik Kamalov on 4/16/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit

public protocol Layoutable {}

extension Layoutable {
    internal func prepare() {
        guard let view = self as? EKLayoutableView else { return }
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    internal var superview: EKLayoutableView? {
        guard let view = self as? EKLayoutableView else { return nil }
        return view.superview
    }
    
    internal func superviewRect() -> CGRect? {
        return superview?.frame
    }
    
}
