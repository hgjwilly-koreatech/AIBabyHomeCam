//
//  HomeViewController.swift
//  AIHomeCamProject
//
//  Created by 홍기정 on 9/24/25.
//

import UIKit
import Then
import SnapKit

final class HomeViewController: UIViewController {
    
    // MARK: - Component
    let titleLabel = UILabel().then {
        $0.text = "Home"
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 24, weight: .bold)
    }
    
    // MARK: - Initializer
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        configureView()
    }
}

extension HomeViewController {
    
    private func setUpLayouts() {
        [titleLabel].forEach {
            view.addSubview($0)
        }
    }
    
    private func setUpConstraint() {
        titleLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    private func configureView() {
        view.backgroundColor = .white
        setUpLayouts()
        setUpConstraint()
    }
}
