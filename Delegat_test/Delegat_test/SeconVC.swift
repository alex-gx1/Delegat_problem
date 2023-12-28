

import Foundation
import UIKit

class SeconVC: UIViewController {
    
    weak var delegate: SeconVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func helloWorldAction(_ sender: Any) {
        delegate?.newTextForLabel(text: "Hello world")
    }
   
}


