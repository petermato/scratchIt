//
//  UNESCOViewController.swift
//  Prototype
//
//  Created by Peter Mato on 10/05/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import UIKit
import SwiftUI

class UNESCOViewController: UIViewController {

    
    @IBOutlet weak var BSstate: UIButton!
    //buttons outlets are mostly used to change buttons propperties
    @IBOutlet weak var BardejovState: UIButton!
    @IBOutlet weak var SpisState: UIButton!
    @IBOutlet weak var VlkolinecState: UIButton!
    @IBOutlet weak var KostolyState: UIButton!
    @IBOutlet weak var CavesState: UIButton!
    @IBOutlet weak var KarpatyState: UIButton!
    
    let defaults = UserDefaults.standard
    var bsIndex = Bool()
    var bssIndex = Bool()
    
    var bjIndex = Bool()
    var bjjIndex = Bool()
    
    var spisIndex = Bool()
    var spissIndex = Bool()
    
    var vlkolinecIndex = Bool()
    var vlkolineccIndex = Bool()
    
    var kostolyIndex = Bool()
    var kostolyyIndex = Bool()
    
    var cave = Bool()
    var caves = Bool()
    
    var karpaty = Bool()
    var karpatyy = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        checkForBSstate()
        checkForBJstate()
        checkForSpisState()
        checkForVlkolinecState()
        checkForKostolyState()
        checkForCaveState()
        checkForKarpatyState()
    }
    
    @IBAction func BSaction(_ sender: UIButton) {
       if BSstate.currentBackgroundImage  == UIImage(named: "shadowCheck") {
            BSstate.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
        bssIndex = true;
        defaults.set(bssIndex, forKey: "bsstate")
        }else {
            BSstate.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
        bssIndex = false
        defaults.set(bssIndex, forKey: "bsstate")
        }
    }
    
    // Banska Stiavnica button check state
    func checkForBSstate(){
        if let value = defaults.value(forKey: "bsstate"){
            bsIndex = value as! Bool
            BSstate.isSelected = bsIndex
        }
        if bsIndex == true {
            BSstate.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
        } else if bsIndex == false{
            BSstate.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
        }
    }
    
    
    @IBAction func BardejovAction(_ sender: Any) {
        if BardejovState.currentBackgroundImage == UIImage(named: "shadowCheck"){
            BardejovState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
            bjjIndex = true
            defaults.set(bjjIndex, forKey: "bardejov")
        }else {
            BardejovState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
            bjjIndex = false
            defaults.set(bjjIndex, forKey: "bardejov")
        }
    }
    
    // check for BJ state button
    func checkForBJstate(){
        if let value = defaults.value(forKey: "bardejov"){
            bjIndex = value as! Bool
            BardejovState.isSelected = bjIndex
        }
        if bjIndex == true {
            BardejovState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
        } else if bjIndex == false{
            BardejovState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
        }
    }
    
    @IBAction func SpisAction(_ sender: Any) {
        if SpisState.currentBackgroundImage == UIImage(named: "shadowCheck"){
            SpisState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
            spissIndex = true
            defaults.set(spissIndex, forKey: "spis")
        }else {
            SpisState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
            spissIndex = false
            defaults.set(spissIndex, forKey: "spis")
        }
    }
    
    // check for Spis state Button
    func checkForSpisState(){
        if let value = defaults.value(forKey: "spis"){
            spisIndex = value as! Bool
            SpisState.isSelected = spisIndex
        }
        if spisIndex == true {
            SpisState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
        } else if spisIndex == false{
            SpisState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
        }
    }
    
    @IBAction func VlkolinecAction(_ sender: Any) {
        if VlkolinecState.currentBackgroundImage == UIImage(named: "shadowCheck"){
            VlkolinecState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
            vlkolineccIndex = true
             defaults.set(vlkolineccIndex, forKey: "vlkolinec")
            
        }else {
            VlkolinecState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
            vlkolineccIndex = false
            defaults.set(vlkolineccIndex, forKey: "vlkolinec")
        }
    }
    
    func checkForVlkolinecState(){
        if let value = defaults.value(forKey: "vlkolinec"){
            vlkolinecIndex = value as! Bool
            VlkolinecState.isSelected = vlkolinecIndex
        }
        if vlkolinecIndex == true {
            VlkolinecState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
        } else if vlkolinecIndex == false{
            VlkolinecState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
        }
    }
    
    @IBAction func KostolyAction(_ sender: Any) {
        if KostolyState.currentBackgroundImage == UIImage(named: "shadowCheck"){
            KostolyState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
            kostolyyIndex = true
            defaults.set(kostolyyIndex, forKey: "kostoly")
        }else {
            KostolyState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
            kostolyyIndex = false
            defaults.set(vlkolineccIndex, forKey: "kostoly")
        }
    }
    
    func checkForKostolyState(){
        if let value = defaults.value(forKey: "kostoly"){
            kostolyIndex = value as! Bool
            KostolyState.isSelected = kostolyIndex
        }
        if kostolyIndex == true {
            KostolyState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
        } else if kostolyIndex == false{
            KostolyState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
        }
    }
    
    
    // MARK: -- prirodne dedicstvo
    
    @IBAction func CavesAction(_ sender: Any) {
        if CavesState.currentBackgroundImage == UIImage(named: "shadowCheck"){
            CavesState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
            caves = true
            defaults.set(caves, forKey: "cave")
        }else {
            CavesState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
            caves = false
            defaults.set(caves, forKey: "cave")
        }
    }
    
    func checkForCaveState(){
        if let value = defaults.value(forKey: "cave"){
            cave = value as! Bool
            CavesState.isSelected = cave
        }
        if cave == true {
            CavesState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
        } else if cave == false{
            CavesState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
        }
    }
    
    @IBAction func KarpatyAction(_ sender: Any) {
        if KarpatyState.currentBackgroundImage == UIImage(named: "shadowCheck"){
            KarpatyState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
            karpatyy = true
            defaults.set(karpatyy, forKey: "karpaty")
        }else {
            KarpatyState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
            karpatyy = false
            defaults.set(karpatyy, forKey: "karpaty")
        }
    }
    
    func checkForKarpatyState(){
        if let value = defaults.value(forKey: "karpaty"){
            karpaty = value as! Bool
            KarpatyState.isSelected = karpaty
        }
        if karpaty == true {
            KarpatyState.setBackgroundImage(UIImage(named: "greenCheck"), for: .normal)
        } else if karpaty == false{
            KarpatyState.setBackgroundImage(UIImage(named: "shadowCheck"), for: .normal)
        }
    }
    
    // MARK: -- button klik na obsah SWIFTui
    
    @IBAction func BanskaStiavnica(_ sender: UIButton) {
        let bsContent = ContentView()
        let host = UIHostingController(rootView: bsContent)
        navigationController?.pushViewController(host, animated: true)
    }
    
    @IBAction func Bardejov(_ sender: UIButton) {
        let bjContent = BardejovContent()
        let host = UIHostingController(rootView: bjContent)
        navigationController?.pushViewController(host, animated: true)
    }
    
    @IBAction func Spis(_ sender: UIButton) {
        let spisContent = SpisView()
        let host = UIHostingController(rootView: spisContent)
        navigationController?.pushViewController(host, animated: true)
    }
    
    @IBAction func Vlkolinec(_ sender: UIButton) {
        let vlkContent = VlkolinecContent()
        let host = UIHostingController(rootView: vlkContent)
        navigationController?.pushViewController(host, animated: true)
    }
    
    @IBAction func Kostoly(_ sender: UIButton) {
        let kostolContent = KostolyContent()
        let host = UIHostingController(rootView: kostolContent)
        navigationController?.pushViewController(host, animated: true)
    }
    
    @IBAction func Jaskyne(_ sender: UIButton) {
        let jaskyneContent = JaskyneContent()
        let host = UIHostingController(rootView: jaskyneContent)
        navigationController?.pushViewController(host, animated: true)
    }
    
    
    @IBAction func Pralesy(_ sender: UIButton) {
        let prales = KarpatyContent()
        let host = UIHostingController(rootView: prales)
        navigationController?.pushViewController(host, animated: true)
    }
}


