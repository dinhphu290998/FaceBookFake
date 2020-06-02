//
//  DetailViewController.swift
//  Mai Duyên
//
//  Created by vMio on 6/5/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var viewPhoto: UIView!
    @IBOutlet var slideshow: ImageSlideshow!
    
    let localSource = [BundleImageSource(imageString: "img1"), BundleImageSource(imageString: "img2"), BundleImageSource(imageString: "img3"), BundleImageSource(imageString: "img4")]
    override func viewDidLoad() {
        super.viewDidLoad()
        slideshow.slideshowInterval = 1
        slideshow.pageIndicatorPosition = .init(horizontal: .center, vertical: .bottom)
        slideshow.contentScaleMode = UIViewContentMode.scaleAspectFill
        
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = UIColor.white
        pageControl.pageIndicatorTintColor = UIColor.black
        slideshow.pageIndicator = pageControl
        
        // optional way to show activity indicator during image load (skipping the line will show no activity indicator)
        slideshow.activityIndicator = DefaultActivityIndicator()
        slideshow.delegate = self
        
        // can be used with other sample sources as `afNetworkingSource`, `alamofireSource` or `sdWebImageSource` or `kingfisherSource`
        slideshow.setImageInputs(localSource)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.didTap))
        slideshow.addGestureRecognizer(recognizer)
        // Do any additional setup after loading the view.
        viewPhoto.layer.cornerRadius = viewPhoto.frame.height/2
        viewPhoto.layer.masksToBounds = true
        viewPhoto.layer.borderWidth = 5
    }
    

    @objc func didTap() {
        let fullScreenController = slideshow.presentFullScreenController(from: self)
        // set the activity indicator for full screen controller (skipping the line will show no activity indicator)
        fullScreenController.slideshow.activityIndicator = DefaultActivityIndicator(style: UIActivityIndicatorViewStyle.white, color: nil)
    }

}
extension DetailViewController: ImageSlideshowDelegate {
    func imageSlideshow(_ imageSlideshow: ImageSlideshow, didChangeCurrentPageTo page: Int) {
        print("current page:", page)
    }
}
