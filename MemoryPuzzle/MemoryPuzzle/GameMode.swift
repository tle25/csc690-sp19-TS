import UIKit

extension ViewController{
    
    @IBAction func gameModeAction(_ sender: Any) {
        if let mySegCtrl = sender as? UISegmentedControl {
            let index = mySegCtrl.selectedSegmentIndex
            
            switch (index){
            case 0:
                gameMode = 2
            case 1:
                gameMode = 4
            case 2:
                gameMode = 6
            case 3:
                gameMode = 8
                
            default:
                break
            }
            
            resetAction(self)
        }
        
    }
}
