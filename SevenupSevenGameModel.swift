
// SevenupSevenGameModel.swift
//  SevenupSeven
//
//  Created by Brian Gayle on 6/17/20.
//  Copyright © 2020 Brian. All rights reserved.
//
import SwiftUI



class SevenupSevenGamemodel: ObservableObject{
    
   var  oddnumbers = [1, 3, 5]
   var  evennumber = [2, 4, 6]
   var  goldennumbers = [0, 7]
    var numberofrows: Int
    var numberofcolumns: Int
    
    
      
      @Published var gameBoard: [[SevenupSevenGameBlock?]]
    @Published var sevennomes: Sevennomes?
      
      init(numberofrows: Int = 23, numberofcolumns: Int = 10) {
          self.numberofrows = numberofrows
          self.numberofcolumns = numberofcolumns
        
        gameBoard = Array(repeating: Array(repeating: nil, count: numberofrows), count: numberofcolumns)
        sevennomes = Sevennomes(origin: Blocklocation(row: 22, column: 4), Blocktype: .i, display: "Text")
    }
    
    func clickbait(rows: Int, columns: Int) {
    print("Columns: \(columns), Rows:\(rows)")
    if gameBoard[columns][rows] == nil{
        gameBoard[columns][rows] = SevenupSevenGameBlock(BlockType: blockType.allCases.randomElement()!)
    } else {
        gameBoard[columns][rows] = nil
        }
    }
}


struct SevenupSevenGameBlock {
    var BlockType: blockType
    
    
}

struct Sevennomes {
    var origin: Blocklocation
    var Blocktype: blockType
    var display: Text
    
    
   
    
  
    

    
    
    


var blocks: [Blocklocation] {
    [
        Blocklocation(row: 0, column: -1),
        Blocklocation(row: 0, column: 0),
        Blocklocation(row: 0, column: 1),
        Blocklocation(row: 0, column: 2),
        ]
    }
}
struct Blocklocation {
    var row: Int
    var column: Int
}


    enum blockType: CaseIterable {
    case i, l, b, y, t
        
}

        


