//
//  ZiarNhronomController.swift
//  Prototype
//
//  Created by Peter Mato on 09/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import UIKit
import SafariServices

class ZiarNhronomController: UIViewController {
    @IBOutlet weak var segmentIndex: UISegmentedControl!
    @IBOutlet weak var textView: UITextView!
    
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
    
    @IBAction func WebOpen(_ sender: UIButton) {
        showSafariVC(for: "https://sk.wikipedia.org/wiki/%C5%BDiar_nad_Hronom")
    }
    
    @IBAction func SegmentButton(_ sender: UISegmentedControl) {
        defaults.set(sender.selectedSegmentIndex, forKey: "chosen13")
        defaults.synchronize()
    }
    
    @IBAction func SaveButton(_ sender: UIButton) {
        defaults.set(textView.text!, forKey: "content13")
    }
    
    func checkForSegmentIndex(){
              if let value = defaults.value(forKey: "chosen13"){
                   selectedIndex = value as! Int
                  segmentIndex.selectedSegmentIndex = selectedIndex
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
              let text = defaults.value(forKey: "content13") as? String ?? "Povedz niečo o svojom výlete ... "
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
