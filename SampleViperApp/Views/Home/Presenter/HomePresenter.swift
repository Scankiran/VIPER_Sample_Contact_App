//
//  HomePresenter.swift
//  SampleViperApp
//
//  Created by Said Çankıran on 12.12.2021.
//

import Foundation

class HomePresenter {
    var view: HomeViewProtocol!
    var interactor: HomeInteractorInputProtocol!
    var router: HomeRouterProtocol!
}


extension HomePresenter: HomeInteractorOutputProtocol {
    func gotContact(contacts: [Contact]) {
        view.showContact(contacts: contacts)
    }
}

extension HomePresenter: HomePresenterProtocol {
    func getContacts() {
        interactor.getContactFromService()
    }
    
    func showContactDetail(contact: Contact) {
        router.openContactDetail(contact: contact)
    }
}
