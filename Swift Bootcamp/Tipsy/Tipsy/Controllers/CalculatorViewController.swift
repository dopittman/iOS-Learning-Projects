
import UIKit

class CalculatorViewController: UIViewController {
    
    //  Variables
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPercentBtn: UIButton!
    @IBOutlet weak var tenPercentBtn: UIButton!
    @IBOutlet weak var twentyPercentBtn: UIButton!
    @IBOutlet weak var splitNumberLevel: UILabel!
    @IBOutlet weak var billTotalEmptyLabel: UILabel!
    
    var tipPercentage: Double = 0.0
    var splitTotal : Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        zeroPercentBtn.isSelected = false
        tenPercentBtn.isSelected = false
        twentyPercentBtn.isSelected = false
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        if (sender.currentTitle == "0%"){
            zeroPercentBtn.isSelected = true
            tenPercentBtn.isSelected = false
            twentyPercentBtn.isSelected = false
            tipPercentage = 0.0
        } else if (sender.currentTitle == "10%"){
            zeroPercentBtn.isSelected = false
            tenPercentBtn.isSelected = true
            twentyPercentBtn.isSelected = false
            tipPercentage = 0.1
        } else {
            zeroPercentBtn.isSelected = false
            tenPercentBtn.isSelected = false
            twentyPercentBtn.isSelected = true
            tipPercentage = 0.2
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLevel.text = String(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if (billTextField.text! != ""){
            let totalBill = Double(billTextField.text!)!
            let splitNumber = Double(splitNumberLevel.text!)!
            splitTotal = (totalBill + totalBill * tipPercentage) / splitNumber
            self.performSegue(withIdentifier: "goToResult", sender: self)
        } else {
            toggleWarningMessage()
        }
    }
    
    func toggleWarningMessage(){
        if(billTotalEmptyLabel.isHidden == true){
            billTotalEmptyLabel.isHidden = false
        } else {
            billTotalEmptyLabel.isHidden = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = String(format: " %.2f", splitTotal)
            destinationVC.tipPercentage = String(Int(tipPercentage * 100))
            destinationVC.totalPeople = splitNumberLevel.text!
        }
    }
    
    



}

