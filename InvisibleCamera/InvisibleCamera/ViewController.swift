//
//  ViewController.swift
//  InvisibleCamera
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 一旦ボタン作る
        
        let underView = UIView(frame: CGRect(origin: CGPointZero, size:  CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height/8)))
        underView.center = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height-underView.frame.size.height/2)
        underView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.4)
        self.view.addSubview(underView)
        
        let shutterButton = UIButton(frame: CGRect(origin: CGPointZero, size: CGSize(width: underView.frame.size.height-15, height: underView.frame.size.height-15)))
        shutterButton.center = CGPoint(x: underView.frame.size.width/2, y: underView.frame.size.height/2)
        underView.addSubview(shutterButton)
        
        
        
    }

    override func viewWillAppear(animated: Bool){
        // スクリーン設定をする
        
        // カメラ設定をする
    }
    
    
    
    func setupDisplay(){
        // スクリーン設定
    }
    
    
    func setupCamera(){
        // カメラ設定
    }
    
    func tappdShutterButton(){
        //ボタン押した時の設定
        
    }
    
    
    // メモリ解放する
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
