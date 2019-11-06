import Foundation

class UnstableAtomsGame: UnstableAtoms {

    // TODO: Implement
    private(set) var winner: Player = .none

    // TODO: Implement
    private(set) var playerOnMove: Player = .red

    // TODO: Implement
    private(set) var fields: [[Field]] = []

    private (set) var rows: Int
    
    private (set) var columns: Int

    
    init(rows: Int, columns: Int) {
        fields = Array(repeating: Array(repeating: Field(owner: .none, amountOfAtoms: 0), count: rows), count: columns)
        self.rows = rows
        self.columns = columns
    }

    func makeMove(coordinate: Coordinate) {
        let x = coordinate.x
        let y = coordinate.y
        var player: Player
        
        if playerOnMove == .red {
            player = Player.red
            playerOnMove = .blue
        } else {
            player = Player.blue
            playerOnMove = .red
        }
    
        
        if fields[x][y].owner == player || fields[x][y].owner == Player.none {
            addAtom(x: x, y: y, player: player)
        } else {
            if playerOnMove == .blue {
                player = Player.red
                playerOnMove = .red
            } else {
                player = Player.blue
                playerOnMove = .blue
            }
        }
    }
    

    func addAtom(x: Int, y: Int, player: Player) {
        var amount = fields[x][y].amountOfAtoms;
        if(amount == 3){
            fields[x][y] = Field(owner: Player.none, amountOfAtoms: 0)
            splitAtoms(x: x, y: y, player: player)
        } else {
            amount+=1
            fields[x][y] = Field(owner: player, amountOfAtoms: amount)
        }
    }

    func splitAtoms(x: Int, y: Int, player: Player) {
            addAtom(x: x + 1, y: y, player: player)
            addAtom(x: x - 1, y: y, player: player)
            addAtom(x: x, y: y - 1, player: player)
            addAtom(x: x, y: y + 1, player: player)
     
    }


   
}
