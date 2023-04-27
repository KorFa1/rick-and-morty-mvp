//
//  DatabaseManager.swift
//  RickAndMorty
//
//  Created by Кирилл Софрин on 26.04.2023.
//

import Foundation

protocol DatabaseManagerProtocol: AnyObject {
    
    
}


final class DatabaseManager {
    
    weak var model: MainModelDatabaseManagerProtocol?
}

// MARK: - DatabaseManagerProtocol
extension DatabaseManager: DatabaseManagerProtocol {
    
    
}
