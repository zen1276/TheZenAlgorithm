//
//  ViewController.swift
//  TheZenAlgorithm
//
//  Created by Van hoffman, Zendan on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var SwiftImage: UIImageView!
   
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
        
    }

    private func formatAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        let title : String = "How to make an app in Xcode"
        
        let stepOne : String = "First, open up Xcode, and click on Create a new Xcode project. For our situation, we will be creating a Single View App, so click on that option."
        let stepTwo : String = "Next we will need to create our MVC folders, so command click on LaunchScreen.storyboard and on Main.storyboard then right click and choose \"New group from selection\" then rename this new group to be \"View\""
        let stepThree : String = "Now you will create your \"Controller\" folder by clicking on ViewController.swift and creating a new group from selection and renaming it \"Controller\"."
        let stepFour : String = "Then create your resources folder, which will include assets.xcassets, info.plist, and appdelegate.swift."
        let stepFive : String = "Finally, create a new repository of this app to github, and click undo so that you can go into the .gitignore where you will add \"*.xcuserstate\""
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
        let bullet : String = "🈸"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
        
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
    
    
    
    
    
    
}

