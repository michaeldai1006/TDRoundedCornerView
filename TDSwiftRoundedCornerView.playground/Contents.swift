  import UIKit
  import PlaygroundSupport
  
  // View controller that hosts the target view
  class TDLiveViewController : UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Config background view
        let backgroundView = UIView()
        backgroundView.backgroundColor = .lightGray
        
        // View location
        let viewWidth: CGFloat = 120.0
        let viewHeight: CGFloat = 120.0
        var viewX: CGFloat { get { return self.view.frame.width / 2 - viewWidth / 2 } }
        var viewY: CGFloat { get { return self.view.frame.height / 2 - viewHeight / 2 } }
        
        // Config sample view
        let roundedCornerView = TDSwiftRoundedCornerView(frame: CGRect(x: viewX, y: viewY, width: viewWidth, height: viewHeight))
        roundedCornerView.backgroundColor = .white
        backgroundView.addSubview(roundedCornerView)
        roundedCornerView.roundedCorners = [.bottomLeft]
        
        // Present background view
        self.view = backgroundView
    }
  }
  
  // Present the view controller in the Live View window
  PlaygroundPage.current.liveView = TDLiveViewController()
