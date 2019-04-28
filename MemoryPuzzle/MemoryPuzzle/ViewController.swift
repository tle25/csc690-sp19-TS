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
    
    
    
    @IBAction func resetAction(_ sender: Any) {
    }
    
    
    @IBAction func gameModeAction(_ sender: Any) {
    }
    

    var gameMode : Int = 4
    var tileSize: CGFloat!
    
    
    // remember all tiles and centers
    //go through the tiles and assign a random center
    
//    var tilesArr : Array <MyLabel>!
    var tilesArr : Array <MyLabel> = []
    var centerArr: Array <CGPoint> = []
    
    // initialize game ocunt
    var TimeCounting : Int = 0
    var gameTimer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTiles()
        randomize()
        
        if(gameTimer != nil){
            gameTimer.invalidate()
            timeLabel.text = "00\' : 00\""
        }
        
        //set time interver call every 1 second, or minisec = 1/60
        gameTimer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(timerFunction),
                                         userInfo: nil,
                                         repeats: true)
        
    }
    
    @objc func timerFunction(){
        TimeCounting += 1
        
        let timeMin = String(format: "%02d", TimeCounting / 60) // get min
        let timeSec = String(format: "%02d", TimeCounting % 60) // get second, get the remaining or time
        timeLabel.text = "\(timeMin)\' : \(timeSec)\""
    }
    
    
    //Create randomize number on board
    func randomize(){
        
        // Keep temporary centers arr
        var temCenArr = centerArr
        
        for anyTile in tilesArr{
            let randomIndex: Int = Int(arc4random_uniform(UInt32(centerArr.count)))
            let randomeCenter = centerArr[randomIndex]
            anyTile.center = randomeCenter
            
            centerArr.remove(at: randomIndex)
        }
    }
    
    
    
    
    
    func makeTiles(){
        tilesArr = []
        
        tileSize = gameView.frame.size.width / CGFloat(gameMode)
        
        
//       tileSize - 5 for the gap between each card
        let tileCgSize = CGSize(width: tileSize - 5, height: tileSize - 5)
        
        
        var xCenter = tileSize / 2.0
        var yCenter = tileSize / 2.0
        var counter = 0
        
        //        for v in 0..<gameMode{
        let row = gameMode * 3 / 2
        let col = gameMode
        for _ in 0..<row{
            for _ in 0..<col {
                
                
//                let tile = UILabel (frame: CGRect(origin: CGPoint.zero, size: tileCgSize))
                let tile = MyLabel (frame: CGRect(origin: CGPoint.zero, size: tileCgSize))

            
                tile.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.bold)
                
                let tileCenter = CGPoint(x: xCenter, y: yCenter)
                
                if counter == row * col / 2{
                    counter = 0
                }
                
                
                tile.internalNum = counter
                tile.text = "\(tile.internalNum!)"
                tilesArr.append(tile)
                centerArr.append(tileCenter)
                
                
                
                
                counter += 1
                
                tile.center = tileCenter
                xCenter += tileSize
                
                tile.backgroundColor = UIColor.darkGray
                gameView.addSubview(tile)
            }
            xCenter = tileSize/2
            yCenter += tileSize
        }
        
    }


}

