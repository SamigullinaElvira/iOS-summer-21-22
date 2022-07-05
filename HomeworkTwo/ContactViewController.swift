//
//  ContactViewController.swift
//  HomeworkTwo
//
//  Created by elya on 05.07.2022.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    // опционалы для передачи данных
    var name: String?
    var phoneNumber: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            nameLabel.text = name
        }
        if let phoneNumber = phoneNumber {
            phoneNumberLabel.text = phoneNumber
        }
    }
    
//    // передать телефонный номер и имя
//    func configure(name: String, phoneNumber: Int) {
//        nameLabel.text = name
//        phoneNumberLabel.text = String(phoneNumber)
//    }

}
