 
 import UIKit
 
 public enum AnimationType{
    case clockwise
    case anticlockwise
 }
 
 public class Settings {
    static var _backGround = UIColor.black.withAlphaComponent(0.3)
    static var _spinnerBackGround = UIColor.black.withAlphaComponent(0.5)
    static var _font = UIFont(name: "HelveticaNeue-Medium", size: 30)
    static var _textColor = UIColor.white
    static var _message = "Loading..."
    static var _sectorColor:CGColor = UIColor.white.cgColor
    static var _numberofSectors:Int = 8
    static var _spacing:Double = 0.03
    static var _lineWidth:CGFloat = 8
    static var _duration:CFTimeInterval = 1
    static var _cornerradius:CGFloat = 10
    static var _animationType:AnimationType = .clockwise
 }
 
 public class SDLoader{
    public var backGroundColor:UIColor?
    public var spinner : Spinner?
    private var baseView: UIView?
    public var isAnimating : Bool?{
        get{
            return self._isAnimating
        }
    }
    
    private var _isAnimating : Bool = false
    
    public init() {
        self.baseView = UIView()
        self.spinner = Spinner()
    }
    
    public  func startAnimating(atView view :UIView){
        let frame = view.frame
        baseView?.frame = frame
        let viewcenter = view.center
        baseView?.center = viewcenter
        baseView?.backgroundColor = self.backGroundColor ?? Settings._backGround
        
        //spinner
        let spinnerFrame = CGRect(x: 0, y: 0, width: 150, height: 150)
        spinner?.frame = spinnerFrame
        spinner?.center = viewcenter
 
        baseView?.addSubview(spinner!)
        spinner?.startAnimation()
        view.addSubview(baseView!)
    
        _isAnimating = true
    }
    
    public  func stopAnimation(){
        if let spinner = spinner{
            spinner.stopanimation()
        }
        if let baseview = baseView{
            baseview.removeFromSuperview()
        }
        _isAnimating = false
    }
 }
 
