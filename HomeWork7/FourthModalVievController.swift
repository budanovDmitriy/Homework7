//
//  FourthModalVievController.swift
//  HomeWork7
//
//  Created by Dmitriy Budanov on 28.02.2022.
//

import UIKit

class FourthModalViewController: UIViewController {

    var FourthGettedCustomer : Customer? = nil
    var someString : String? = nil
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var someStringLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        idLabel.text = "id: \( FourthGettedCustomer?.id ?? -1)"
        nameLabel.text = "name: \( FourthGettedCustomer?.name ?? "No info")"
        ageLabel.text = "age: \( FourthGettedCustomer?.age ?? -1 )"
        discountLabel.text = "discount: \( FourthGettedCustomer?.discount ?? -1)"
        someStringLabel.text = "someString: \(someString ?? "not found" )"
        
    }


}
