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

public class Repository {
    private var layout:EKLayout
    
    
    
    
    public init(layout:EKLayout) {
        self.layout = layout
    }
    
    private var temporaryConstraint = Set<Constraint>()
    private var prodConstraint = Set<Constraint>()
    
    internal func addTempConst(_ attribute:EKLayoutAttribute)  {
        let const = Constraint(item: layout.view, superView: layout.view.superview, attribute: attribute)
        if !temporaryConstraint.contains(const) {
            self.temporaryConstraint.insert(const)
        }else {
            self.temporaryConstraint.update(with: const)
        }
    }
    
    internal func removeAllTempConst(){
        self.temporaryConstraint.removeAll()
    }
    
    internal func moveTempConstToProd(constant value: CGFloat){

        self.temporaryConstraint.forEach { item in
            if prodConstraint.contains(item) {
                prodConstraint[prodConstraint.index(of: item)]
            }
        }


        let tmp = temporaryConstraint.compactMap { (item) -> Constraint? in
            var const = item
            const.value = value
            return const
        }
//
//        prodConstraint.insertOrUpdate(tmp)
        let s = prodConstraint.intersection(tmp)
        self.prodConstraint = prodConstraint.union(temporaryConstraint)
        removeAllTempConst()
    
        //        let tmp = temporaryConstraint.compactMap { item in
        //            var temp = item
        //            temp.value = value
        //            return temp
        ////            Constraint.init(item: layout.view, attribute: $0.attribute, value: value, relation: .equal)
        //
        //        }
        
        //        prodConstraint.intersection(tmp)
        //        prodConstraint.append(contentsOf: tmp)
        //        removeAllTempConst()
    }
    
    //    internal func addProdConst(_ constraints:Constraint...) {
    //        prodConstraint.append(contentsOf: constraints)
    //        removeAllTempConst()
    //    }
    
    
    internal func getProdConstraint()-> Set<Constraint> {
        return self.prodConstraint
    }
    
    internal func getTempConstraint()-> Set<Constraint> {
        return self.temporaryConstraint
    }
}


extension Set {
    mutating func insert(_ newMembers: [Set.Element]) {
        newMembers.forEach { (member) in
            self.insert(member)
        }
    }
    mutating func insertOrUpdate(_ newMembers:[Set.Element]){
        newMembers.forEach { member in
            if self.contains(member) {
                 self.update(with: member)
            } else {
                self.insert(member)
            }
        }
    }
}

extension Collection where Element == Constraint {
    subscript(
}
