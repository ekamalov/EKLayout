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

extension EKLayout:AttributeMethods {
    @discardableResult
    public func left(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.left).margin(offset)
    }
    
    @discardableResult
    public func right(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.right).margin(offset)
    }
    
    @discardableResult
    public func top(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.top).margin(offset)
    }
    
    @discardableResult
    public func bottom(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.bottom).margin(offset)
    }
    
    @discardableResult
    public func leading(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.leading).margin(offset)
    }
    
    @discardableResult
    public func trailing(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.trailing).margin(offset)
    }
    
    @discardableResult
    public func width(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.width).margin(offset)
    }
    
    @discardableResult
    public func height(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.height).margin(offset)
    }
    
    @discardableResult
    public func centerX(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.centerX).margin(offset)
    }
    
    @discardableResult
    public func centerY(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.centerY).margin(offset)
    }
    
    @discardableResult
    public func lastBaseline(_ offset: Value) -> EKLayout {
        return self.prepareTempBuffer(.lastBaseline).margin(offset)
    }
}


extension EKLayout {
    func left(of relativeView: Layoutable, aligned: EKLayoutAttribute = .notAnAttribute ,  _ offset:Value = CGFloat(0)) -> Self {
        return self
    }
    
    
    func right(of relativeView: Layoutable, aligned: EKLayoutAttribute = .notAnAttribute ,  _ offset:Value = CGFloat(0)) -> Self {
        return self
    }
    func top(of relativeView: Layoutable, aligned: EKLayoutAttribute = .notAnAttribute ,  _ offset:Value = CGFloat(0)) -> Self {
        return self
    }
    func bottom(of relativeView: Layoutable, aligned: EKLayoutAttribute = .notAnAttribute ,  _ offset:Value = CGFloat(0)) -> Self {
        return self
    }

}
