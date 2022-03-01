//
//  FirstModalViewController.swift
//  HomeWork7
//
//  Created by Dmitriy Budanov on 28.02.2022.
//

import UIKit

class FirstModalViewController: UIViewController {

    // MARK: - Public properties
    
    var gettedCustomer : Customer? = nil
    var someString : String? = nil
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IBActions
    
    @IBSegueAction func prepareSecondModalViewController(_ coder: NSCoder) -> SecondModalViewController? {
        let destinationViewController = SecondModalViewController(coder: coder)
        destinationViewController?.secondGettedCustomer = gettedCustomer
        return destinationViewController
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        performSegue(withIdentifier: "firstToSecond", sender: self)
    }
}
