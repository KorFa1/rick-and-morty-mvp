//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Кирилл Софрин on 26.04.2023.
//

import UIKit
import SnapKit

protocol MainViewProtocol: AnyObject {
    

}


final class MainViewController: UIViewController {
    
    var presenter: MainPresenterVIewProtocol?
    
    private lazy var characterCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .lightGray
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        characterCollectionView.register(MainViewCell.self, forCellWithReuseIdentifier: "cell")
        
        characterCollectionView.delegate = self
        characterCollectionView.dataSource = self
        
        view.addSubview(characterCollectionView)
        
        setCharacterCollectionViewConstraints()
    }
}

// MARK: - MainViewProtocol
extension MainViewController: MainViewProtocol {

    
}

// MARK: - UICollectionViewDelegate
extension MainViewController: UICollectionViewDelegate {
    
    
}

// MARK: - UICollectionViewDataSource
extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MainViewCell
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         let width = collectionView.frame.width / 2 - 15
         let height = width + 50
        
         return CGSize(width: width, height: height)
     }
}

// MARK: - Objc methods
private extension MainViewController {
    

}

// MARK: - Constraints
private extension MainViewController {
    
    func setCharacterCollectionViewConstraints() {
        characterCollectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

