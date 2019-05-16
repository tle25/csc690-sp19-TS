import UIKit

extension ViewController{
    func flipToReveal(inpTile: MyLabel){
        
        UIView.transition(with: inpTile,
                          
                          duration: 0.3,
                          
                          options: UIView.AnimationOptions.transitionFlipFromLeft,
                          
                          animations: {
                            inpTile.backgroundColor = UIColor.red
                            inpTile.text = "\(inpTile.internalNum!)"
                            },
                          
                          completion: {(res) in self.aTileIsAnimating = false}
                        )
    }
    
}
