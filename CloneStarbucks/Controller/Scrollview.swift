//
//  Scrollview.swift
//  CloneStarbucks
//
//  Created by 최지철 on 2023/02/02.
//

import UIKit

class Scrollview: UIScrollView {

    override func touchesShouldCancel(in view: UIView) -> Bool {
        if view is UIButton {
          return true
        }
        return super.touchesShouldCancel(in: view)
      }

}
