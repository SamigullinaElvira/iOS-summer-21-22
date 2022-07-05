//
//  ViewController.swift
//  HomeworkTwo
//
//  Created by elya on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    // ViewController был загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneNumberTextField.placeholder = "Введите номер телефона"
    }
    
    // нажатие кнопки Далее
    @IBAction func buttonDidTap(_ sender: Any) {
        // введенный номер начинается с 89087
        guard let phoneNumber = phoneNumberTextField.text else { return }
        
        if phoneNumber.prefix(5) == "89087" {
            // здесь переход на экран со списком контактов
            guard let contactsTVC = storyboard?.instantiateViewController(withIdentifier: "ContactsTableViewController") else { return }
            navigationController?.pushViewController(contactsTVC, animated: true)
        } else {
            // показываем модально экран с ошибкой
            guard let errorVC = storyboard?.instantiateViewController(withIdentifier: "ErrorViewController") else { return }
            present(errorVC, animated: true)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    // ViewController скоро будет показан пользователю
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // ViewController был показан пользователю
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    // ViewController будет убран
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // ViewController был убран
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}

