//
//  ThirdModalViewController.swift
//  HomeWork7
//
//  Created by Dmitriy Budanov on 28.02.2022.
//

import UIKit

class ThirdModalViewController: UIViewController {

    var thirdGettedCustomer : Customer? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        print(thirdGettedCustomer)
        // Do any additional setup after loading the view.
    }

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
