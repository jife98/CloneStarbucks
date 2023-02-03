//
//  Launch.swift
//  CloneStarbucks
//
//  Created by 최지철 on 2023/02/04.
//

import UIKit

class Launch: UIViewController {
    func welecomeMessage() {
        let alert = UIAlertController(title: "마늘보단 갈릭님!", message: "환영합니다!😆", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
        }
        alert.addAction(okAction)
        present(alert, animated: false, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        welecomeMessage()
        // Do any additional setup after loading the view.
    }


}
