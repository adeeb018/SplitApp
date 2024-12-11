//
//  ResultViewController.swift
//  Tips App
//
//  Created by Adeeb K on 11/12/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    var totalPerPerson: String?
    
    var tipPercentage: String?
    
    var splitNumber: String?

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = totalPerPerson
        settingsLabel.text = "Split between \(splitNumber!) people, with \(tipPercentage!)% tip"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
