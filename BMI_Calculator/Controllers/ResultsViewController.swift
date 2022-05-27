import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue : String?
    var bmiAdvice : String?
    var bmiColor : UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        self.view.backgroundColor = bmiColor
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
