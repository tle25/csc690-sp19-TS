import UIKit

extension ViewController{

    @IBAction func resetAction(_ sender: Any) {
        TimeCounting = 0
        foundTilesArr = []
        GameStatusLabel.isHidden = true
        firstTile = nil
        secondTile = nil
        compareNow = false
        
        for any in tilesArr {
            any.removeFromSuperview()
        }
        
        
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
    

}
