
//  ViewController.swift
//  ISpy
//
//  Created by Tyler May on 10/10/23.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
   
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var treeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return treeImageView
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / treeImageView.bounds.width
        let heightScale = size.height / treeImageView.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }
    
    


}

