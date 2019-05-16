import UIKit
extension ViewController{
    func flipBack(inpTile: MyLabel){
        
        UIView.transition(with: inpTile,
                          
                          duration: 0.4,
                          
                          options: UIView.AnimationOptions.transitionFlipFromRight,
                          
                          animations: {
                                inpTile.backgroundColor = UIColor.blue
                                inpTile.text = "\(MyLabel.question)" },
                          
                          completion: {(res) in self.aTileIsAnimating = false}
        )
    }

}
