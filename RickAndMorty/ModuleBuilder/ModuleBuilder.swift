//
//  ModuleBuilder.swift
//  RickAndMorty
//
//  Created by Кирилл Софрин on 26.04.2023.
//

import UIKit

private protocol Builder {
    
    static func createMainModule() -> UIViewController
}

final class ModuleBuilder: Builder {
    
    private init() {  }
    
    static func createMainModule() -> UIViewController {
        let model = MainModel()
        let view = MainViewController()
        let networkManager = NetworkManager()
        let databaseManager = DatabaseManager()
        
        let presenter = MainPresenter(model: model, view: view, networkManager: networkManager, databaseManager: databaseManager)
        
        model.presenter = presenter
        view.presenter = presenter
        networkManager.model = model
        databaseManager.model = model
        
        return view
    }
}
