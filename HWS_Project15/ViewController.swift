//
//  ViewController.swift
//  HWS_Project15
//
//  Created by J on 2021/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var currentAnimation = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        //画面の中央に画像を配置
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 596, y: 384)
        view.addSubview(imageView)



    }

    @IBAction func tapped(_ sender: UIButton) {
        
        //UIButtonを非表示にする
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 5, initialSpringVelocity: 5, options: [], animations: {
            switch self.currentAnimation {
            
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                
            case 1:
                self.imageView.transform = .identity //元に戻す
            
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)
                
            case 3:
                self.imageView.transform = .identity
                
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                
            case 5:
                self.imageView.transform = .identity
                
            case 6:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = UIColor.green
            
            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = UIColor.clear
                
            default:
                break
            }
            
        //処理が終わったらbuttonを再表示する
        }) { finished in
            sender.isHidden = false
       }
        
        currentAnimation += 1
        
        //7までいったら0にする
        if currentAnimation > 7 {
            currentAnimation = 0
        }
        print(currentAnimation)
    }
    
}

