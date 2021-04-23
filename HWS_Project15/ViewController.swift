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
        
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: {
            switch self.currentAnimation {
            case 0:
                break
                
            default:
                break
            }
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

