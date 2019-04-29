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

public protocol AttributeVariables{
    var left: Self { get }
    var right: Self { get }
    var top: Self { get }
    var bottom: Self { get }
    var leading: Self { get }
    var trailing: Self { get }
    var width: Self { get }
    var height: Self { get }
    var centerX: Self { get }
    var centerY: Self { get }
    var lastBaseline: Self { get }
}

public protocol AttributeMethods{
    func left(_ offset:Value) -> Self
    func right(_ offset:Value) -> Self
    func top(_ offset:Value) -> Self
    func bottom(_ offset:Value) -> Self
    func leading(_ offset:Value) -> Self
    func trailing(_ offset:Value) -> Self
    func width(_ offset:Value) -> Self
    func height(_ offset:Value) -> Self
    func centerX(_ offset:Value) -> Self
    func centerY(_ offset:Value) -> Self
    func lastBaseline(_ offset:Value) -> Self
}