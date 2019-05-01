import UIKit

extension ViewController{
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
    
}

