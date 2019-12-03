import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstnameErrorLabel: UILabel!
    @IBOutlet private weak var lastnameErrorLabel: UILabel!
    @IBOutlet private weak var firstnameTextfield: UITextField!
    @IBOutlet private weak var lastnameTextfield: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    let presenter: Presenter = Presenter()
    
    var viewModel: ViewModel! {
        didSet {
            firstnameErrorLabel.isHidden = viewModel.firstnameErrorHidden
            lastnameErrorLabel.isHidden = viewModel.lastnameErrorHidden
            resultLabel.text = viewModel.result
            resultLabel.isHidden = viewModel.resultHidden
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.get { (viewModel) in
            self.viewModel = viewModel
        }
    }
    
    @IBAction func get(_ sender: UIButton) {
        presenter.get { (viewModel) in
            self.viewModel = viewModel
        }
    }
    
    @IBAction func save(_ sender: UIButton) {
        presenter.save(model: FormViewModel(lastname: lastnameTextfield.text, firstname: firstnameTextfield.text)) {viewModel in
            self.viewModel = viewModel
        }
    }
}

