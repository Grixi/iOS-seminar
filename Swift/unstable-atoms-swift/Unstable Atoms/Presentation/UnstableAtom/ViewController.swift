//
//  ViewController.swift
//  Unstable Atoms
//
//  Created by Samuel Kodytek on 29/09/2019.
//  Copyright © 2019 Educanet. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet private weak var cvGameField: UICollectionView!
    @IBOutlet private  weak var lGameStatus: UILabel!
    
    private let game: UnstableAtoms = UnstableAtomsGame(rows: 9, columns: 6)
    
    private var cellWidth: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let columns = game.fields.count
        let margin = (40 / CGFloat(columns))
        let size = (cvGameField.bounds.size.width / CGFloat(columns))
        cellWidth = size - margin
        
        reloadLabels()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return game.fields.count * game.fields.first!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "unstableAtomsFieldCell", for: indexPath as IndexPath) as! UnstableAtomViewCell
        
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = CGColor(srgbRed: 236 / 255, green: 240 / 255, blue: 241 / 255, alpha: 1)
        
        cell.size = cellWidth
        
        let coordniate = indexToCoordinate(index: indexPath.item)
        let field = game.fields[coordniate.x][coordniate.y]
        
        if(field.owner == .red) {
            if(field.amountOfAtoms == 1) {
                cell.image = UIImage(named: "red_1")
            } else if(field.amountOfAtoms == 2) {
                cell.image = UIImage(named: "red_2")
            } else if(field.amountOfAtoms == 3) {
                cell.image = UIImage(named: "red_3")
            }
        } else if(field.owner == .blue) {
            if(field.amountOfAtoms == 1) {
                cell.image = UIImage(named: "blue_1")
            } else if(field.amountOfAtoms == 2) {
                cell.image = UIImage(named: "blue_2")
            } else if(field.amountOfAtoms == 3) {
                cell.image = UIImage(named: "blue_3")
            }
        } else {
            cell.image = nil
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let coordniate = indexToCoordinate(index: indexPath.item)
        game.makeMove(coordinate: coordniate)
        
        reloadView()
    }
    
    private func indexToCoordinate(index: Int) -> Coordinate {
        let x = index % game.columns
        let y = index / game.columns
        
        return Coordinate(x: x, y: y)
    }
    
    private func reloadLabels() {
        if(game.playerOnMove == .red) {
            lGameStatus.text = "Red player's move"
        } else if(game.playerOnMove == .blue) {
            lGameStatus.text = "Blue player's move"
        } else {
            if(game.winner == .red) {
                lGameStatus.text = "Red wins!"
            } else {
                lGameStatus.text = "Blue wins!"
            }
        }
    }
    
    private func reloadView() {
        reloadLabels()
        cvGameField.reloadData()
    }

}
