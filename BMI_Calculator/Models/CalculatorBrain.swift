import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    var advice: String?

func getBMIValue() -> String {
    if bmi != nil{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
    return bmiTo1DecimalPlace
    }
    else{
        return "0.0"
    }
}
    
    func getAdvice() -> String {
        let advice = bmi?.advice
        return advice!
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color
        return color!
    }

    mutating func calculateBMI (height: Float,weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks!", color: UIColor.blue)
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Healthy weight", color: UIColor.green)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Careful with your food", color: UIColor.red)

        }
}
}
