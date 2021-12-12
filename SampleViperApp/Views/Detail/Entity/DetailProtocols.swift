//
//  DetailProtocols.swift
//  SampleViperApp
//
//  Created by Said Çankıran on 12.12.2021.
//

import Foundation

protocol DetailRouterProtocol: AnyObject {
}

protocol DetailPresenterProtocol: AnyObject {
    var interactor: DetailInteractorInputProtocol! { get set }
    
    func getContact()
}

protocol DetailInteractorInputProtocol: AnyObject {
    var presenter: DetailInteractorOutputProtocol!  { get set }

}

protocol DetailInteractorOutputProtocol: AnyObject {
}

protocol DetailViewProtocol: AnyObject {
    var presenter: DetailPresenterProtocol!  { get set }
    
    func showContact(contact:Contact)
    
}
