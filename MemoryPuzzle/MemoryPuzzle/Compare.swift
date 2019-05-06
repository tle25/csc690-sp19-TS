import UIKit

extension ViewController{
    func compare(){
        if(firstTile.internalNum == secondTile.internalNum){
            flipToSmile(inpTile: firstTile)
            flipToSmile(inpTile: secondTile)

        }
        else{
            flipBack(inpTile: firstTile)
            flipBack(inpTile: secondTile)
        }
    }
}
