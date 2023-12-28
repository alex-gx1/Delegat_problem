//
//  ViewController.swift
//  Delegat_test
//
//  Created by Алексей Кононенко on 28.12.23.
//

import UIKit

protocol SeconVCDelegate: AnyObject{
    func newTextForLabel(text: String)
}



class ViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
    }
    
    @IBAction private func pushDidTrap() {
       
        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = mainStoryBoard.instantiateViewController(withIdentifier: "SeconVC")
        navigationController?.pushViewController(secondVC, animated: false)
        
    }
    
   

}
extension ViewController: SeconVCDelegate {
    func newTextForLabel(text: String){
        label.text = text
    }
}
