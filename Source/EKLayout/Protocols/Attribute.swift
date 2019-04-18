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
