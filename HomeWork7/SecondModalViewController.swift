//
//  SecondModalViewController.swift
//  HomeWork7
//
//  Created by Dmitriy Budanov on 28.02.2022.
//

import UIKit

class SecondModalViewController: UIViewController {

    // MARK: - Public properties
    
    var secondGettedCustomer : Customer? = nil
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IBActions
    
    @IBSegueAction func prepareThirdModalViewController(_ coder: NSCoder) -> ThirdModalViewController? {
        let destinationViewController = ThirdModalViewController(coder: coder)
        destinationViewController?.thirdGettedCustomer = secondGettedCustomer
        return destinationViewController
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        performSegue(withIdentifier: "secondToThird", sender: self)
    }
}
