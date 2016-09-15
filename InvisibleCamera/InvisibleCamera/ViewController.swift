//
//  ViewController.swift
//  InvisibleCamera
//

import UIKit

class ViewController: UIViewController {

    
    var imageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 一旦ボタン作る
        
        let underView = UIView(frame: CGRect(origin: CGPointZero, size:  CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height/8)))
        underView.center = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height-underView.frame.size.height/2)
        underView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.4)
        self.view.addSubview(underView)
        
        let shutterButton = UIButton(frame: CGRect(origin: CGPointZero, size: CGSize(width: underView.frame.size.height-15, height: underView.frame.size.height-15)))
        shutterButton.center = CGPoint(x: underView.frame.size.width/2, y: underView.frame.size.height/2)
        shutterButton.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0)
        shutterButton.layer.masksToBounds = true
        shutterButton.layer.cornerRadius = shutterButton.frame.size.width/2
        shutterButton.layer.borderColor = UIColor.whiteColor().CGColor
        shutterButton.layer.borderWidth = 6
        shutterButton.addTarget(self, action: #selector(tappdShutterButton(_:)), forControlEvents: .TouchUpInside)
        underView.addSubview(shutterButton)
        
        
        
    }

    override func viewWillAppear(animated: Bool){
        // スクリーン設定をする
        
        // カメラ設定をする
    }
    
    
    
    func setupDisplay(){
        // スクリーンの幅
        let screenWidth = UIScreen.mainScreen().bounds.size.width;
        // スクリーンの高さ
        let screenHight = UIScreen.mainScreen().bounds.size.height;
        
        //カメラからの映像を移すimageViewの作成
        if let iv = imageView {
            iv.removeFromSuperview()
        }
        imageView = UIImageView()
        imageView.frame = CGRectMake(0.0, 0.0, screenWidth, screenHight)
        view.addSubview(imageView)
        view.sendSubviewToBack(imageView)
    }
    
    
    func setupCamera(){
        // カメラ設定
    }
    
    func tappdShutterButton(sender: UIButton) {
        //ボタン押した時の設定
        print("hoge")
    }
    
    
    // メモリ解放する
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
