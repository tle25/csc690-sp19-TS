import UIKit

extension ViewController{
    func didWeWin(){
        if(foundTilesArr.count == tilesArr.count){
            gameTimer.invalidate()
            let txt = "You won in \(TimeCounting/60)\' : \(TimeCounting%60)\""
            GameStatusLabel.isHidden = false
            GameStatusLabel.text = txt
            
//            Lvl up
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0, execute: {
                self.gameMode *= 2
                self.resetAction(self)
            })
        }
    }
    
}
