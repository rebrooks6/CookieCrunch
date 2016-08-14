//
//  Swap.swift
//  CookieCrunch
//
//  Created by Kayla Brooks on 8/14/16.
//  Copyright © 2016 Robert Brooks. All rights reserved.
//

import Foundation

struct Swap: CustomStringConvertible {
    let cookieA: Cookie
    let cookieB: Cookie
    
    init(cookieA: Cookie, cookieB: Cookie) {
        self.cookieA = cookieA
        self.cookieB = cookieB
    }
    
    var description: String {
        return "swap \(cookieA) with \(cookieB)"
    }
}
