 
import UIKit
   
public class ClockwiseAnimation :AnimationDelegate{
    public func addAnimation(shapes:[CAShapeLayer], duration:CFTimeInterval) {
        let beginTime = CACurrentMediaTime()
        let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
        opacityAnimation.keyTimes = [0, 0.1, 0.4,0.6, 0.8]
        opacityAnimation.values = [ 0.2, 0.6, 1, 0.6, 0.2]
        opacityAnimation.duration = duration
        
        // Aniamtion
        let animation = CAAnimationGroup()
        animation.animations = [ opacityAnimation]
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = duration
        animation.repeatCount = HUGE
        animation.isRemovedOnCompletion = false
        
        let timeInterval =  duration /  Double(shapes.count )
        
        for (index, layersector) in shapes.enumerated(){
            let btime = Double(index) * timeInterval
            animation.beginTime = beginTime +  btime
            layersector.add(animation, forKey: nil)
        }
    }
}
