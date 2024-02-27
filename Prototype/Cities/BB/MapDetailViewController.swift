//
//  MapDetailViewController.swift
//  Prototype
//
//  Created by Peter Mato on 29/04/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import UIKit
import SafariServices

class MapDetailViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var PicView: UIImageView!
    @IBOutlet weak var CityName: UILabel!
    @IBOutlet weak var chooseMenu: UISegmentedControl!
    @IBOutlet weak var textView: UITextView!
    
    var selectedIndex = Int()
    var newIndex = Int()
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkForSegmentIndex()
        checkForSavedText()
        textView.backgroundColor = .systemGray6
  //      NotificationCenter.default.addObserver(self, selector: #selector(MapDetailViewController.updateTextView(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        NotificationCenter.default.addObserver(self,selector: #selector(MapDetailViewController.updateTextView(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
            }
    
    //funkcia "vypina" klavesnicu pri dotyku mimo textviewu
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func SaveButton(_ sender: UIButton) {
        saveTextContent()
    }
    
    
    @IBAction func PutYes(_ sender: UISegmentedControl) {
        defaults.set(sender.selectedSegmentIndex, forKey: "chosenOne")
        defaults.synchronize()
    }
    
    @IBAction func WebOpen(_ sender: UIButton) {
        showSafariVC(for: "https://sk.m.wikipedia.org/wiki/Bansk%C3%A1_Bystrica")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func updateTextView (notification: Notification){
      let userInfo = notification.userInfo!
      
    let keyboardEndFrameScreenCoordinates = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
    let keyboardEnFrame = self.view.convert(keyboardEndFrameScreenCoordinates, to: view.window)
    if notification.name == UIResponder.keyboardWillHideNotification{
        textView.contentInset = UIEdgeInsets.zero
    }
    else{
        textView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardEnFrame.height, right: 0)
        textView.scrollIndicatorInsets = textView.contentInset
    }
    textView.scrollRangeToVisible(textView.selectedRange)
    }
    
    func saveTextContent(){
        defaults.set(textView.text!, forKey: "content")
    }
    
    func checkForSegmentIndex(){
        if let value = defaults.value(forKey: "chosenOne"){
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
        let text = defaults.value(forKey: "content") as? String ?? "Povedz niečo o svojom výlete ... "
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

