//
//  Attribute.swift
//  EKKit
//
//  Created by Erik Kamalov on 4/16/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit

protocol ConstraintAttributes {
    associatedtype classType
    func prepareTempBuffer(_ attribute:EKLayoutAttribute) -> classType
}

extension ConstraintAttributes {

    internal var left: classType {
        return self.prepareTempBuffer(.left)
    }
    
    internal var right: classType {
        return self.prepareTempBuffer(.right)
    }
    
    internal var top: classType {
        return self.prepareTempBuffer(.top)
    }
    
    internal var bottom: classType {
        return self.prepareTempBuffer(.bottom)
    }
    
    internal var leading: classType {
        return self.prepareTempBuffer(.leading)
    }
    
    internal var trailing: classType {
        return self.prepareTempBuffer(.trailing)
    }
    
    internal var width: classType {
        return self.prepareTempBuffer(.width)
    }
    
    internal var height: classType {
        return self.prepareTempBuffer(.height)
    }
    
    internal var centerX: classType {
        return self.prepareTempBuffer(.centerX)
    }
    
    internal var centerY: classType {
        return self.prepareTempBuffer(.centerY)
    }
    
    internal var lastBaseline: classType {
        return self.prepareTempBuffer(.lastBaseline)
    }
}
