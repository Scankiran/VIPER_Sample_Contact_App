//
//  HomeRouter.swift
//  SampleViperApp
//
//  Created by Said Çankıran on 12.12.2021.
//

import Foundation

class HomeRouter: NSObject {
    var controller: HomeViewController!
    var presenter: HomePresenter!
    var interactor: HomeInteractor!
    
    override init() {
        super.init()
        
        interactor = HomeInteractor.init()
        presenter = HomePresenter.init()
        controller = HomeViewController.init()
        
        interactor.presenter = presenter 
        presenter.interactor = interactor
        presenter.router = self
        presenter.view = controller
        controller.presenter = presenter
    }
}

extension HomeRouter: HomeRouterProtocol {
    func openContactDetail(contact: Contact) {
        controller.navigationController?.pushViewController(DetailRouter.init(data: contact).controller, animated: true
        )
    }
}
