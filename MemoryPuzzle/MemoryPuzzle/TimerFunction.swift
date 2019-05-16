import UIKit

extension ViewController{
    @objc func timerFunction(){
        TimeCounting -= 1
        
        
        
        let timeMin = String(format: "%02d", TimeCounting / 60) // get min
        let timeSec = String(format: "%02d", TimeCounting % 60) // get second, get the remaining or time
        timeLabel.text = "\(timeMin)\' : \(timeSec)\""
        
        //Stop the game if time is up
        if(TimeCounting == 0){
            let txt = "You lose :("
            gameTimer.invalidate()
            GameStatusLabel.isHidden = false
            GameStatusLabel.text = txt
            
            tileSize = gameView.frame.size.width
            let tileCgSize = CGSize(width: tileSize, height: tileSize)
            let tile = UILabel (frame: CGRect(origin: CGPoint.zero, size: tileCgSize))
            tile.textColor = .yellow
            tile.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)
            tile.text = "You Lose!! Press 'reset' to play again"
            gameView.addSubview(tile)
        }
    }
}
