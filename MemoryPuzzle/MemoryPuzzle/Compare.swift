import UIKit

extension ViewController{
    func compare(){
        if(firstTile.internalNum == secondTile.internalNum){
            flipToSmile(inpTile: firstTile)
            flipToSmile(inpTile: secondTile)

            foundTilesArr.append(firstTile)
            foundTilesArr.append(secondTile)
            
            didWeWin()
        }
        else{
            flipBack(inpTile: firstTile)
            flipBack(inpTile: secondTile)
        }
    }
}
