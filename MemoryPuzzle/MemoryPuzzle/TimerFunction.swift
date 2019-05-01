import UIKit

extension ViewController{
    @objc func timerFunction(){
        TimeCounting += 1
        
        let timeMin = String(format: "%02d", TimeCounting / 60) // get min
        let timeSec = String(format: "%02d", TimeCounting % 60) // get second, get the remaining or time
        timeLabel.text = "\(timeMin)\' : \(timeSec)\""
    }
}
