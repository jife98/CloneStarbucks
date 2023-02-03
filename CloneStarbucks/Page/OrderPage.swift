//
//  OrderPage.swift
//  CloneStarbucks
//
//  Created by 최지철 on 2023/02/02.
//

import UIKit

class OrderPage: UIViewController, UIScrollViewDelegate {
    let stickyheade = false
    
    @IBOutlet weak var choiceBtn: UIButton!
    @IBOutlet weak var SegmentedController: UISegmentedControl!
    @IBOutlet weak var headerNavi: UINavigationBar!
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
    func customSeg() {
        let image = UIImage()
        SegmentedController.setBackgroundImage(image, for: .normal, barMetrics: .default)
        SegmentedController.setBackgroundImage(image, for: .selected, barMetrics: .default)
        SegmentedController.setBackgroundImage(image, for: .highlighted, barMetrics: .default)
            
        SegmentedController.setDividerImage(image, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        TopNavi.shadowImage = UIImage()
        self.scrollView.delegate = self
        customSeg()
        let frame = CGRect(x: 0, y: choiceBtn.frame.size.height, width: choiceBtn.frame.size.width, height: 2)
        let borderBottom = UIView(frame: frame)
        borderBottom.backgroundColor = UIColor.gray
        choiceBtn.addSubview(borderBottom)
    }

    

}

