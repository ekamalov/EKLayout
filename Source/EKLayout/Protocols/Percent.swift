//
//  Percent.swift
//  EKKit
//
//  Created by Erik Kamalov on 4/16/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit

public struct Percent {
    let value: CGFloat
    
    public func of(_ value: CGFloat) -> CGFloat {
        return value * self.value / 100
    }
}

postfix operator %

public postfix func % (v: CGFloat) -> Percent {
    return Percent(value: v)
}
