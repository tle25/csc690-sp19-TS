//
//  ViewController.swift
//  MemoryPuzzle
//
//  Created by Thanh Le on 4/21/19.
//  Copyright © 2019 Thanh Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var GameStatusLabel: UILabel!

//    starting game level
    var gameMode : Int = 2
    var tileSize: CGFloat!
    
    
    // remember all tiles and centers
    //go through the tiles and assign a random center
    
//    var tilesArr : Array <MyLabel>!
    var tilesArr : Array <MyLabel> = []
    var centerArr: Array <CGPoint> = []
    
    // initialize game ocunt
    var TimeCounting : Int = 60
    var gameTimer : Timer!
    
    var firstTile: MyLabel!
    var secondTile: MyLabel!
//    var firstTile = MyLabel!
//    var secondTile = MyLabel!
    
    var compareNow = false
    
    var foundTilesArr: Array <MyLabel> = []

    var aTileIsAnimating = false
}

