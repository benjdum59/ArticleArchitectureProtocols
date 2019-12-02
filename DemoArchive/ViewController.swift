import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstnameErrorLabel: UILabel!
    @IBOutlet private weak var lastnameErrorLabel: UILabel!
    @IBOutlet private weak var firstnameTextfield: UITextField!
    @IBOutlet private weak var lastnameTextfield: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func save(_ sender: UIButton) {
    }
}

