import UIKit

class ResultViewController: UIViewController {
  
  var bmiValue: String?
  var advice: String?
  var color: UIColor?
  
  @IBOutlet weak var bmiLabel: UILabel!
  @IBOutlet weak var adviceLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }

  @IBAction func recalculatePressed(_ sender: UIButton) {
     dismiss(animated: true)
  }
  
  func updateUI() {
    bmiLabel.text = bmiValue
    adviceLabel.text = advice
    view.backgroundColor = color
  }
}
