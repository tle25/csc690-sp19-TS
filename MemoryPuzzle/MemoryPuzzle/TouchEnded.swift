import UIKit

//This class in similar to touchEnded
extension ViewController{
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if(aTileIsAnimating){
            return
        }
        
        let myTouch = touches.first
        
        if let tappedTile = myTouch?.view as? MyLabel{

            //remove pair tiles when found
            if(foundTilesArr.contains(tappedTile)){
                return
            }
            aTileIsAnimating = true
            if(compareNow){
                //Avoid double click at the same tile
                if(tappedTile == firstTile){
                    aTileIsAnimating = false
                    return
                }
                secondTile = tappedTile
                revealAndCompare(inpTile: tappedTile)
            }
            
            else{
                firstTile = tappedTile
                flipToReveal(inpTile: tappedTile)
            }
            
            // output the card being clicked
            //            print("this tile is number \(tappedTile.internalNum!)")
//            flipToReveal(inpTile: tappedTile)
            compareNow = !compareNow
        }
    }
}
