//  MIT License
//
//  Copyright (c) 2019 Erik Kamalov <ekamalov967@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit


///**
// Struct that aggregates `NSLayoutRelation`, constant and multiplier of a
// layout constraint eventually created
// */


public struct Constraint {
    
    public let from:Layoutable
    
    public let to:Layoutable?
    /// Value of the attribute
    public let attribute: EKLayoutAttribute
    
    /// Value of the constant
    public var value: CGFloat
    
    /// Relation that applies to the `value` of the `Constant`
    public let relation: EKLayoutRelation
    
    public init(item view1: Layoutable,superView view2: Layoutable?, attribute: EKLayoutAttribute,
                value: CGFloat = 0,
                relation: EKLayoutRelation = .equal) {
        self.from = view1
        self.to = view2
        self.attribute = attribute
        self.value = value
        self.relation = relation
    }
}

extension Constraint:Hashable {
    public static func == (lhs: Constraint, rhs: Constraint) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(relation)
//        hasher.combine(value)
        hasher.combine(attribute)
    }
}
extension Constraint:CustomStringConvertible {}





extension CustomStringConvertible {
    public var description : String {
        var description: String = ""
        let selfMirror = Mirror(reflecting: self)
        for child in selfMirror.children {
            if let propertyName = child.label {
                description += "\(propertyName): \(child.value)\t"
            }
        }
        return description
    }
}
