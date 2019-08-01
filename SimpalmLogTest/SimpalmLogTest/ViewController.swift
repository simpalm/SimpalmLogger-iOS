//
//  ViewController.swift
//  SimpalmLogTest
//
//  Created by Aman Sinha on 30/07/19.
//  Copyright © 2019 Simpalm. All rights reserved.
//

import UIKit
import SimpalmLogger
import MessageUI

class ViewController: UIViewController ,MFMailComposeViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        Logger.log(event: .e, message: "error")
        Logger.log(event: .i)
        Logger.sendEmail(controller: self, recepients: ["aman@simpalm.com"])
        // Do any additional setup after loading the view.
    }
    //MARK:- MailcomposerDelegate
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result {
        case .cancelled:
            print("User cancelled")
            break
            
        case .saved:
            print("Mail is saved by user")
            break
            
        case .sent:
            print("Mail is sent successfully")
            break
            
        case .failed:
            print("Sending mail is failed")
            break
        default:
            break
        }
        
        controller.dismiss(animated: true)
        
    }
    

}

