//
//  ViewController.swift
//  HelloWorld
//
//  Created by Dave Amin on 2021-06-07.
//

import UIKit

class ViewController: UIViewController {
   

    @IBOutlet weak var Img: UIImageView!
    
    
    @IBOutlet weak var lblSliderValue: UILabel!
    
    @IBOutlet weak var blurIntensitySlider: UISlider!
    
    
    
    var isFiltered = false
    
    var defaultImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


    @IBAction func btnReset(_ sender: Any) {
        if isFiltered == true{
        Img.image = defaultImage
        }
    }
    
    @IBAction func colorInvert(_ sender: Any) {
        if isFiltered == false{
            defaultImage = Img.image!
        }
        
        let originalImage = Img.image!
        
        let filterToApply = CIFilter(name: "CIColorInvert")
        
        filterToApply!.setValue(CIImage(image: Img.image!), forKey: kCIInputImageKey)
        
        let context = CIContext(options: nil)
        
        let outputImg =  filterToApply!.outputImage
        
        let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
        
        let processedImage = UIImage(cgImage: cgImg!)
        
        Img.image = processedImage
        
        isFiltered = true    }
    @IBAction func sliderValueChange(_ sender: UISlider) {
        
        if isFiltered == true{
        Img.image = defaultImage
        }
        
        blurIntensitySlider.minimumValue = 0
        blurIntensitySlider.maximumValue = 100
        
        let currentValue = Int((sender.value).rounded())
        lblSliderValue.text = String(currentValue)
        
        if isFiltered == false{
            defaultImage = Img.image!
        }
        
        let originalImage = Img.image!
        
        let filterToApply = CIFilter(name: "CIBoxBlur")
        
        filterToApply!.setValue(CIImage(image: Img.image!), forKey: kCIInputImageKey)
        
        filterToApply?.setValue(currentValue, forKey: kCIInputRadiusKey)
        
        let context = CIContext(options: nil)
        
        let outputImg =  filterToApply!.outputImage
        
        let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
        
        let processedImage = UIImage(cgImage: cgImg!)
        
        Img.image = processedImage
        
        isFiltered = true
    }
    
    
    @IBAction func btnBlur(_ sender: Any) {
        
        if isFiltered == false{
            defaultImage = Img.image!
        }
        
        let originalImage = Img.image!
        
        let filterToApply = CIFilter(name: "CIBoxBlur")
        
        filterToApply!.setValue(CIImage(image: Img.image!), forKey: kCIInputImageKey)
        
        filterToApply?.setValue(50, forKey: kCIInputRadiusKey)
        
        let context = CIContext(options: nil)
        
        let outputImg =  filterToApply!.outputImage
        
        let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
        
        let processedImage = UIImage(cgImage: cgImg!)
        
        Img.image = processedImage
        
        isFiltered = true
    }
    @IBAction func sepiaTone(_ sender: Any) {
        
        if isFiltered == false{
            defaultImage = Img.image!
        }
        
        let originalImage = Img.image!
        
        let filterToApply = CIFilter(name: "CISepiaTone")
        
        filterToApply!.setValue(CIImage(image: Img.image!), forKey: kCIInputImageKey)
        
        filterToApply?.setValue(2, forKey: kCIInputIntensityKey)
        
        let context = CIContext(options: nil)
        
        let outputImg =  filterToApply!.outputImage
        
        let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
        
        let processedImage = UIImage(cgImage: cgImg!)
        
        Img.image = processedImage
        
        isFiltered = true    }
    
    
    @IBAction func blackWhite(_ sender: Any) {
        if isFiltered == false{
            defaultImage = Img.image!
        }
        
        let originalImage = Img.image!
        
        let filterToApply = CIFilter(name: "CIPhotoEffectNoir")
        
        filterToApply!.setValue(CIImage(image: Img.image!), forKey: kCIInputImageKey)
        
        let context = CIContext(options: nil)
        
        let outputImg =  filterToApply!.outputImage
        
        let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
        
        let processedImage = UIImage(cgImage: cgImg!)
        
        Img.image = processedImage
        
        isFiltered = true
        
    }
    
    @IBAction func chromeEffect(_ sender: Any) {
        if isFiltered == false{
            defaultImage = Img.image!
        }
        
        let originalImage = Img.image!
        
        let filterToApply = CIFilter(name: "CIPhotoEffectChrome")
        
        filterToApply!.setValue(CIImage(image: Img.image!), forKey: kCIInputImageKey)
        
        let context = CIContext(options: nil)
        
        let outputImg =  filterToApply!.outputImage
        
        let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
        
        let processedImage = UIImage(cgImage: cgImg!)
        
        Img.image = processedImage
        
        isFiltered = true
        
    }
    
    @IBAction func comicEffect(_ sender: Any) {
        if isFiltered == false{
            defaultImage = Img.image!
        }
        
        let originalImage = Img.image!
        
        let filterToApply = CIFilter(name: "CIComicEffect")
        
        filterToApply!.setValue(CIImage(image: Img.image!), forKey: kCIInputImageKey)
        
        let context = CIContext(options: nil)
        
        let outputImg =  filterToApply!.outputImage
        
        let cgImg = context.createCGImage(outputImg!, from: outputImg!.extent)
        
        let processedImage = UIImage(cgImage: cgImg!)
        
        Img.image = processedImage
        
        isFiltered = true    }
}

