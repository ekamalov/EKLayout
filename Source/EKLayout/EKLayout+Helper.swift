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

public class Test {

    public typealias classType = Test
    
    private(set) var repository: Repository
    private(set) var layout:EKLayout
    
    internal init(layout:EKLayout){
        self.layout = layout
        self.repository = layout.repository
    }
    
}

extension Test: ConstraintAttributes {
    
    public func prepareTempBuffer(_ attribute: EKLayoutAttribute) -> Test {
        self.repository.addTempConst(attribute)
        return self
    }
    @discardableResult
    public func value(_ value:Value)-> classType {
        
        guard let val = value as? Percent else {
            self.repository.moveTempConstToProd(constant: value.toCGFloat)
            return self
        }
        
        guard let superViewRect = self.layout.view.superviewRect() else { return self }
        var calcPercent:CGFloat = 0
        repository.getTempConstraint().forEach {
            switch $0.attribute {
            case .top, .bottom:
                calcPercent = val.of(superViewRect.height)
            case .left, .right:
                calcPercent = val.of(superViewRect.width)
            default:
                break
            }
        }
        self.repository.moveTempConstToProd(constant: calcPercent)
        return self
    }
   
}
