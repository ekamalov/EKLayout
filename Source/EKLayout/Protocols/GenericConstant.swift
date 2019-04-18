//
//  GenericConstant.swift
//  EKKit
//
//  Created by Erik Kamalov on 4/16/19.
//  Copyright © 2019 Neuron. All rights reserved.
//

import UIKit


protocol GenericConstantForValue {}

extension Int: GenericConstantForValue {}

extension Float: GenericConstantForValue {}

extension Double: GenericConstantForValue {}

extension CGFloat: GenericConstantForValue {}

extension Percent: GenericConstantForValue {}

extension CGSize: GenericConstantForValue {}

extension CGPoint: GenericConstantForValue {}


extension GenericConstantForValue {
    
    var convertToCGFloat:CGFloat {
        switch self {
        case let value as CGFloat: return value
        case let value as Double: return CGFloat(value)
        case let value as Float: return CGFloat(value)
        case let value as Int: return CGFloat(value)
        default:
            assert(false, "NumberConvertible convert cast failed!")
            return 0
        }
    }
    
    var size: CGSize {
        switch self {
        case let value as CGSize: return value
        default: return CGSize(width: convertToCGFloat, height: convertToCGFloat)
        }
    }
    
}




