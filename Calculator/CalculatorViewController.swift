//
//  ViewController.swift
//  Calculator
//
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var resultLabel = ResultLabel()
    var resultt = Double()
    var resdiv = Float()
    var taps = String()
    var buttontaps = String()
    var expression = NSExpression()
    var percent = Double()
    var widthheight = (UIScreen.main.bounds.width - 71)/4
    let zero = CalcButtons(backgroundColor: .darkGray, title: "0")
    let dot = CalcButtons(backgroundColor: .darkGray, title: ".")
    let equals = CalcButtons(backgroundColor: .systemOrange, title: "=")
    let one = CalcButtons(backgroundColor: .darkGray, title: "1")
    let two = CalcButtons(backgroundColor: .darkGray, title: "2")
    let three = CalcButtons(backgroundColor: .darkGray, title: "3")
    let plus = CalcButtons(backgroundColor: .systemOrange, title: "+")
    let four = CalcButtons(backgroundColor: .darkGray, title: "4")
    let five = CalcButtons(backgroundColor: .darkGray, title: "5")
    let six = CalcButtons(backgroundColor: .darkGray, title: "6")
    let minus = CalcButtons(backgroundColor: .systemOrange, title: "-")
    let seven = CalcButtons(backgroundColor: .darkGray, title: "7")
    let eight = CalcButtons(backgroundColor: .darkGray, title: "8")
    let nine = CalcButtons(backgroundColor: .darkGray, title: "9")
    let times = CalcButtons(backgroundColor: .systemOrange, title: "×")
    let Ac = CalcButtons(backgroundColor: .lightGray, title: "AC")
    let negative = CalcButtons(backgroundColor: .systemGray, title: "+/-")
    let percentage = CalcButtons(backgroundColor: .systemGray, title: "%")
    let divide = CalcButtons(backgroundColor: .systemOrange, title: "÷")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureLabel()
        configureZeroButton()
        configureDotButton()
        configureEqualButton()
        configureOneButton()
        configureTwoButton()
        configureThreeButton()
        configurePlusButton()
        configureFourButton()
        configureFiveButton()
        configureSixButton()
        configureMinusButton()
        configureSevenButton()
        configureEightButton()
        configureNineButton()
        configureTimesButton()
        configureACButton()
        configureNegativeButton()
        configurePercentageButton()
        configureDivideButton()
    }

    func configureLabel()
    {
        view.addSubview(resultLabel)
        NSLayoutConstraint.activate([
            resultLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -(65+widthheight*5+50)),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            resultLabel.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/3)
        ])
    }
    
    func configureZeroButton()
    {
        view.addSubview(zero)
        zero.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            zero.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            zero.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            zero.heightAnchor.constraint(equalToConstant: widthheight),
            zero.widthAnchor.constraint(equalToConstant: widthheight*2 + 13)
        ])
    }
    
   func configureDotButton()
    {
        view.addSubview(dot)
        dot.addTarget(self, action: #selector(decimall), for: .touchUpInside)
        NSLayoutConstraint.activate([
            dot.leadingAnchor.constraint(equalTo: zero.trailingAnchor , constant: 16),
            dot.heightAnchor.constraint(equalToConstant: widthheight),
            dot.widthAnchor.constraint(equalToConstant: widthheight),
            dot.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
    
    func configureEqualButton()
    {
        view.addSubview(equals)
        equals.addTarget(self, action: #selector(equall), for: .touchUpInside)
        NSLayoutConstraint.activate([
            equals.leadingAnchor.constraint(equalTo: dot.trailingAnchor , constant: 16),
            equals.heightAnchor.constraint(equalToConstant: widthheight),
            equals.widthAnchor.constraint(equalToConstant: widthheight),
            equals.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
    
    func configureOneButton()
    {
        view.addSubview(one)
        one.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            one.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant: 16),
            one.heightAnchor.constraint(equalToConstant: widthheight),
            one.widthAnchor.constraint(equalToConstant: widthheight),
            one.bottomAnchor.constraint(equalTo: zero.topAnchor, constant: -16)
        ])
    }
    
    func configureTwoButton()
    {
        view.addSubview(two)
        two.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            two.leadingAnchor.constraint(equalTo: one.trailingAnchor, constant: 13),
            two.heightAnchor.constraint(equalToConstant: widthheight),
            two.widthAnchor.constraint(equalToConstant: widthheight),
            two.bottomAnchor.constraint(equalTo: zero.topAnchor, constant: -16)
        ])
    }
    
    func configureThreeButton()
    {
        view.addSubview(three)
        three.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            three.leadingAnchor.constraint(equalTo: two.trailingAnchor, constant: 13),
            three.heightAnchor.constraint(equalToConstant: widthheight),
            three.widthAnchor.constraint(equalToConstant: widthheight),
            three.bottomAnchor.constraint(equalTo: dot.topAnchor, constant: -16)
        ])
    }

    func configurePlusButton()
    {
        view.addSubview(plus)
        plus.addTarget(self, action: #selector(addd), for: .touchUpInside)
        NSLayoutConstraint.activate([
            plus.leadingAnchor.constraint(equalTo: three.trailingAnchor, constant: 16),
            plus.heightAnchor.constraint(equalToConstant: widthheight),
            plus.widthAnchor.constraint(equalToConstant: widthheight),
            plus.bottomAnchor.constraint(equalTo: equals.topAnchor, constant: -16)
        ])
    }
    
    func configureFourButton()
    {
        view.addSubview(four)
        four.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            four.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            four.heightAnchor.constraint(equalToConstant: widthheight),
            four.widthAnchor.constraint(equalToConstant: widthheight),
            four.bottomAnchor.constraint(equalTo: one.topAnchor, constant: -16)
        ])
    }
    
    func configureFiveButton()
    {
        view.addSubview(five)
        five.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            five.leadingAnchor.constraint(equalTo: four.trailingAnchor, constant: 13),
            five.heightAnchor.constraint(equalToConstant: widthheight),
            five.widthAnchor.constraint(equalToConstant: widthheight),
            five.bottomAnchor.constraint(equalTo: two.topAnchor, constant: -16)
        ])
    }
    
    func configureSixButton()
    {
        view.addSubview(six)
        six.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            six.leadingAnchor.constraint(equalTo: five.trailingAnchor, constant: 13),
            six.heightAnchor.constraint(equalToConstant: widthheight),
            six.widthAnchor.constraint(equalToConstant: widthheight),
            six.bottomAnchor.constraint(equalTo: three.topAnchor, constant: -16)
        ])
    }
    
    func configureMinusButton()
    {
        view.addSubview(minus)
        minus.addTarget(self, action: #selector(subtractt), for: .touchUpInside)
        NSLayoutConstraint.activate([
            minus.leadingAnchor.constraint(equalTo: six.trailingAnchor, constant: 16),
            minus.heightAnchor.constraint(equalToConstant: widthheight),
            minus.widthAnchor.constraint(equalToConstant: widthheight),
            minus.bottomAnchor.constraint(equalTo: plus.topAnchor, constant: -16)
        ])
    }
    
    func configureSevenButton()
    {
        view.addSubview(seven)
        seven.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            seven.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            seven.heightAnchor.constraint(equalToConstant: widthheight),
            seven.widthAnchor.constraint(equalToConstant: widthheight),
            seven.bottomAnchor.constraint(equalTo: four.topAnchor, constant: -16)
        ])
    }
    
    func configureEightButton()
    {
        view.addSubview(eight)
        eight.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            eight.leadingAnchor.constraint(equalTo: seven.trailingAnchor, constant: 13),
            eight.heightAnchor.constraint(equalToConstant: widthheight),
            eight.widthAnchor.constraint(equalToConstant: widthheight),
            eight.bottomAnchor.constraint(equalTo: five.topAnchor, constant: -16)
        ])
    }
    
    func configureNineButton()
    {
        view.addSubview(nine)
        nine.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        NSLayoutConstraint.activate([
            nine.leadingAnchor.constraint(equalTo: eight.trailingAnchor, constant: 13),
            nine.heightAnchor.constraint(equalToConstant: widthheight),
            nine.widthAnchor.constraint(equalToConstant: widthheight),
            nine.bottomAnchor.constraint(equalTo: six.topAnchor, constant: -16)
        ])
    }
    
    func configureTimesButton()
    {
        view.addSubview(times)
        times.addTarget(self, action: #selector(multiplication), for: .touchUpInside)
        NSLayoutConstraint.activate([
            times.leadingAnchor.constraint(equalTo: nine.trailingAnchor, constant: 16),
            times.heightAnchor.constraint(equalToConstant: widthheight),
            times.widthAnchor.constraint(equalToConstant: widthheight),
            times.bottomAnchor.constraint(equalTo: minus.topAnchor, constant: -16)
        ])
    }
    
    func configureACButton()
    {
        view.addSubview(Ac)
        Ac.addTarget(self, action: #selector(deletee), for: .touchUpInside)
        NSLayoutConstraint.activate([
            Ac.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            Ac.heightAnchor.constraint(equalToConstant: widthheight),
            Ac.widthAnchor.constraint(equalToConstant: widthheight),
            Ac.bottomAnchor.constraint(equalTo: nine.topAnchor, constant: -16)
        ])
    }
    
    func configureNegativeButton()
    {
        view.addSubview(negative)
        negative.addTarget(self, action: #selector(negativee), for: .touchUpInside)
        NSLayoutConstraint.activate([
            negative.leadingAnchor.constraint(equalTo: Ac.trailingAnchor, constant: 13),
            negative.heightAnchor.constraint(equalToConstant: widthheight),
            negative.widthAnchor.constraint(equalToConstant: widthheight),
            negative.bottomAnchor.constraint(equalTo: eight.topAnchor, constant: -16)
        ])
    }
    
    func configurePercentageButton()
    {
        view.addSubview(percentage)
        percentage.addTarget(self, action: #selector(percentagee), for: .touchUpInside)
        NSLayoutConstraint.activate([
            percentage.leadingAnchor.constraint(equalTo: negative.trailingAnchor, constant: 13),
            percentage.heightAnchor.constraint(equalToConstant: widthheight),
            percentage.widthAnchor.constraint(equalToConstant: widthheight),
            percentage.bottomAnchor.constraint(equalTo: nine.topAnchor, constant: -16)
        ])
    }
    
    func configureDivideButton()
    {
        view.addSubview(divide)
        divide.addTarget(self, action: #selector(division), for: .touchUpInside)
        NSLayoutConstraint.activate([
            divide.leadingAnchor.constraint(equalTo: percentage.trailingAnchor, constant: 16),
            divide.heightAnchor.constraint(equalToConstant: widthheight),
            divide.widthAnchor.constraint(equalToConstant: widthheight),
            divide.bottomAnchor.constraint(equalTo: times.topAnchor, constant: -16)
        ])
    }
    
    func Expression()
    {
        taps = taps.replacingOccurrences(of: "×", with: "*")
        taps = taps.replacingOccurrences(of: "÷", with: "*1.0/")
        if taps.last == "+" || taps.last == "-" || taps.last == "/" || taps.last == "*"
        {
            taps.removeLast()
        }
        expression = NSExpression(format: taps)
     
        if let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
            let y = result.doubleValue
            resultt = y
            resultLabel.text = String(resultt.clean)
        }
        else {
            print("failed")
        }
    }
    
    @objc func pressButton(sender: UIButton)
    {
        buttontaps.append(sender.titleLabel?.text ?? "")
        taps.append(sender.titleLabel?.text ?? "")
        resultLabel.text = buttontaps
    }
    
    @objc func deletee()
    {
        resultLabel.text = "0"
        buttontaps = ""
        taps = ""
    }
    
    @objc func negativee(sender: UIButton)
    {
        if buttontaps.first != "-"
        {
            buttontaps.insert("-", at: buttontaps.startIndex)
            taps.append("*-1")
            resultLabel.text = buttontaps
        }
        else
        {
            buttontaps.removeFirst()
            taps.append("*-1")
            resultLabel.text = buttontaps
        }
    }
    
    @objc func percentagee(sender: UIButton)
    {
        buttontaps = ""
        expression = NSExpression(format: taps)
        
        if let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
            let x = result.doubleValue
            resultt = (x)
            resultLabel.text = String(resultt/100)
        } else {
            print("failed")
        }
        taps.append("/100")
        taps = ""
        taps.append("\(resultt/100)")
    }
    
    @objc func division(sender: UIButton)
    {
        buttontaps = ""
        Expression()
        taps.append("/")
        resultLabel.text = String(resultt.clean)
    }
    
    @objc func multiplication(sender: UIButton)
    {
        buttontaps = ""
        Expression()
        taps.append("*")
        resultLabel.text = String(resultt.clean)
    }
    
    @objc func subtractt(sender: UIButton)
    {
        buttontaps = ""
        Expression()
        taps.append(sender.titleLabel?.text ?? "")
        resultLabel.text = String(resultt.clean)
    }
    
    @objc func addd(sender: UIButton)
    {
        buttontaps = ""
        Expression()
        taps.append(sender.titleLabel?.text ?? "")
        resultLabel.text = String(resultt.clean)
    }
    
    @objc func decimall(sender: UIButton)
    {
        buttontaps.append(sender.titleLabel?.text ?? "")
        taps.append(sender.titleLabel?.text ?? "")
        resultLabel.text = buttontaps
    }
    
    @objc func equall(sender: UIButton)
    {
        Expression()
        buttontaps = ""
    }
}

extension Double {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.f", self) : String(self)
    }
}
