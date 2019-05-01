import UIKit

extension ViewController{
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let myTouch = touches.first
        
        if let tappedTile = myTouch?.view as? MyLabel{
            // output the card being clicked
//            print("this tile is number \(tappedTile.internalNum!)")
            flipToReveal(inpTile: tappedTile)
        }
    }
}
