//
//  HomeProtocols.swift
//  SampleViperApp
//
//  Created by Said Çankıran on 12.12.2021.
//

import Foundation

protocol HomeRouterProtocol: AnyObject {
    func openContactDetail(contact:Contact)
}

protocol HomePresenterProtocol: AnyObject {
    var interactor: HomeInteractorInputProtocol! { get set }
    func getContacts()
    func showContactDetail(contact:Contact)

}

protocol HomeInteractorInputProtocol: AnyObject {
    var presenter: HomeInteractorOutputProtocol!  { get set }
    
    func getContactFromService()

}

protocol HomeInteractorOutputProtocol: AnyObject {
    func gotContact(contacts:[Contact])
}

protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenterProtocol!  { get set }
    
    func showContact(contacts:[Contact])
}
