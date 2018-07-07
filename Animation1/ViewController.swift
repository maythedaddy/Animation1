//
//  ViewController.swift
//  Animation1
//
//  Created by USER on 2018/06/30.
//  Copyright © 2018年 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(sender:UIButton) {
        
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }
//
//        UIView.animate(withDuration: 1.0, animations: {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }) { (_) in
//            self.imageView.transform = CGAffineTransform.identity
//        }
//
//        UIView.animate(withDuration: 1.0, animations: {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }) { (_) in
//            UIView.animate(withDuration: 1.0, animations: {
//                self.imageView.transform = CGAffineTransform.identity
//            })
//        }
        

        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.01, initialSpringVelocity: 0.01, options: .curveLinear, animations: {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: 100)
        }) { (_) in
            UIView.animate(withDuration: 1.0, animations: {
                self.imageView.transform = CGAffineTransform.identity
            })
        }
    }


}

