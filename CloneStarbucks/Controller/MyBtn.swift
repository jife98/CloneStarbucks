//
//  MyBtn.swift
//  CloneStarbucks
//
//  Created by 최지철 on 2023/02/03.
//

import UIKit

class MyBtn: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0{
           didSet{
           self.layer.cornerRadius = cornerRadius
           }
       }

       @IBInspectable var borderWidth: CGFloat = 0{
           didSet{
               self.layer.borderWidth = borderWidth
           }
       }

       @IBInspectable var borderColor: UIColor = UIColor.clear{
           didSet{
               self.layer.borderColor = borderColor.cgColor
           }
       }
}
