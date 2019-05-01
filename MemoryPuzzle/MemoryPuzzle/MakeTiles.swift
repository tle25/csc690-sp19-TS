import UIKit

extension ViewController{

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
                
                // tracking user's touches on each card
                tile.isUserInteractionEnabled = true
                
                tile.internalNum = counter
                
                //show the tile
//                tile.text = "\(tile.internalNum!)"
                tile.text = "\(MyLabel.question)"
                
                
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
