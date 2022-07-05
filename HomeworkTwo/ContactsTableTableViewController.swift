//
//  ContactsTableTableViewController.swift
//  HomeworkTwo
//
//  Created by elya on 04.07.2022.
//

import UIKit

struct Contact {
    let name: String
    let phoneNumber: Int
}

class ContactsTableViewController: UITableViewController {
    
    let contacts: [Contact] = [
        Contact(name: "Valya", phoneNumber: 89500806541),
        Contact(name: "Elya", phoneNumber: 89178826906),
        Contact(name: "Dinara", phoneNumber: 89874049623),
        Contact(name: "Denis", phoneNumber: 89087567091)

    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    // сколько секций
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    // возвращаем ячейку для конкретного индекса
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // у самой таблицы с данными пытаемся получить ячейку по идентификатору
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell // и каст до определенного типа
        else { return UITableViewCell() }
        
        // заполняем данными ячейку
        cell.nameLabel.text = contacts[indexPath.row].name
        cell.phoneNumberLabel.text = String(contacts[indexPath.row].phoneNumber)

        return cell
    }
    
    // чтобы корректно работала высота ячейки:
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }

    // для нажатия на ячейку
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        // здесь вместо страницы с ошибкой в случае ViewController страница контакта
        guard let contactVC = storyboard?.instantiateViewController(withIdentifier: "ContactViewController") as? ContactViewController else { return }
        
        // передаем данные на страничку контакта
        contactVC.name = contacts[indexPath.row].name
        contactVC.phoneNumber = String(contacts[indexPath.row].phoneNumber)
        
        present(contactVC, animated: true)
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

}
