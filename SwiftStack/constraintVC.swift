//
//  constraintVC.swift
//  SwiftStack
//
//  Created by IosDeveloper on 11/01/18.
//  Copyright © 2018 iOSDeveloper. All rights reserved.
//

import UIKit

class constraintVC: UIViewController
{
    ///Outlet for First container View
    @IBOutlet weak var containerView: UIView!
    
    ///Outlet for scond Container View
    @IBOutlet weak var secondContainerView: UIView!
    
    
    ///Did load - To load Views
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        ///Add Subviews
        self.add(asChildViewController: FirstObject)
        self.add2(asChildViewController: SecondObject)

    }
    
    //MARK:- Create Weak Refrence for VC1
    private lazy var FirstObject: VC1 =
    {
        // Instantiate View Controller
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "VC1") as! VC1
        
        // Add View Controller as Child View Controller
        self.addChildViewController(viewController)
        return viewController
    }()
    
    //MARK:- Create Weak Refrence for VC2
    private lazy var SecondObject: VC2 =
    {
        // Instantiate View Controller
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as! VC2
        
        // Add View Controller as Child View Controller
        self.addChildViewController(viewController)
        return viewController
    }()

    //MARK:- Create Function to add VC1 As Subview
    private func add(asChildViewController viewController: UIViewController)
    {
        // Configure Child View
        viewController.view.frame = CGRect(x: 0, y: 0, width: self.containerView.frame.size.width, height: self.containerView.frame.size.height)
        
        // Add Child View Controller
        addChildViewController(viewController)
        viewController.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Add Child View as Subview
        containerView.addSubview(viewController.view)
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }
    
    //MARK:- Create Function to add VC2 As Subview
    private func add2(asChildViewController viewController: UIViewController)
    {
        // Configure Child View
        viewController.view.frame = CGRect(x: 0, y: 0, width: self.secondContainerView.frame.size.width, height: self.secondContainerView.frame.size.height)
        
        // Add Child View Controller
        addChildViewController(viewController)
        viewController.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Add Child View as Subview
        secondContainerView.addSubview(viewController.view)
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }
    
    //MARK:- Create Function to Remove VC1 As Subview
    private func remove(asChildViewController viewController: UIViewController)
    {
        // Notify Child View Controller
        viewController.willMove(toParentViewController: nil)
        
        containerView.willRemoveSubview(viewController.view)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParentViewController()
    }

    ///Memory Warnings
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
