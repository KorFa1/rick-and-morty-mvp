//
//  MainViewCell.swift
//  RickAndMorty
//
//  Created by Кирилл Софрин on 26.04.2023.
//

import UIKit
import SnapKit

final class MainViewCell: UICollectionViewCell {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.backgroundColor = .white
        
        return view
    }()
    
    lazy var characterImage: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        
        return view
    }()
    
    lazy var heartText: UILabel = {
        let label = UILabel()
        label.text = "❤️"
        label.font = UIFont.systemFont(ofSize: 40)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(containerView)
        containerView.addSubview(characterImage)
        containerView.addSubview(heartText)
        
        setContainerViewConstraints()
        setCharacterImageConstraints()
        setHeartTextConstraints()
        addShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Helpers Methods
private extension MainViewCell {
    
    func setContainerViewConstraints() {
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func setCharacterImageConstraints() {
        characterImage.snp.makeConstraints { make in
            make.top.trailing.leading.equalToSuperview()
            make.bottom.equalToSuperview().offset(-50)
        }
    }
    
    func setHeartTextConstraints() {
        heartText.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview()
        }
    }
    
    func addShadow() {
        layer.cornerRadius = 20
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 3
    }
}
