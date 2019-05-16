import UIKit

extension ViewController{
    
    @IBAction func gameModeAction(_ sender: Any) {
        if let mySegCtrl = sender as? UISegmentedControl {
            let index = mySegCtrl.selectedSegmentIndex

            switch (index){
            case 0:
                gameMode = 2
                TimeCounting = gameMode/2 * 60
            case 1:
                gameMode = 4
                TimeCounting = gameMode/2 * 60
            case 2:
                gameMode = 6
                TimeCounting = gameMode/2 * 60
            case 3:
                gameMode = 8
                TimeCounting = gameMode/2 * 60
                
            default:
                break
            }
            
            resetAction(self)
        }
        
    }

}
