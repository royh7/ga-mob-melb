

import UIKit

class VC2: UIViewController {
    
    @IBOutlet weak var view1: SubView?
    @IBOutlet weak var view2: SubView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(sender: AnyObject!){
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func navigateToVc3A(sender: AnyObject!){
        
        let vc3 = VC3.init(nibName: "VC3", bundle: NSBundle.mainBundle())
        self.presentViewController(vc3, animated: true, completion: nil)
    }
    
    @IBAction func navigateToVc3B(sender: AnyObject!){
        let vc3 = VC3.init(nibName: "VC3", bundle: NSBundle.mainBundle())
        self.presentViewController(vc3, animated: true, completion: nil)
        
    }
    
}

