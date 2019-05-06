import UIKit
extension ViewController{
    func flipBack(inpTile: MyLabel){
        
        UIView.transition(with: inpTile,
                          
                          duration: 0.3,
                          
                          options: UIView.AnimationOptions.transitionFlipFromRight,
                          
                          animations: {
                                inpTile.backgroundColor = UIColor.darkGray
                                inpTile.text = "\(MyLabel.question)" },
                          
                          completion: nil
        )
    }

}
