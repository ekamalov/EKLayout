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


public class EKLayout {
    public typealias classType = Test
    
    private(set) var repository:Repository
    internal let view:Layoutable
    
    private var constraint:Test!
    
    internal init(view:Layoutable){
        self.view = view
        self.view.prepare()
        
        self.repository = Repository()
        self.constraint = Test(layout: self)
    }
    
    internal static func activateLayout(view:Layoutable,closure:EKLayoutBuilderClosure)  {
        let layt = EKLayout(view: view)
        closure(layt)
        
        layt.repository.getProdConstraint().forEach {
            print(String(reflecting:$0.attribute),$0.value)
        }
        print("layout activated")
    }
    
}

extension EKLayout:ConstraintAttributes {
    public func prepareTempBuffer(_ attribute: EKLayoutAttribute) -> Test {
        self.repository.addTempConst(attribute)
        return self.constraint
    }
}


extension EKLayout {
    @discardableResult
    public func size(_ value:Value) -> classType{
        self.width.value(value.toSize.width)
        self.height.value(value.toSize.height)
        return self.constraint
    }
}

extension EKLayout: AttributeMethods {
    public func top(_ offset: Value) -> Test {
        return self.constraint
    }
}
