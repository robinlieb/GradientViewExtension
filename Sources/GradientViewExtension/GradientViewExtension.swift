import UIKit

@available(iOS 12, *)
public extension UIView {
    
    /// Sets a gradient background for UIView.
    ///
    /// - Parameters:
    ///     - startColor: First color of the gradient
    ///     - endColor: Second color of the gradient
    ///     - gradientType: Axial, radial or conic type of gradient
    ///     - rotation: Rotation for axial type
    
    func setGradientBackground(startColor: UIColor, endColor: UIColor, gradientType: CAGradientLayerType = .axial, rotation: Bool = false) {
        
        var gradient: CAGradientLayer
        let colors = [startColor.cgColor, endColor.cgColor]
        
        switch gradientType {
        case .axial:
            if rotation {
                gradient = CAGradientLayer(start: .topLeft, end: .bottomRight, colors: colors, type: gradientType)
            } else {
                gradient = CAGradientLayer(start: .topCenter, end: .bottomCenter, colors: colors, type: gradientType)
            }
        case .radial:
            gradient = CAGradientLayer(start: .center, end: .bottomRight, colors: colors, type: gradientType)
        case .conic:
            gradient = CAGradientLayer(start: .center, end: .bottomRight, colors: colors, type: gradientType)
        default:
            return
        }
        
        gradient.frame = bounds
        layer.addSublayer(gradient)
    }
}

fileprivate extension CAGradientLayer {

    enum Coordinates {
        case topLeft
        case centerLeft
        case bottomLeft
        case topCenter
        case center
        case bottomCenter
        case topRight
        case centerRight
        case bottomRight

        var coordinates: CGPoint {
            switch self {
            case .topLeft:
                return CGPoint(x: 0, y: 0)
            case .centerLeft:
                return CGPoint(x: 0, y: 0.5)
            case .bottomLeft:
                return CGPoint(x: 0, y: 1.0)
            case .topCenter:
                return CGPoint(x: 0.5, y: 0)
            case .center:
                return CGPoint(x: 0.5, y: 0.5)
            case .bottomCenter:
                return CGPoint(x: 0.5, y: 1.0)
            case .topRight:
                return CGPoint(x: 1.0, y: 0.0)
            case .centerRight:
                return CGPoint(x: 1.0, y: 0.5)
            case .bottomRight:
                return CGPoint(x: 1.0, y: 1.0)
            }
        }
    }

    convenience init(start: Coordinates, end: Coordinates, colors: [CGColor], type: CAGradientLayerType) {
        self.init()
        self.startPoint = start.coordinates
        self.endPoint = end.coordinates
        self.colors = colors
        self.locations = (0..<colors.count).map(NSNumber.init)
        self.type = type
    }
}
