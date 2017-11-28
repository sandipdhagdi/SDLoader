
import UIKit

public protocol AnimationDelegate {
    func addAnimation(shapes:[CAShapeLayer], duration:CFTimeInterval)
}

public class Spinner: UIView {
    
    //Spinner properties
    public var background: UIColor?
    public var font : UIFont?
    public var textColor : UIColor?
    public var message : String?
    public var sectorColor : CGColor?
    public var numberofSectors : Int?
    public var spacing : Double?
    public var lineWidth : CGFloat?
    public var duration : CFTimeInterval?
    public var cornerradius : CGFloat?
    public var animationType: AnimationType?
    
    private var shapes = [CAShapeLayer]()
    private var lblMessage :UILabel?
    private let padding:CGFloat = 20
    private var delegate:AnimationDelegate?
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public func startAnimation(){
        for shape in shapes{
            shape.removeAllAnimations()
            shape.removeFromSuperlayer()
        }
        shapes.removeAll()

        self.backgroundColor =  background ?? Settings._spinnerBackGround
        let _numberofSectors = numberofSectors ?? Settings._numberofSectors
        let _duration = duration ?? Settings._duration
        
        let sectorSize = Double.pi * 2 / (Double)(_numberofSectors)
        let spCenter = CGPoint(x: self.bounds.width / 2, y: self.bounds.height / 2)
        let radius = (frame.width / 2) - padding
        for  i in 0..<_numberofSectors {
            let sAngle:Double = (Double)(i) * sectorSize
            let eAngle:Double = ((Double)(i+1) * sectorSize) - (spacing ?? Settings._spacing)
            let shape = Sector(radius: radius, center: spCenter, startAngle: sAngle, endAngle: eAngle)
            shape.lineWidth =  lineWidth ?? Settings._lineWidth
            shape.strokeColor = sectorColor ?? Settings._sectorColor
            shape.opacity = 0.2
            shapes.append(shape)
            layer.addSublayer(shape)
        }
        setDelegate()
        if let delegate = delegate{
            delegate.addAnimation(shapes: shapes, duration: _duration)
        }
        
        lblMessage = UILabel(frame: CGRect(x: 0, y: 0, width: (2 * radius) - padding, height: 80))
        lblMessage?.center = spCenter
        lblMessage?.adjustsFontSizeToFitWidth = true
        lblMessage?.textColor = textColor ?? Settings._textColor
        lblMessage?.textAlignment = .center
        lblMessage?.text = message ?? Settings._message
        addSubview(lblMessage!)
        layer.cornerRadius  = cornerradius ?? Settings._cornerradius
        clipsToBounds = true
    }
    
    public func stopanimation(){
        for shape in shapes{
            shape.removeAllAnimations()
            shape.removeFromSuperlayer()
        }
        shapes.removeAll()
        if let lblmessage = lblMessage{
            lblmessage.removeFromSuperview()
        }
        delegate = nil
    }
    
    private func setDelegate(){
        let _animationType = animationType ?? Settings._animationType
        switch _animationType {
        case .clockwise:
            delegate = ClockwiseAnimation()
            break
        case .anticlockwise:
            delegate = AntiClockwiseAnimation()
            break
        }
    }
}
