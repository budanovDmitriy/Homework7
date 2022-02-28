//
//  FirstModalViewController.swift
//  HomeWork7
//
//  Created by Dmitriy Budanov on 28.02.2022.
//

import UIKit

class FirstModalViewController: UIViewController {

    var gettedCustomer : Customer? = nil
    var someString : String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        print(gettedCustomer)
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func prepareSecondModalViewController(_ coder: NSCoder) -> SecondModalViewController? {
        
        let destinationViewController = SecondModalViewController(coder: coder)
        destinationViewController?.secondGettedCustomer = gettedCustomer
        return destinationViewController
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        performSegue(withIdentifier: "firstToSecond", sender: self)
    }
    
}
