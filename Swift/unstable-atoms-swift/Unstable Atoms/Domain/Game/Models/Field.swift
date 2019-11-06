//
// Created by Samuel Kodytek on 29/09/2019.
// Copyright (c) 2019 Educanet. All rights reserved.
//

import Foundation

class Field {

    let amountOfAtoms: Int
    let owner: Player

    init(owner: Player, amountOfAtoms: Int) {
        self.amountOfAtoms = amountOfAtoms;
        self.owner = owner;
    }

}


