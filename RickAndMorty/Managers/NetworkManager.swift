//
//  NetworkManager.swift
//  RickAndMorty
//
//  Created by Кирилл Софрин on 26.04.2023.
//

import Foundation

protocol NetworkManagerProtocol: AnyObject {
    

}


final class NetworkManager {
    
    weak var model: MainModelNetworkManagerProtocol?
    
    private let numberOfCharactersStringURL = "https://rickandmortyapi.com/api/character/"
    
    private func fetchNumberOfCharacters(completion: @escaping (Int?) -> Void) {
        guard let numberOfCharactersURL = URL(string: numberOfCharactersStringURL) else { return }
        
        let request = URLRequest(url: numberOfCharactersURL)
        
        URLSession.shared.dataTask(with: request) { data, _, _ in
            guard let data = data else { return }
            
            if let rickAndMortyData = try? JSONDecoder().decode(RickAndMorty.self, from: data) {
                let numberOfCharacters = rickAndMortyData.info.count
                DispatchQueue.main.async {
                    completion(numberOfCharacters)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }.resume()
    }
}

// MARK: - NetworkManagerProtocol
extension NetworkManager: NetworkManagerProtocol {
    

}
