//
//  PickImageViewController.swift
//  Mai Duyên
//
//  Created by NDPhu on 7/10/19.
//  Copyright © 2019 VMio. All rights reserved.
//

import UIKit

import SVProgressHUD
class PickImageViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    var check = true
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = imageView.frame.height/2
    }
    
    @IBAction func pickImageFromLibrary(_ sender: UIButton) {
        check = true
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .savedPhotosAlbum
        self.present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if check == true{
            if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                self.imageView.contentMode = .scaleAspectFill
                self.imageView.image = pickedImage
            }
            picker.dismiss(animated: true, completion: nil)
        }else{
            guard let image = info[.editedImage] as? UIImage else {
                return
            }
            self.imageView.contentMode = .scaleAspectFill
            self.imageView.image = image
        }
    }
    
    @IBAction func capture(_ sender: UIButton) {
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
    }
    
    @IBAction func saveImage(_ sender: UIButton) {
        SVProgressHUD.show()
      
    }
}
