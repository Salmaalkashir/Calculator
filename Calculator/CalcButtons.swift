//
//  CalcButtons.swift
//  Calculator
//
//

import UIKit

class CalcButtons: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String )
    {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        self.titleLabel?.textAlignment = .left
        configure()
    }
    
    private func configure()
    {
        layer.cornerRadius = ((UIScreen.main.bounds.width - 71)/4)/2
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
