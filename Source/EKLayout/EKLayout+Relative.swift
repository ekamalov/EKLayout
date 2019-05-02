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

extension EKLayout {
    // MARK: - Public methods
    @discardableResult
    func left(of relativeView: Layoutable, aligned: EKLayoutAttribute = .left ,  _ offset:Value = 0, relation: EKLayoutRelation = .equal) -> EKLayout {
        self.addRelativeConstraint(newViewAttribute: .left, of: relativeView, aligned: aligned, offset, relation: relation)
        return self
    }
    
    @discardableResult
    func right(of relativeView: Layoutable, aligned: EKLayoutAttribute = .right ,  _ offset:Value = 0, relation: EKLayoutRelation = .equal) -> EKLayout {
        self.addRelativeConstraint(newViewAttribute: .right, of: relativeView, aligned: aligned, offset, relation: relation)
        return self
    }
    
    @discardableResult
    func top(of relativeView: Layoutable, aligned: EKLayoutAttribute = .top ,  _ offset:Value = 0, relation: EKLayoutRelation = .equal) -> EKLayout {
        self.addRelativeConstraint(newViewAttribute: .top, of: relativeView, aligned: aligned, offset, relation: relation)
        return self
    }
    
    @discardableResult
    func bottom(of relativeView: Layoutable, aligned: EKLayoutAttribute = .bottom ,  _ offset:Value = 0, relation: EKLayoutRelation = .equal) -> EKLayout {
        self.addRelativeConstraint(newViewAttribute: .bottom, of: relativeView, aligned: aligned, offset, relation: relation)
        return self
    }
    
    
    // MARK: - Private methods
    private func addRelativeConstraint(newViewAttribute: EKLayoutAttribute, of relativeView: Layoutable,
                                       aligned: EKLayoutAttribute = .notAnAttribute ,  _ offset:Value = 0, relation: EKLayoutRelation){
        let const = Constraint(newView: self.view, newViewAttribute: newViewAttribute, relativeView: relativeView,
                               relativeAttribute: aligned, value: offset.toCGFloat, relation: relation)
        self.repository.addProdConst(constraint: const)
    }
}

