//
//  OrderPage.swift
//  CloneStarbucks
//
//  Created by 최지철 on 2023/02/02.
//

import UIKit

class OrderPage: UIViewController, UIScrollViewDelegate {
    let stickyheade = false
    
    @IBOutlet weak var TopNavi: UINavigationBar!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if(scrollView.contentOffset.y >= 20){
            Label.isHidden = true
            TopNavi.topItem?.title = "Order"
        }
        else{
            Label.isHidden = false
            TopNavi.topItem?.title = ""

        }
        print(scrollView.contentOffset.y)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self

    }

    

}

