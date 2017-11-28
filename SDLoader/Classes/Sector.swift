 
import UIKit
public class Sector : CAShapeLayer{
    public override init() {
        super.init()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    convenience public init(radius :CGFloat, center:CGPoint,startAngle:Double,endAngle:Double) {
        self.init()
        let path = UIBezierPath(arcCenter: CGPoint.zero,
                                radius: radius,
                                startAngle: CGFloat(startAngle), endAngle: CGFloat(endAngle)  , clockwise: true)
        self.position = center
        self.path  = path.cgPath
        self.fillColor = UIColor.clear.cgColor
    }
}
