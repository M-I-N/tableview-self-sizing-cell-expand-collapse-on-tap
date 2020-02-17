//
//  TableViewCellViewModel.swift
//  ExpandCollapseCell
//
//  Created by Mufakkharul Islam Nayem on 2/17/20.
//  Copyright © 2020 Mufakkharul Islam Nayem. All rights reserved.
//

import Foundation

struct TableViewCellViewModel {
    var state: State
    
    enum State {
        case expanded
        case collapsed
        
        mutating func toggle() {
            self = self == .collapsed ? .expanded : .collapsed
        }
    }
}
