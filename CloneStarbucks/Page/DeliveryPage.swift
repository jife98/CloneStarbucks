//
//  DeliveryPage.swift
//  CloneStarbucks
//
//  Created by 최지철 on 2023/02/04.
//
import UIKit


class DeliveryPage: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Address: UITextField!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var CanDeliveryBtn: UIButton!
    
    @IBOutlet weak var SearchBtn: MyBtn!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if range.location == 0 && range.length != 0 {
            
          } else {
              SearchBtn.backgroundColor = UIColor(displayP3Red: 71/255, green: 177/255, blue: 99/255, alpha: 1)
          }
          return true
        
    }
    @IBAction func SetSearch(_ sender: Any) {
        let vc = OrderPage()
        vc.text = Address.text ?? "없어"
            }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Address.backgroundColor = .systemGray5 // 배경색을 다크그레이로
        self.Address.delegate = self
    }


}
