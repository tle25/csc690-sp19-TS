import UIKit

extension ViewController{

    @IBAction func resetAction(_ sender: Any) {
        if(gameMode == 1){
            TimeCounting = 30
        }
        else{
            TimeCounting = gameMode/2 * 60 - 30
        }

        
//        TimeDecrease = 60
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
