import UIKit

class SubView: UIView {
    
    @IBOutlet private var view:UIView?
    
    //required when loading a UIView from a Xib
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!

        //1. Load the Xib
        NSBundle.mainBundle().loadNibNamed("SubView", owner: self, options: nil)
        
        //2. Set the bounds
        if(self.view != nil){
            let content = view!
            content.frame = self.bounds
            
            //3. Add subview
            self.addSubview(view!)
        } else {
            return
        }
        
    }

}

