//
// Created by Samuel Kodytek on 29/09/2019.
// Copyright (c) 2019 Educanet. All rights reserved.
//

import UIKit

class UnstableAtomViewCell: UICollectionViewCell {

    var size: CGFloat {
        set {
            ivAtoms.frame.size = CGSize(width: newValue, height: newValue)
        }
        get {
            return ivAtoms.frame.size.width
        }
    }
    
    var image: UIImage? {
        set {
            ivAtoms.image = newValue
        }
        get {
            return ivAtoms.image
        }
    }
    
    @IBOutlet private weak var ivAtoms: UIImageView!
    
}
