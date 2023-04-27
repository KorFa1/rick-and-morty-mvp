//
//  MainModel.swift
//  RickAndMorty
//
//  Created by Кирилл Софрин on 26.04.2023.
//

import Foundation

protocol MainModelPresenterProtocol: AnyObject {
    
    
}


protocol MainModelNetworkManagerProtocol: AnyObject {
    

}


protocol MainModelDatabaseManagerProtocol: AnyObject {
    
    
}


final class MainModel {
    
    weak var presenter: MainPresenterModelProtocol?
    
    private var numberOfCharacters: Int? {
        didSet {

        }
    }
}

// MARK: - MainModelProtocol
extension MainModel: MainModelPresenterProtocol {
    
    
}

// MARK: - MainModelNetworkManagerProtocol
extension MainModel: MainModelNetworkManagerProtocol {
    

}

// MARK: - MainModelDatabaseManagerProtocol
extension MainModel: MainModelDatabaseManagerProtocol {
    
    
}
