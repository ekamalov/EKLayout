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

class Repository {
    private var temporaryConstraint = [Constraint]()
    private var prodConstraint = [Constraint]()
    
    internal func addTempConst(_ attribute:EKLayoutAttribute)  {
        let const = Constraint(attribute: attribute)
        self.temporaryConstraint.append(const)
    }
    
    internal func removeAllTempConst(){
        self.temporaryConstraint.removeAll()
    }
    
    internal func moveTempConstToProd(constant value: CGFloat){
        let tmp = temporaryConstraint.compactMap { Constraint.init(attribute: $0.attribute, value: value, relation: .equal) }
        prodConstraint.append(contentsOf: tmp)
        removeAllTempConst()
    }
    
    internal func addProdConst(_ constraints:Constraint...) {
        prodConstraint.append(contentsOf: constraints)
        removeAllTempConst()
    }
    
    
    internal func getProdConstraint()-> [Constraint] {
        return self.prodConstraint
    }
    
    internal func getTempConstraint()-> [Constraint] {
        return self.temporaryConstraint
    }
}
