import UIKit

extension ViewController{
    func revealAndCompare(inpTile: MyLabel){
        UIView.transition(with: inpTile,
                          
                          duration: 0.4,
                          
                          options: UIView.AnimationOptions.transitionFlipFromLeft,
                          
                          animations: {
                            inpTile.backgroundColor = UIColor.red
                            inpTile.text = "\(inpTile.internalNum!)"},
                          
                          completion: { (res) in
                            // Go to the compare b/w 2 cards
                            self.compare()
                            self.aTileIsAnimating = true
                        }
        )
    }
}
