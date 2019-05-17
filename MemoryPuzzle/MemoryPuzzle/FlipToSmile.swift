import UIKit
extension ViewController{
    func flipToSmile(inpTile: MyLabel){
        
        UIView.transition(with: inpTile,
                          
                          duration: 0.4,
                          
                          options: UIView.AnimationOptions.transitionFlipFromRight,
                          
                          animations: {
                            inpTile.backgroundColor = UIColor.red
                            inpTile.text = "\(MyLabel.smile)" },
                          
                          completion: {(res) in self.aTileIsAnimating = false}
        )
    }
}
