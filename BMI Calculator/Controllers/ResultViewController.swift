

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var resultAdvice: UILabel!
    
    var bmiValue:String?
    var color : UIColor?
    var advice : String?
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultAdvice.text = advice
        view.backgroundColor = color
        

        bmiResult.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

}
