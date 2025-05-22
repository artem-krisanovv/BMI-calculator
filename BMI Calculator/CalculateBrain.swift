import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / pow((height / 100), 2)
        switch bmiValue {
        case 0 ..< 18.5:
            bmi = BMI(value: bmiValue, advice: "Underweight", color: .cyan)
        case 18.5 ... 24.9:
            bmi = BMI(value: bmiValue, advice: "Normal weight", color: .green)
        default:
            bmi = BMI(value: bmiValue, advice: "Overweight", color: .red)
        }
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getBMIValue() -> String {
        let correctBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return correctBMI
    }
    
}
