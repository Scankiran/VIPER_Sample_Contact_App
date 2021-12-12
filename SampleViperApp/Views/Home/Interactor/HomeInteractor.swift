//
//  HomeInteractor.swift
//  SampleViperApp
//
//  Created by Said Çankıran on 12.12.2021.
//

import Foundation

class HomeInteractor {
    var presenter: HomeInteractorOutputProtocol!
    
    
}

extension HomeInteractor: HomeInteractorInputProtocol {
    func getContactFromService() {
        var contacts = [Contact]()
                
        let yusuf = Contact(fullname: "Yusuf", gsm: "05311111111")
        contacts.append(yusuf)
        
        let ali = Contact(fullname: "Ali", gsm: "05322222222")
        contacts.append(ali)
        
        let mahmut = Contact(fullname: "Mahmut", gsm: "05333333333")
        contacts.append(mahmut)
        
        presenter.gotContact(contacts: contacts)
    }
}
