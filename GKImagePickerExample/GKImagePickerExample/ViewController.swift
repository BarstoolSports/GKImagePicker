//
//  ViewController.swift
//  GKImagePickerExample
//
//  Created by David Jeong on 7/26/19.
//  Copyright © 2019 Barstool Sports. All rights reserved.
//

import UIKit
import GKImagePicker

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    private let imagePicker: GKImagePicker = {
        let imagePicker = GKImagePicker()
        let width = UIScreen.main.bounds.size.width
        imagePicker.cropSize = CGSize(width: width, height: width * 3 / 4)
        return imagePicker
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    
    @IBAction func showCameraPicker(_ sender: Any) {
        imagePicker.imagePickerController.sourceType = .camera
        present(imagePicker.imagePickerController, animated: true, completion: nil)
    }
    
    @IBAction func showLibraryPicker(_ sender: Any) {
        imagePicker.imagePickerController.sourceType = .photoLibrary
        present(imagePicker.imagePickerController, animated: true, completion: nil)
    }
}

extension ViewController: GKImagePickerDelegate {
    func imagePicker(_ imagePicker: GKImagePicker!, pickedImage image: UIImage!) {
        imagePicker.imagePickerController.dismiss(animated: true)
        imageView.image = image
    }
}
