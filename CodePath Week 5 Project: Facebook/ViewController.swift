//
//  ViewController.swift
//  CodePath Week 5 Project: Facebook
//
//  Created by Nicholas Naudé on 12/11/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets:
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var homeFeedImageView: UIImageView!
    
    //Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: homeFeedImageView.frame.size.width, height: homeFeedImageView.frame.size.height + 1000)
        
    }

    // Actions
    


} // The end
