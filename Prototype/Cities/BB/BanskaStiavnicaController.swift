//
//  BanskaStiavnicaController.swift
//  Prototype
//
//  Created by Peter Mato on 09/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import UIKit
import SafariServices

class BanskaStiavnicaController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var chooseMenu: UISegmentedControl!
   
    

    var selectedIndex = Int()
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.backgroundColor = .systemGray6
        checkForSegmentIndex()
        checkForSavedText()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func SaveSegment(_ sender: UISegmentedControl) {
        defaults.set(sender.selectedSegmentIndex, forKey: "chosen2")
        defaults.synchronize()
    }
    
    @IBAction func SaveButton(_ sender: UIButton) {
        defaults.set(textView.text!, forKey: "content2")
    }
    
    @IBAction func WebOpenButton(_ sender: UIButton) {
            showSafariVC(for: "https://sk.m.wikipedia.org/wiki/Bansk%C3%A1_%C5%A0tiavnica")
    }
    
    func checkForSegmentIndex(){
        if let value = defaults.value(forKey: "chosen2"){
             selectedIndex = value as! Int
            chooseMenu.selectedSegmentIndex = selectedIndex
        }
        else {
            let alert = UIAlertController(title: "Upozornenie", message: "Kluc nenajdeny.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func checkForSavedText(){
        let text = defaults.value(forKey: "content2") as? String ?? "Povedz niečo o svojom výlete ... "
        textView.text = text
    }
    
    //show wikipedia url link in Safari
    func showSafariVC(for url: String){
        guard let url  = URL(string: url) else{
            let alert = UIAlertController(title: "Upozornenie", message: "Webová adresa nenájdená.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    
}
