import UIKit

//This class in similar to touchEnded
extension ViewController{
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let myTouch = touches.first
        
        if let tappedTile = myTouch?.view as? MyLabel{

            
            if(compareNow){
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
