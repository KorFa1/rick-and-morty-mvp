//
//  MainPresenter.swift
//  RickAndMorty
//
//  Created by Кирилл Софрин on 26.04.2023.
//

import Foundation

protocol MainPresenterModelProtocol: AnyObject {
    

}


protocol MainPresenterVIewProtocol: AnyObject {


}


final class MainPresenter {

    var model: MainModelPresenterProtocol?
    weak var view: MainViewProtocol?
    var networkManager: NetworkManagerProtocol?
    var databaseManager: DatabaseManagerProtocol?
    
    init(model: MainModelPresenterProtocol, view: MainViewProtocol, networkManager: NetworkManagerProtocol, databaseManager: DatabaseManagerProtocol) {
        self.model = model
        self.view = view
        self.networkManager = networkManager
        self.databaseManager = databaseManager
    }
}

// MARK: - MainPresenterModelProtocol
extension MainPresenter: MainPresenterModelProtocol {
    

}

// MARK: - MainPresenterVIewProtocol
extension MainPresenter: MainPresenterVIewProtocol {
    

}
