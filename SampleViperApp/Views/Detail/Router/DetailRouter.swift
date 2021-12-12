//
//  DetailRouter.swift
//  SampleViperApp
//
//  Created by Said Çankıran on 12.12.2021.
//

import Foundation

class DetailRouter: NSObject {
    var controller: DetailViewController!
    var presenter: DetailPresenter!
    var interactor: DetailInteractor!
    
    required init(data: Any? = nil) {
        super.init()
        interactor = DetailInteractor()
        presenter = DetailPresenter()
        controller = DetailViewController()
        
        interactor.presenter = presenter
        presenter.interactor = interactor
        presenter.router = self
        presenter.view = controller
        presenter.data = data
        controller.presenter = presenter
    }
}

extension DetailRouter: DetailRouterProtocol {}
