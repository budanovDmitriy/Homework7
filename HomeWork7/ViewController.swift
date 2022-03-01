//
//  ViewController.swift
//  HomeWork7
//
//  Created by Dmitriy Budanov on 25.02.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Public properties
    
    let defaultCustomer = Customer(id: 1, name: "Petia", age: 22, discount: 5)
    let someString = "String from viewController"
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? FirstModalViewController{
            destinationViewController.gettedCustomer = defaultCustomer
        }
        else if let destinationViewController = segue.destination as? FourthModalViewController {
            destinationViewController.someString = someString
            
        }
    }
    
    // MARK: - IBActions

    @IBAction func buttonAction(_ sender: Any) {
        performSegue(withIdentifier: "viewControllerToFourth", sender: self)
    }
    
}

