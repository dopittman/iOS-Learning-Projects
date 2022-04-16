
import UIKit

class CalculatorViewController: UIViewController {
    
    //  Variables
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPercentBtn: UIButton!
    @IBOutlet weak var tenPercentBtn: UIButton!
    @IBOutlet weak var twentyPercentBtn: UIButton!
    @IBOutlet weak var splitNumberLevel: UILabel!
    
    @IBAction func tipChanged(_ sender: UIButton) {
        if (sender.currentTitle == "0%"){
            zeroPercentBtn.isSelected = true
            tenPercentBtn.isSelected = false
            twentyPercentBtn.isSelected = false
        } else if (sender.currentTitle == "10%"){
            zeroPercentBtn.isSelected = false
            tenPercentBtn.isSelected = true
            twentyPercentBtn.isSelected = false
        } else {
            zeroPercentBtn.isSelected = false
            tenPercentBtn.isSelected = false
            twentyPercentBtn.isSelected = true
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        print(Int(sender.value))
        splitNumberLevel.text = String(Int(sender.value))
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        zeroPercentBtn.isSelected = false
        tenPercentBtn.isSelected = false
        twentyPercentBtn.isSelected = false
        
    }


}

