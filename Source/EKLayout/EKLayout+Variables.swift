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

extension EKLayout: AttributeVariables {
    public var left: EKLayout {
        return self.prepareTempBuffer(.left)
    }
    public var right: EKLayout {
        return self.prepareTempBuffer(.right)
    }
    
    public var top: EKLayout {
        return self.prepareTempBuffer(.top)
    }
    
    public var bottom: EKLayout {
        return self.prepareTempBuffer(.bottom)
    }
    
    public var leading: EKLayout {
        return self.prepareTempBuffer(.leading)
    }
    
    public var trailing: EKLayout {
        return self.prepareTempBuffer(.trailing)
    }
    
    public var width: EKLayout {
        return self.prepareTempBuffer(.width)
    }
    
    public var height: EKLayout {
        return self.prepareTempBuffer(.height)
    }
    
    public var centerX: EKLayout {
        return self.prepareTempBuffer(.centerX)
    }
    
    public var centerY: EKLayout {
        return self.prepareTempBuffer(.centerY)
    }
    
    public var lastBaseline: EKLayout {
        return self.prepareTempBuffer(.lastBaseline)
    }
}
