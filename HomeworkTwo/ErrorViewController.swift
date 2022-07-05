//
//  ErrorViewController.swift
//  HomeworkTwo
//
//  Created by elya on 04.07.2022.
//

import UIKit

class ErrorViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var notification: UILabel!
    @IBOutlet weak var button: UIButton!
    
    // ViewController был загружен
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        dismiss(animated: true)
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
