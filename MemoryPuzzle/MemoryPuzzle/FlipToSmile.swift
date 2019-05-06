import UIKit
extension ViewController{
    func flipToSmile(inpTile: MyLabel){
        
        UIView.transition(with: inpTile,
                          
                          duration: 0.3,
                          
                          options: UIView.AnimationOptions.transitionFlipFromRight,
                          
                          animations: {
                            inpTile.backgroundColor = UIColor.darkGray
                            inpTile.text = "\(MyLabel.smile)" },
                          
                          completion: nil
        )
    }
}
