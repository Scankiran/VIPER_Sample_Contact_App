//
//  DetailPresenter.swift
//  SampleViperApp
//
//  Created by Said Çankıran on 12.12.2021.
//

import Foundation

class DetailPresenter {
    var view: DetailViewProtocol!
    var interactor: DetailInteractorInputProtocol!
    var router: DetailRouterProtocol!
    
    var data: Any?
}

extension DetailPresenter: DetailPresenterProtocol {

    func getContact() {
        guard let contact = data as? Contact else {
                    return
                }
                
        view.showContact(contact: contact)
    }
    
}

extension DetailPresenter: DetailInteractorOutputProtocol {
    
}
