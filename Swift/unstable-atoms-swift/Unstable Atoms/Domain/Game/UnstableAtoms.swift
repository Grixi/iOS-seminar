//
// Created by Samuel Kodytek on 29/09/2019.
// Copyright (c) 2019 Educanet. All rights reserved.
//

import Foundation

protocol UnstableAtoms {

    var winner: Player { get }

    var playerOnMove: Player { get }

    var fields: [[Field]] { get }
    
    var rows: Int { get }
    
    var columns: Int { get }

    func makeMove(coordinate: Coordinate)

}
