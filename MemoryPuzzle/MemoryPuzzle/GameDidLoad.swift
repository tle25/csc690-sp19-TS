import UIKit
   
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
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
