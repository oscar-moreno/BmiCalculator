import UIKit

class CalculateViewController: UIViewController {
  
  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  
  var calculator = CalculatorBrain()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func heightSliderChanged(_ sender: UISlider) {
    heightLabel.text = String(format: "%.2f", sender.value) + "m"
  }
  
  @IBAction func weightSliderChanged(_ sender: UISlider) {
    weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
  }
  
  @IBAction func calculatePressed(_ sender: UIButton) {
    let height = heightSlider.value
    let weight = weightSlider.value
    calculator.calculateBMI(height: height, weight: weight)
    performSegue(withIdentifier: "goToResult", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultViewController
      destinationVC.bmiValue = calculator.getBMI()
      destinationVC.advice = calculator.getAdvice()
      destinationVC.color = calculator.getColor()
    }
  }
}

