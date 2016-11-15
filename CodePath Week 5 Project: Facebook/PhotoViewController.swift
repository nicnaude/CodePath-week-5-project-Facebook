//
//  PhotoViewController.swift
//  CodePath Week 5 Project: Facebook
//
//  Created by Nicholas Naudé on 13/11/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var tappedPhotoImageView: UIImageView!
    
    var selectedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDoneButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
