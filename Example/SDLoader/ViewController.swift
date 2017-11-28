import UIKit
import SDLoader

class ViewController: UIViewController {
    
    @IBOutlet weak var btnSubmit: UIButton!
    let sdLoader = SDLoader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sdLoader.spinner?.lineWidth = 15
        sdLoader.spinner?.spacing = 0.2
        sdLoader.spinner?.sectorColor = UIColor.cyan.cgColor
        sdLoader.spinner?.textColor = UIColor.cyan
        sdLoader.spinner?.animationType = AnimationType.anticlockwise
        sdLoader.startAnimating(atView: self.view)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handletap))
        self.view.addGestureRecognizer(tap)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        btnSubmit.layer.cornerRadius = 6
        btnSubmit.clipsToBounds = true
    }
    
    @IBAction func btnSubmitClicked(_ sender: UIButton) {
        sdLoader.startAnimating(atView: self.view)
    }
    
    @objc func handletap(){
        sdLoader.stopAnimation()
    }
}

