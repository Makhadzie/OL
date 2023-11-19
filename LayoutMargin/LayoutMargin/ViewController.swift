//
//  ViewController.swift
//  LayoutMargin
//
//  Created by Makhadzi Nevuwari on 2023/11/19.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupviews()
        
    }
    
    //setting up the button and the Marging spacing
    func setupviews(){
        let leadingGuide = UILayoutGuide ()
        let okButton = makeButton(title: "OK", color: UIColor.darkBlue)
        let middleGuide = UILayoutGuide()
        let cancelButton = makeButton(title: "CANCEL", color: UIColor.darkGreen)
        let trailingGuide = UILayoutGuide()
         
        //setting up views
        view.addSubview(okButton)
        view.addSubview(cancelButton)
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(trailingGuide)
        view.addLayoutGuide(middleGuide)
        
        let margins = view.layoutMarginsGuide
       
        NSLayoutConstraint.activate([
        margins.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor),
        leadingGuide.trailingAnchor.constraint(equalTo: okButton.centerXAnchor),
        
        okButton.trailingAnchor.constraint(equalTo: middleGuidevs.leadingAnchor),
        middleGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor),
        
        cancelButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor),
        trailingGuide.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
        
        okButton.widthAnchor.constraint(equalTo: cancelButton.widthAnchor),
        
        leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor),
        leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor),
        
        leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        okButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        leadingGuide.heightAnchor.constraint(equalToConstant: 1),
        middleGuide.heightAnchor.constraint(equalToConstant: 1),
        trailingGuide.heightAnchor.constraint(equalToConstant: 1)
        
        ])
    }
    
    //Setting up the size and shaping to the buttons
    func makeButton(title: String, color: UIColor) -> UIButton
    {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets.init(top: 8, left: 16, bottom: 8, right: 16)
        button.backgroundColor = color
        
        return button
    }
    
}

// Colour extensions
extension UIColor{
    static let darkBlue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
    
}

