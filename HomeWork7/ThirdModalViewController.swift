//
//  ThirdModalViewController.swift
//  HomeWork7
//
//  Created by Dmitriy Budanov on 28.02.2022.
//

import UIKit

class ThirdModalViewController: UIViewController {

    // MARK: - Public properties
    
    var thirdGettedCustomer : Customer? = nil
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IBActions
    
    @IBSegueAction func prepareFourthModalVievController(_ coder: NSCoder) ->
        FourthModalViewController? {
            let destinationViewController = FourthModalViewController(coder: coder)
            destinationViewController?.FourthGettedCustomer = thirdGettedCustomer
        return destinationViewController
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        performSegue(withIdentifier: "thirdToFourth", sender: self)
    }
}
