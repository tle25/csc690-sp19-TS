import UIKit

extension ViewController{
    func didWeWin(){
        if(foundTilesArr.count == tilesArr.count){
            gameTimer.invalidate()
            let txt = "You won in \(TimeCounting/60)\' : \(TimeCounting%60)\""
            GameStatusLabel.isHidden = false
            GameStatusLabel.text = txt
            
        

            tileSize = gameView.frame.size.width
            let tileCgSize = CGSize(width: tileSize, height: tileSize)
            let tile = UILabel (frame: CGRect(origin: CGPoint.zero, size: tileCgSize))
            tile.textColor = .white
            tile.font = UIFont.systemFont(ofSize: 40, weight: UIFont.Weight.bold)
            tile.text = "Passed"
            gameView.addSubview(tile)
//            Lvl up

            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {

                tile.textColor = .white
                tile.font = UIFont.systemFont(ofSize: 40, weight: UIFont.Weight.bold)
                tile.text = "Ready to level up?"
                self.gameView.addSubview(tile)

            })
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 7.0, execute: {
                tile.text = ""
                self.gameView.addSubview(tile)
                
                self.gameMode += 2
                self.resetAction(self)
                
            })
        }
    }
    
}
