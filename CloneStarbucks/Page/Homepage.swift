//
//  Homepage.swift
//  CloneStarbucks
//
//  Created by 최지철 on 2023/01/31.
//

import UIKit

class Homepage: UIViewController, UIScrollViewDelegate {
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
        Topview.isHidden = true

    }
    let MaxTopHeight: CGFloat = 250
    let MinTopHeight: CGFloat = 10
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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self
       floatingBtn.layer.zPosition = 10
        
      
    }
    
}
