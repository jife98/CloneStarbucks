//
//  Homepage.swift
//  CloneStarbucks
//
//  Created by 최지철 on 2023/01/31.
//

import UIKit

class Homepage: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var Topview: UIView!
    @IBOutlet weak var headerview: UIView!
    @IBOutlet weak var viewTopHeight: NSLayoutConstraint!
    @IBOutlet weak var imgHieght: NSLayoutConstraint!
    let MaxTopHeight: CGFloat = 250
    let MinTopHeight: CGFloat = 10
    @IBOutlet weak var scrollview: UIScrollView!
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y: CGFloat = scrollView.contentOffset.y

                //변경될 최상단 뷰의 높이
                let ModifiedTopHeight: CGFloat = viewTopHeight.constant - y
                
                // *** 변경될 높이가 최댓값을 초과함
                if(ModifiedTopHeight >= 0)
                { Topview.isHidden = false
                    viewTopHeight.constant = MaxTopHeight
                    Topview.frame.size.height = 0
                }// *** 변경될 높이가 최솟값 미만임
                else if(ModifiedTopHeight < 0)
                {
                    Topview.isHidden = true
                    //현재 최상단뷰의 높이를 최솟값(50+상태바높이)으로 설정
                    headerview.frame.origin.y = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
                    scrollview.frame.origin.y =                      headerview.frame.size.height
+ (view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0)
                }// *** 변경될 높이가 최솟값(50+상태바높이)과 최댓값(250) 사이임
                else
                {
                    //현재 최상단 뷰 높이를 변경함
                    viewTopHeight.constant = ModifiedTopHeight
                    scrollView.contentOffset.y = 0
                }
        print(ModifiedTopHeight)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

}
