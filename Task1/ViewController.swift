//
//  ViewController.swift
//  Task1
//
//  Created by Manvendu Pathak on 20/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rectangleView612: UIView!
    @IBOutlet weak var stripeView: UIView!
    @IBOutlet weak var razorPayView: UIView!
    @IBOutlet weak var rectangle614: UIView!
    @IBOutlet weak var textView: UITextField!
    var halfsheetVC: SheetViewController?
    @IBAction func seeMorePressed(_ sender: UIButton) {
        halfsheetVC = SheetViewController()
        guard let halfsheetVC = halfsheetVC else {return}
        
        addChild(halfsheetVC)
        view.addSubview(halfsheetVC.view)
        halfsheetVC.didMove(toParent: self)
        
        let height = view.frame.height / 2
        let width = view.frame.width
        halfsheetVC.view.frame = CGRect(x: 0, y: view.frame.maxY, width: width, height: height)
        
        UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.8) {
                   halfsheetVC.view.frame.origin.y = self.view.frame.maxY - height
               }.startAnimation()
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    @IBOutlet weak var payButton: UIButton!
    
    
    private func setUI(){
        rectangleView612.layer.cornerRadius = 8
        rectangleView612.layer.masksToBounds = true
        rectangleView612.layer.borderWidth = 0.3
        rectangleView612.layer.borderColor = UIColor.gray.cgColor

        stripeView.layer.cornerRadius = 8
        stripeView.layer.masksToBounds = true
        stripeView.layer.borderWidth = 0.3
        stripeView.layer.borderColor = UIColor.gray.cgColor

        razorPayView.layer.cornerRadius = 8
        razorPayView.layer.masksToBounds = true
        razorPayView.layer.borderWidth = 0.3
        razorPayView.layer.borderColor = UIColor.gray.cgColor


        rectangle614.layer.cornerRadius = 8
        rectangle614.layer.masksToBounds = true

        let button = UIButton(type: .system)
        button.setTitle("Apply", for: .normal)
        textView.rightView = button
        textView.rightViewMode = .always
        let color1 = UIColor(red: 80, green: 185, blue: 167, alpha: 0.85)
        let color2 = UIColor(red: 58, green: 176, blue: 156, alpha: 0.95)
        let color3 = UIColor(red: 36, green: 167, blue: 145, alpha: 1)

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = payButton.bounds
        gradientLayer.colors = [color1, color2, color3]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        payButton.layer.insertSublayer(gradientLayer, at: 0)
    }
}

