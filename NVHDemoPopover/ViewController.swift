//
//  ViewController.swift
//  NVHDemoPopover
//
//  Created by Hùng Nguyễn  on 6/29/16.
//  Copyright © 2016 MobileSoftware. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var textView_Comment: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showView" {
            let controller = segue.destinationViewController
            controller.popoverPresentationController?.delegate = self
            controller.preferredContentSize = CGSize(width: 220, height: 30)
        }
    }

    @IBAction func acc_like(sender: UIButton) {
        print("I Like It")
    }
    
    @IBAction func acc_love(sender: UIButton) {
        print("I Love It")
    }
    @IBAction func acc_smile(sender: UIButton) {
        print("I Am Smilling")
    }
    @IBAction func acc_wow(sender: UIButton) {
        print("Wow Amazing")
    }
    @IBAction func acc_sad(sender: UIButton) {
        print("I'm So Sad.No Comment")
    }
    @IBAction func acc_angry(sender: UIButton) {
        print("I'm Very Very Angry With It")
    }
    
    @IBAction func acc_comment(sender: UIButton) {
        textView_Comment.text = "Write a comment..."
    }
    @IBAction func acc_share(sender: UIButton) {
        print("Share this status")
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
    

}

