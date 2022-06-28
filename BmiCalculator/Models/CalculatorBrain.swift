import UIKit

struct CalculatorBrain {
  
  var bmi: BMI?
  
  mutating func calculateBMI (height: Float, weight: Float) {
    let bmiValue = weight / (height * height)
    
    switch bmiValue {
    case 0...18.5:
      bmi = BMI(value: bmiValue, advice: "Underweight", color: UIColor.blue)
    case 18.5...24.9:
      bmi = BMI(value: bmiValue, advice: "Normal weight", color: UIColor.green)
    case 25...34.9:
      bmi = BMI(value: bmiValue, advice: "Overweight", color: UIColor.orange)
    case 35...100:
      bmi = BMI(value: bmiValue, advice: "Overweight", color: UIColor.orange)
    default:
      bmi = BMI(value: 0.0, advice: "Error getting bmi", color: UIColor.black)
    }
  }
  
  func getBMI () -> String {
    return String(format: "%.1f", bmi?.value ?? 0.0)
  }
  
  func getAdvice() -> String {
    return bmi?.advice ?? "Error getting advice"
  }
  
  func getColor() -> UIColor {
    return bmi?.color ?? UIColor.darkGray
  }
}

