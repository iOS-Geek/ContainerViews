# ContainerViews
Adding Second UIViewController as SubView in ContainerView in Other Controller

# Some Code Detail 

To create A weak Reference for code

      private lazy var FirstObject: VC1 =
    {
        // Instantiate View Controller
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "VC1") as! VC1
        
        // Add View Controller as Child View Controller
        self.addChildViewController(viewController)
        return viewController
    }()
    
To add It as Subview

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

# Output: 

![simulator screen shot - iphone 8 plus - 2018-01-19 at 10 16 05](https://user-images.githubusercontent.com/17924097/35135254-e7591dc8-fd01-11e7-8c58-dbc22678a07e.png)
