//
//  HomeViewController.swift
//  SampleViperApp
//
//  Created by Said Çankıran on 12.12.2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    var presenter: HomePresenterProtocol!
    
    var contactList:[Contact] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.getContacts()
    }
    
}

extension HomeViewController: HomeViewProtocol, UITableViewDelegate, UITableViewDataSource {
    
  
    func showContact(contacts: [Contact]) {
        self.contactList = contacts
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let contact = self.contactList[indexPath.row]
        cell.textLabel?.text = "\(contact.fullname) --- \(contact.gsm)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        presenter.showContactDetail(contact: contactList[indexPath.row])
    }
}

