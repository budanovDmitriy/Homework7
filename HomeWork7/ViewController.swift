//
//  ViewController.swift
//  HomeWork7
//
//  Created by Dmitriy Budanov on 25.02.2022.
//

import UIKit

class ViewController: UIViewController {

    let defaultCustomer = Customer(id: 1, name: "Petia", age: 22, discount: 5)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? FirstModalViewController{
            destinationViewController.gettedCustomer = defaultCustomer
        }
    }

}

