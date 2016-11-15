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
    
    var fadeTransition: BaseTransition!
    var lightBoxTransition: BaseTransition!
    var selectedImageView: UIImageView!
    
    //Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: homeFeedImageView.frame.size.width, height: homeFeedImageView.frame.size.height + 1000)   
    }
    
    // Actions
    @IBAction func onWeddingPhotoTapped(_ sender: UITapGestureRecognizer) {
     
        selectedImageView = sender.view as! UIImageView
        performSegue(withIdentifier: "photoSegue", sender: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! PhotoViewController
        fadeTransition = FadeTransition()
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        destinationViewController.transitioningDelegate = fadeTransition
        fadeTransition.duration = 1.5
        
    }
    
    
    
    
} // The end
