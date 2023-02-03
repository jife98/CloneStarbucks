//
//  Homepage.swift
//  CloneStarbucks
//
//  Created by 최지철 on 2023/01/31.
//

import UIKit

class Homepage: UIViewController, UIScrollViewDelegate {
    let launchBefore = UserDefaults.standard.bool(forKey: "launchBefore")
    @IBOutlet weak var statusBar: UIView!
    @IBOutlet weak var Topview: UIView!
    @IBOutlet weak var headerview: UIView!
    var viewBlurEffect:UIVisualEffectView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var background: UIView!

    @IBOutlet weak var floatingBtn: UIButton!
    @IBAction func floating(_ sender: Any) {
    }
    @IBAction func btn(_ sender: Any) {
        welecomeMessage()
    }
    let MaxTopHeight: CGFloat = 250
    let MinTopHeight: CGFloat = 10

    func welecomeMessage() {
        let alert = UIAlertController(title: "마늘보단 갈릭님!", message: "환영합니다!😆", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
        }
        alert.addAction(okAction)
        DispatchQueue.main.async {
                        self.present(alert, animated: false)
                    }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

        if(scrollView.contentOffset.y >= 40 ){
            Topview.isHidden = true
            statusBar.backgroundColor = .white
        }
        else {
            Topview.isHidden = false
            statusBar.backgroundColor = UIColor(displayP3Red: 255/255, green: 226/255, blue: 149/255, alpha: 1)

        }
        print(scrollView.contentOffset.y)
        floatingBtn.layer.zPosition = 10
    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        floatingBtn.setTitle("", for: .normal)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        floatingBtn.setTitle("Delivers", for: .normal)
    
    }
    
    
    @IBAction func DliverryBtn(_ sender: Any) {
        //welecomeMessage()
        print("2")

    }
    @IBAction func GoToDlivery(_ sender: Any) {
        print("1")
    }
    override func viewDidLoad() {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        if(appDelegate?.Start == true){
            welecomeMessage()
            appDelegate?.Start = false
        }
        
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if launchedBefore  {
            print("Not first launch.")
        } else {
            print("First launch, setting UserDefault.")
            welecomeMessage()
            UserDefaults.standard.set(true, forKey: "launchedBefore")
        }
        super.viewDidLoad()
        if UserDefaults.standard.bool(forKey: "launchBefore") == false {
            welecomeMessage()
            print("처음")
            UserDefaults.standard.set(true, forKey: "launchBefore")
        }
        self.scrollView.delegate = self
       floatingBtn.layer.zPosition = 1

    }
    
}
