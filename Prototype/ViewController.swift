//
//  ViewController.swift
//  Prototype
//
//  Created by Peter Mato on 23/04/2020.
//  Copyright © 2020 Peter Mato. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    @IBOutlet weak var NewView: UIView!
    @IBOutlet weak var SecovceImage: UIImageView!
  //  @IBOutlet weak var tblView: UITableView!
    
    // KE OUTLETS
    @IBOutlet weak var KEokolie: UIImageView!
    // BB OUTLETS
    @IBOutlet weak var BB: UIImageView!
    @IBOutlet weak var BS: UIImageView!
    @IBOutlet weak var BR: UIImageView!
    @IBOutlet weak var DT: UIImageView!
    @IBOutlet weak var KR: UIImageView!
    @IBOutlet weak var LC: UIImageView!
    @IBOutlet weak var PT: UIImageView!
    @IBOutlet weak var RV: UIImageView!
    @IBOutlet weak var RS: UIImageView!
    @IBOutlet weak var VK: UIImageView!
    @IBOutlet weak var ZV: UIImageView!
    @IBOutlet weak var ZR: UIImageView!
    @IBOutlet weak var ZH: UIImageView!
    // BA OUTLETS
    @IBOutlet weak var BA: UIImageView!
    @IBOutlet weak var MA: UIImageView!
    @IBOutlet weak var PZ: UIImageView!
    @IBOutlet weak var SE: UIImageView!
    // KE OUTLETS
    @IBOutlet weak var GE: UIImageView!
    @IBOutlet weak var KE: UIImageView!
    @IBOutlet weak var KS: UIImageView!
    @IBOutlet weak var MI: UIImageView!
    @IBOutlet weak var RZ: UIImageView!
    @IBOutlet weak var SO: UIImageView!
    @IBOutlet weak var SN: UIImageView!
    @IBOutlet weak var TV: UIImageView!
    // NI OUTLETS
    @IBOutlet weak var KO: UIImageView!
    @IBOutlet weak var LE: UIImageView!
    @IBOutlet weak var NI: UIImageView!
    @IBOutlet weak var NZ: UIImageView!
    @IBOutlet weak var SA: UIImageView!
    @IBOutlet weak var TP: UIImageView!
    @IBOutlet weak var ZM: UIImageView!
    // PO OUTLETS
    @IBOutlet weak var BJ: UIImageView!
    @IBOutlet weak var HU: UIImageView!
    @IBOutlet weak var KK: UIImageView!
    @IBOutlet weak var LA: UIImageView!
    @IBOutlet weak var MDZ: UIImageView!
    @IBOutlet weak var PP: UIImageView!
    @IBOutlet weak var PO: UIImageView!
    @IBOutlet weak var SB: UIImageView!
    @IBOutlet weak var SV: UIImageView!
    @IBOutlet weak var SL: UIImageView!
    @IBOutlet weak var ST: UIImageView!
    @IBOutlet weak var SK: UIImageView!
    @IBOutlet weak var VT: UIImageView!
    // TR OUTLETS
    @IBOutlet weak var BU: UIImageView!
    @IBOutlet weak var IL: UIImageView!
    @IBOutlet weak var MY: UIImageView!
    @IBOutlet weak var NV: UIImageView!
    @IBOutlet weak var PE: UIImageView!
    @IBOutlet weak var PB: UIImageView!
    @IBOutlet weak var PR: UIImageView!
    @IBOutlet weak var PU: UIImageView!
    @IBOutlet weak var TR: UIImageView!
    // TT OUTLETS
    @IBOutlet weak var DS: UIImageView!
    @IBOutlet weak var GA: UIImageView!
    @IBOutlet weak var HC: UIImageView!
    @IBOutlet weak var PI: UIImageView!
    @IBOutlet weak var SC: UIImageView!
    @IBOutlet weak var SI: UIImageView!
    @IBOutlet weak var TT: UIImageView!
    // ZA OUTLETS
    @IBOutlet weak var BY: UIImageView!
    @IBOutlet weak var CA: UIImageView!
    @IBOutlet weak var DK: UIImageView!
    @IBOutlet weak var KNM: UIImageView!
    @IBOutlet weak var LM: UIImageView!
    @IBOutlet weak var MT: UIImageView!
    @IBOutlet weak var NA: UIImageView!
    @IBOutlet weak var RK: UIImageView!
    @IBOutlet weak var TK: UIImageView!
    @IBOutlet weak var TD: UIImageView!
    @IBOutlet weak var ZA: UIImageView!
    
    @IBOutlet var ViewNew: UIView!
  
    
    @IBOutlet weak var slovakia: UIImageView!
    
    // Outlet collections for regions
    @IBOutlet var CityBut: [UIButton]!
    @IBOutlet var CityBA: [UIButton]!
    @IBOutlet var CityKE: [UIButton]!
    @IBOutlet var CityNI: [UIButton]!
    @IBOutlet var CityPO: [UIButton]!
    @IBOutlet var CityTR: [UIButton]!
    @IBOutlet var CityTT: [UIButton]!
    @IBOutlet var CityZA: [UIButton]!
    
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewWillAppear(true)
        
        _ = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(fire), userInfo: nil, repeats: true)
        
        let backgroundImage = UIImageView(frame: NewView.bounds) 
        backgroundImage.image = UIImage(named: "slovakia")
        backgroundImage.clipsToBounds = true
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFit
        self.NewView.insertSubview(backgroundImage, at: 0)

    }
    
    @objc func fire()
    {
        checkForBB()
        checkForBA()
        checkForKE()
        checkForNI()
        checkForPO()
        checkForTR()
        checkForTT()
        checkForZA()
    }

    
    func checkForBB(){
        //BB
        checkForStylePrefOfBB()
        checkForStylePrefBS()
        checkForStylePrefBR()
        checkForStylePrefDT()
        checkForStylePrefKR()
        checkForStylePrefLC()
        checkForStylePrefPT()
        checkForStylePrefRV()
        checkForStylePrefRS()
        checkForStylePrefVK()
        checkForStylePrefZV()
        checkForStylePrefZR()
        checkForStylePrefZH()
    }
    
    func checkForBA(){
        //BA
        checkForStylePrefBA()
        checkForStylePrefMA()
        checkForStylePrefPZ()
        checkForStylePrefSE()
    }
    
    func checkForKE(){
        //KE
        checkForStylePrefGE()
        checkForStylePrefKE()
        checkForStylePrefKS()
        checkForStylePrefMI()
        checkForStylePrefRZ()
        checkForStylePrefSO()
        checkForStylePrefSN()
        checkForStylePrefTV()
    }
    
    func checkForNI(){
        //NI
        checkForStylePrefKO()
        checkForStylePrefLE()
        checkForStylePrefNI()
        checkForStylePrefNZ()
        checkForStylePrefSA()
        checkForStylePrefTP()
        checkForStylePrefZM()
    }
    
    func checkForPO(){
        //PO
        checkForStylePrefBJ()
        checkForStylePrefHU()
        checkForStylePrefKK()
        checkForStylePrefLA()
        checkForStylePrefMDZ()
        checkForStylePrefPP()
        checkForStylePrefPO()
        checkForStylePrefSB()
        checkForStylePrefSV()
        checkForStylePrefSL()
        checkForStylePrefST()
        checkForStylePrefSK()
        checkForStylePrefVT()
    }
    
    func checkForTR(){
        //TR
        checkForStylePrefBU()
        checkForStylePrefIL()
        checkForStylePrefMY()
        checkForStylePrefNV()
        checkForStylePrefPE()
        checkForStylePrefPB()
        checkForStylePrefPR()
        checkForStylePrefPU()
        checkForStylePrefTR()
    }
    
    func checkForTT(){
        //TT
        checkForStylePrefDS()
        checkForStylePrefGA()
        checkForStylePrefHC()
        checkForStylePrefPI()
        checkForStylePrefSC()
        checkForStylePrefSI()
        checkForStylePrefTT()
    }
    
    func checkForZA(){
        //ZA
        checkForStylePrefBY()
        checkForStylePrefCA()
        checkForStylePrefDK()
        checkForStylePrefKNM()
        checkForStylePrefLM()
        checkForStylePrefMT()
        checkForStylePrefNA()
        checkForStylePrefRK()
        checkForStylePrefTK()
        checkForStylePrefTD()
        checkForStylePrefZA()
    }
    

    
    override func didReceiveMemoryWarning() {
        let alert = UIAlertController(title: "Upozornenie", message: "Nízky stav pamäte.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func InfoUIsegue(_ sender: UIButton) {
        let info = InfoUI()
         let host = UIHostingController(rootView: info)
         navigationController?.pushViewController(host, animated: true)
    }
    
    @IBAction func shareButton(_ sender: UIButton) {
        // do a screenshot
        UIGraphicsBeginImageContext(NewView.frame.size)
        NewView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        //pop up share menu with screenshot inside
        let activityVC = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC,animated: true,completion: nil)
    }
    
    
    // MARK: -- check BB region
    func checkForStylePrefOfBB(){
        let prefersDarkMode = defaults.integer(forKey: "chosenOne")
        
       if prefersDarkMode == 1{
                  BB.isHidden = false
              }else if prefersDarkMode == 0{
                  BB.isHidden = true
        }
        
    }
    
    func checkForStylePrefBS(){
         let prefersDarkMode = defaults.integer(forKey: "chosen2")
         
        if prefersDarkMode == 1{
                   BS.isHidden = false
               }else if prefersDarkMode == 0{
                   BS.isHidden = true
               }
    }
    
    func checkForStylePrefBR(){
         let prefersDarkMode = defaults.integer(forKey: "chosenThree")
         
        if prefersDarkMode == 1{
                   BR.isHidden = false
               }else if prefersDarkMode == 0{
                   BR.isHidden = true
               }
    }
    
    func checkForStylePrefDT(){
         let prefersDarkMode = defaults.integer(forKey: "chosen4")
         
        if prefersDarkMode == 1{
                   DT.isHidden = false
               }else if prefersDarkMode == 0{
                   DT.isHidden = true
               }
    }
    
    func checkForStylePrefKR(){
         let prefersDarkMode = defaults.integer(forKey: "chosen5")
         
        if prefersDarkMode == 1{
                   KR.isHidden = false
               }else if prefersDarkMode == 0{
                   KR.isHidden = true
               }
    }
    
    func checkForStylePrefLC(){
         let prefersDarkMode = defaults.integer(forKey: "chosen6")
         
        if prefersDarkMode == 1{
                   LC.isHidden = false
               }else if prefersDarkMode == 0{
                   LC.isHidden = true
               }
    }
    
    func checkForStylePrefPT(){
         let prefersDarkMode = defaults.integer(forKey: "chosen7")
         
        if prefersDarkMode == 1{
                   PT.isHidden = false
               }else if prefersDarkMode == 0{
                   PT.isHidden = true
               }
    }
    
    func checkForStylePrefRV(){
         let prefersDarkMode = defaults.integer(forKey: "chosen8")
         
        if prefersDarkMode == 1{
                   RV.isHidden = false
               }else if prefersDarkMode == 0{
                   RV.isHidden = true
               }
    }
    
    func checkForStylePrefRS(){
         let prefersDarkMode = defaults.integer(forKey: "chosen9")
         
        if prefersDarkMode == 1{
                   RS.isHidden = false
               }else if prefersDarkMode == 0{
                   RS.isHidden = true
               }
    }
    
    func checkForStylePrefVK(){
         let prefersDarkMode = defaults.integer(forKey: "chosen10")
         
        if prefersDarkMode == 1{
                   VK.isHidden = false
               }else if prefersDarkMode == 0{
                   VK.isHidden = true
               }
    }
    
    func checkForStylePrefZV(){
         let prefersDarkMode = defaults.integer(forKey: "chosen11")
         
        if prefersDarkMode == 1{
                   ZV.isHidden = false
               }else if prefersDarkMode == 0{
                   ZV.isHidden = true
               }
    }
    
    func checkForStylePrefZR(){
         let prefersDarkMode = defaults.integer(forKey: "chosen12")
         
        if prefersDarkMode == 1{
                   ZR.isHidden = false
               }else if prefersDarkMode == 0{
                   ZR.isHidden = true
               }
    }
    
    func checkForStylePrefZH(){
         let prefersDarkMode = defaults.integer(forKey: "chosen13")
         
        if prefersDarkMode == 1{
                   ZH.isHidden = false
               }else if prefersDarkMode == 0{
                   ZH.isHidden = true
               }
    }
    
    //MARK:-- marking BA region
    func checkForStylePrefBA(){
         let prefersDarkMode = defaults.integer(forKey: "chosen14")
         
        if prefersDarkMode == 1{
                   BA.isHidden = false
               }else if prefersDarkMode == 0{
                   BA.isHidden = true
               }
    }
    
    func checkForStylePrefMA(){
         let prefersDarkMode = defaults.integer(forKey: "chosen15")
         
        if prefersDarkMode == 1{
                   MA.isHidden = false
               }else if prefersDarkMode == 0{
                   MA.isHidden = true
               }
    }
    
    func checkForStylePrefPZ(){
         let prefersDarkMode = defaults.integer(forKey: "chosen16")
         
        if prefersDarkMode == 1{
                   PZ.isHidden = false
               }else if prefersDarkMode == 0{
                   PZ.isHidden = true
               }
    }
    
    func checkForStylePrefSE(){
         let prefersDarkMode = defaults.integer(forKey: "chosen17")
         
        if prefersDarkMode == 1{
                   SE.isHidden = false
               }else if prefersDarkMode == 0{
                   SE.isHidden = true
               }
    }
    
    
    //MARK:-- KE marking
    
    func checkForStylePrefGE(){
          let prefersDarkMode = defaults.integer(forKey: "chosen18")
          
         if prefersDarkMode == 1{
                    GE.isHidden = false
                }else if prefersDarkMode == 0{
                    GE.isHidden = true
                }
     }
    
    func checkForStylePrefKE(){
          let prefersDarkMode = defaults.integer(forKey: "chosen19")
          
         if prefersDarkMode == 1{
                    KE.isHidden = false
                }else if prefersDarkMode == 0{
                    KE.isHidden = true
                }
     }
    
    func checkForStylePrefKS(){
          let prefersDarkMode = defaults.integer(forKey: "chosen20")
          
         if prefersDarkMode == 1{
                    KS.isHidden = false
                }else if prefersDarkMode == 0{
                    KS.isHidden = true
                }
     }
    
    func checkForStylePrefMI(){
          let prefersDarkMode = defaults.integer(forKey: "chosen21")
          
         if prefersDarkMode == 1{
                    MI.isHidden = false
                }else if prefersDarkMode == 0{
                    MI.isHidden = true
                }
     }
    
    func checkForStylePrefRZ(){
          let prefersDarkMode = defaults.integer(forKey: "chosen22")
          
         if prefersDarkMode == 1{
                    RZ.isHidden = false
                }else if prefersDarkMode == 0{
                    RZ.isHidden = true
                }
     }
    
    func checkForStylePrefSO(){
          let prefersDarkMode = defaults.integer(forKey: "chosen23")
          
         if prefersDarkMode == 1{
                    SO.isHidden = false
                }else if prefersDarkMode == 0{
                    SO.isHidden = true
                }
     }
    
    func checkForStylePrefSN(){
          let prefersDarkMode = defaults.integer(forKey: "chosen24")
          
         if prefersDarkMode == 1{
                    SN.isHidden = false
                }else if prefersDarkMode == 0{
                    SN.isHidden = true
                }
     }
    
    func checkForStylePrefTV(){
          let prefersDarkMode = defaults.integer(forKey: "chosen25")
          
         if prefersDarkMode == 1{
                    TV.isHidden = false
                }else if prefersDarkMode == 0{
                    TV.isHidden = true
                }
     }
    
    //MARK:-- NI marking
    
    func checkForStylePrefKO(){
          let prefersDarkMode = defaults.integer(forKey: "chosen26")
          
         if prefersDarkMode == 1{
                    KO.isHidden = false
                }else if prefersDarkMode == 0{
                    KO.isHidden = true
                }
     }
    
    func checkForStylePrefLE(){
          let prefersDarkMode = defaults.integer(forKey: "chosen27")
          
         if prefersDarkMode == 1{
                    LE.isHidden = false
                }else if prefersDarkMode == 0{
                    LE.isHidden = true
                }
     }
    
    func checkForStylePrefNI(){
          let prefersDarkMode = defaults.integer(forKey: "chosen28")
          
         if prefersDarkMode == 1{
                    NI.isHidden = false
                }else if prefersDarkMode == 0{
                    NI.isHidden = true
                }
     }
    
    func checkForStylePrefNZ(){
          let prefersDarkMode = defaults.integer(forKey: "chosen29")
          
         if prefersDarkMode == 1{
                    NZ.isHidden = false
                }else if prefersDarkMode == 0{
                    NZ.isHidden = true
                }
     }
    
    func checkForStylePrefSA(){
          let prefersDarkMode = defaults.integer(forKey: "chosen30")
          
         if prefersDarkMode == 1{
                    SA.isHidden = false
                }else if prefersDarkMode == 0{
                    SA.isHidden = true
                }
     }
    
    func checkForStylePrefTP(){
           let prefersDarkMode = defaults.integer(forKey: "chosen31")
           
          if prefersDarkMode == 1{
                     TP.isHidden = false
                 }else if prefersDarkMode == 0{
                     TP.isHidden = true
                 }
      }
    
    func checkForStylePrefZM(){
           let prefersDarkMode = defaults.integer(forKey: "chosen32")
           
          if prefersDarkMode == 1{
                     ZM.isHidden = false
                 }else if prefersDarkMode == 0{
                     ZM.isHidden = true
                 }
      }
    
        //MARK:-- PO marking
    
    func checkForStylePrefBJ(){
           let prefersDarkMode = defaults.integer(forKey: "chosen33")
           
          if prefersDarkMode == 1{
                     BJ.isHidden = false
                 }else if prefersDarkMode == 0{
                     BJ.isHidden = true
                 }
      }
    
    func checkForStylePrefHU(){
           let prefersDarkMode = defaults.integer(forKey: "chosen34")
           
          if prefersDarkMode == 1{
                     HU.isHidden = false
                 }else if prefersDarkMode == 0{
                     HU.isHidden = true
                 }
      }
    
    func checkForStylePrefKK(){
           let prefersDarkMode = defaults.integer(forKey: "chosen35")
           
          if prefersDarkMode == 1{
                     KK.isHidden = false
                 }else if prefersDarkMode == 0{
                     KK.isHidden = true
                 }
      }
    
    func checkForStylePrefLA(){
           let prefersDarkMode = defaults.integer(forKey: "chosen36")
           
          if prefersDarkMode == 1{
                     LA.isHidden = false
                 }else if prefersDarkMode == 0{
                     LA.isHidden = true
                 }
      }
    
    func checkForStylePrefMDZ(){
           let prefersDarkMode = defaults.integer(forKey: "chosen37")
           
          if prefersDarkMode == 1{
                     MDZ.isHidden = false
                 }else if prefersDarkMode == 0{
                     MDZ.isHidden = true
                 }
      }
    
    func checkForStylePrefPP(){
           let prefersDarkMode = defaults.integer(forKey: "chosen38")
           
          if prefersDarkMode == 1{
                     PP.isHidden = false
                 }else if prefersDarkMode == 0{
                     PP.isHidden = true
                 }
      }
    
    func checkForStylePrefPO(){
           let prefersDarkMode = defaults.integer(forKey: "chosen39")
           
          if prefersDarkMode == 1{
                     PO.isHidden = false
                 }else if prefersDarkMode == 0{
                     PO.isHidden = true
                 }
      }
    
    func checkForStylePrefSB(){
           let prefersDarkMode = defaults.integer(forKey: "chosen40")
           
          if prefersDarkMode == 1{
                     SB.isHidden = false
                 }else if prefersDarkMode == 0{
                     SB.isHidden = true
                 }
      }
    
    func checkForStylePrefSV(){
           let prefersDarkMode = defaults.integer(forKey: "chosen41")
           
          if prefersDarkMode == 1{
                     SV.isHidden = false
                 }else if prefersDarkMode == 0{
                     SV.isHidden = true
                 }
      }
    
    func checkForStylePrefSL(){
           let prefersDarkMode = defaults.integer(forKey: "chosen42")
           
          if prefersDarkMode == 1{
                     SL.isHidden = false
                 }else if prefersDarkMode == 0{
                     SL.isHidden = true
                 }
      }
    
    func checkForStylePrefST(){
           let prefersDarkMode = defaults.integer(forKey: "chosen43")
           
          if prefersDarkMode == 1{
                     ST.isHidden = false
                 }else if prefersDarkMode == 0{
                     ST.isHidden = true
                 }
      }
    
    func checkForStylePrefSK(){
           let prefersDarkMode = defaults.integer(forKey: "chosen44")
           
          if prefersDarkMode == 1{
                     SK.isHidden = false
                 }else if prefersDarkMode == 0{
                     SK.isHidden = true
                 }
      }
    
    func checkForStylePrefVT(){
           let prefersDarkMode = defaults.integer(forKey: "chosen45")
           
          if prefersDarkMode == 1{
                     VT.isHidden = false
                 }else if prefersDarkMode == 0{
                     VT.isHidden = true
                 }
      }
    
        //MARK:-- TR marking
    
    func checkForStylePrefBU(){
           let prefersDarkMode = defaults.integer(forKey: "chosen46")
           
          if prefersDarkMode == 1{
                     BU.isHidden = false
                 }else if prefersDarkMode == 0{
                     BU.isHidden = true
                 }
      }
    
    func checkForStylePrefIL(){
           let prefersDarkMode = defaults.integer(forKey: "chosen47")
           
          if prefersDarkMode == 1{
                     IL.isHidden = false
                 }else if prefersDarkMode == 0{
                     IL.isHidden = true
                 }
      }
    
    func checkForStylePrefMY(){
           let prefersDarkMode = defaults.integer(forKey: "chosen48")
           
          if prefersDarkMode == 1{
                     MY.isHidden = false
                 }else if prefersDarkMode == 0{
                     MY.isHidden = true
                 }
      }
    
    func checkForStylePrefNV(){
           let prefersDarkMode = defaults.integer(forKey: "chosen49")
           
          if prefersDarkMode == 1{
                     NV.isHidden = false
                 }else if prefersDarkMode == 0{
                     NV.isHidden = true
                 }
      }
    
    func checkForStylePrefPE(){
           let prefersDarkMode = defaults.integer(forKey: "chosen50")
           
          if prefersDarkMode == 1{
                     PE.isHidden = false
                 }else if prefersDarkMode == 0{
                     PE.isHidden = true
                 }
      }
    
    func checkForStylePrefPB(){
           let prefersDarkMode = defaults.integer(forKey: "chosen51")
           
          if prefersDarkMode == 1{
                     PB.isHidden = false
                 }else if prefersDarkMode == 0{
                     PB.isHidden = true
                 }
      }
    
    func checkForStylePrefPR(){
           let prefersDarkMode = defaults.integer(forKey: "chosen52")
           
          if prefersDarkMode == 1{
                     PR.isHidden = false
                 }else if prefersDarkMode == 0{
                     PR.isHidden = true
                 }
      }
    
    func checkForStylePrefPU(){
           let prefersDarkMode = defaults.integer(forKey: "chosen53")
           
          if prefersDarkMode == 1{
                     PU.isHidden = false
                 }else if prefersDarkMode == 0{
                     PU.isHidden = true
                 }
      }
    
    func checkForStylePrefTR(){
           let prefersDarkMode = defaults.integer(forKey: "chosen54")
           
          if prefersDarkMode == 1{
                     TR.isHidden = false
                 }else if prefersDarkMode == 0{
                     TR.isHidden = true
                 }
      }
    
            //MARK:-- TT marking
    func checkForStylePrefDS(){
           let prefersDarkMode = defaults.integer(forKey: "chosen55")
           
          if prefersDarkMode == 1{
                     DS.isHidden = false
                 }else if prefersDarkMode == 0{
                     DS.isHidden = true
                 }
      }
    
    func checkForStylePrefGA(){
           let prefersDarkMode = defaults.integer(forKey: "chosen56")
           
          if prefersDarkMode == 1{
                     GA.isHidden = false
                 }else if prefersDarkMode == 0{
                     GA.isHidden = true
                 }
      }
    
    func checkForStylePrefHC(){
           let prefersDarkMode = defaults.integer(forKey: "chosen57")
           
          if prefersDarkMode == 1{
                     HC.isHidden = false
                 }else if prefersDarkMode == 0{
                     HC.isHidden = true
                 }
      }
    
    func checkForStylePrefPI(){
           let prefersDarkMode = defaults.integer(forKey: "chosen58")
           
          if prefersDarkMode == 1{
                     PI.isHidden = false
                 }else if prefersDarkMode == 0{
                     PI.isHidden = true
                 }
      }
    
    func checkForStylePrefSC(){
           let prefersDarkMode = defaults.integer(forKey: "chosen59")
           
          if prefersDarkMode == 1{
                     SC.isHidden = false
                 }else if prefersDarkMode == 0{
                     SC.isHidden = true
                 }
      }
    
    func checkForStylePrefSI(){
           let prefersDarkMode = defaults.integer(forKey: "chosen60")
           
          if prefersDarkMode == 1{
                     SI.isHidden = false
                 }else if prefersDarkMode == 0{
                     SI.isHidden = true
                 }
      }
    
    func checkForStylePrefTT(){
           let prefersDarkMode = defaults.integer(forKey: "chosen61")
           
          if prefersDarkMode == 1{
                     TT.isHidden = false
                 }else if prefersDarkMode == 0{
                     TT.isHidden = true
                 }
      }
    
            //MARK:-- ZA marking
    
    func checkForStylePrefBY(){
           let prefersDarkMode = defaults.integer(forKey: "chosen62")
           
          if prefersDarkMode == 1{
                     BY.isHidden = false
                 }else if prefersDarkMode == 0{
                     BY.isHidden = true
                 }
      }
    
    func checkForStylePrefCA(){
           let prefersDarkMode = defaults.integer(forKey: "chosen63")
           
          if prefersDarkMode == 1{
                     CA.isHidden = false
                 }else if prefersDarkMode == 0{
                     CA.isHidden = true
                 }
      }
    
    func checkForStylePrefDK(){
           let prefersDarkMode = defaults.integer(forKey: "chosen64")
           
          if prefersDarkMode == 1{
                     DK.isHidden = false
                 }else if prefersDarkMode == 0{
                     DK.isHidden = true
                 }
      }
    
    func checkForStylePrefKNM(){
           let prefersDarkMode = defaults.integer(forKey: "chosen65")
           
          if prefersDarkMode == 1{
                     KNM.isHidden = false
                 }else if prefersDarkMode == 0{
                     KNM.isHidden = true
                 }
      }
    
    func checkForStylePrefLM(){
           let prefersDarkMode = defaults.integer(forKey: "chosen66")
           
          if prefersDarkMode == 1{
                     LM.isHidden = false
                 }else if prefersDarkMode == 0{
                     LM.isHidden = true
                 }
      }
    
    func checkForStylePrefMT(){
           let prefersDarkMode = defaults.integer(forKey: "chosen67")
           
          if prefersDarkMode == 1{
                     MT.isHidden = false
                 }else if prefersDarkMode == 0{
                     MT.isHidden = true
                 }
      }
    
    func checkForStylePrefNA(){
           let prefersDarkMode = defaults.integer(forKey: "chosen68")
           
          if prefersDarkMode == 1{
                     NA.isHidden = false
                 }else if prefersDarkMode == 0{
                     NA.isHidden = true
                 }
      }
    
    func checkForStylePrefRK(){
           let prefersDarkMode = defaults.integer(forKey: "chosen69")
           
          if prefersDarkMode == 1{
                     RK.isHidden = false
                 }else if prefersDarkMode == 0{
                     RK.isHidden = true
                 }
      }
    
    func checkForStylePrefTK(){
           let prefersDarkMode = defaults.integer(forKey: "chosen70")
           
          if prefersDarkMode == 1{
                     TK.isHidden = false
                 }else if prefersDarkMode == 0{
                     TK.isHidden = true
                 }
      }
    
    func checkForStylePrefTD(){
           let prefersDarkMode = defaults.integer(forKey: "chosen71")
           
          if prefersDarkMode == 1{
                     TD.isHidden = false
                 }else if prefersDarkMode == 0{
                     TD.isHidden = true
                 }
      }
    
    func checkForStylePrefZA(){
           let prefersDarkMode = defaults.integer(forKey: "chosen72")
           
          if prefersDarkMode == 1{
                     ZA.isHidden = false
                 }else if prefersDarkMode == 0{
                     ZA.isHidden = true
                 }
      }
    
    
    
    @IBAction func handleZA(_ sender: UIButton) {
        CityZA.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations: {
                       button.isHidden = !button.isHidden; self.view.layoutIfNeeded()
                   })
               }
    }
    @IBAction func handleTT(_ sender: UIButton) {
        CityTT.forEach{ (button) in
                   UIView.animate(withDuration: 0.3, animations: {
                       button.isHidden = !button.isHidden; self.view.layoutIfNeeded()
                   })
               }
    }
    
    @IBAction func handleTR(_ sender: UIButton) {
        CityTR.forEach{ (button) in
                   UIView.animate(withDuration: 0.3, animations: {
                       button.isHidden = !button.isHidden; self.view.layoutIfNeeded()
                   })
               }
    }
    
    @IBAction func handlePO(_ sender: UIButton) {
        CityPO.forEach{ (button) in
                   UIView.animate(withDuration: 0.3, animations: {
                       button.isHidden = !button.isHidden; self.view.layoutIfNeeded()
                   })
               }
    }
    @IBAction func handleNI(_ sender: UIButton) {
        CityNI.forEach{ (button) in
                   UIView.animate(withDuration: 0.3, animations: {
                       button.isHidden = !button.isHidden; self.view.layoutIfNeeded()
                   })
               }
    }
    @IBAction func handleKE(_ sender: UIButton) {
        CityKE.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden; self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func handleBA(_ sender: UIButton) {
        CityBA.forEach{ (button) in UIView.animate(withDuration: 0.3) {
            button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()
            }}
    }
    
    @IBAction func handleBB(_ sender: UIButton) {
        CityBut.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations: {
            button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
                })
    }
    
    
}

    
}
