//
//  CalcLabel.swift
//  Calculator
//
//

import UIKit

class ResultLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure()
    {
        backgroundColor = .black
        textColor = .white
        self.text = "0"
        font = UIFont.systemFont(ofSize: 90)
        textAlignment = .right
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
