import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtMessage: UILabel!
    @IBOutlet var txtTapCount: UILabel!
    @IBOutlet var txtTouchCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch //현재 발생한 터치 이벤트를 가지고 온다
        
        txtMessage.text = "Touches Began" //현재 발생한 이벤트의 종류를 출력한다.
        txtTapCount.text = String(touch.tapCount) //터치의 개수를 출력한다.
        txtTouchCount.text = String(touches.count) //탭의 개수를 출력한다.
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch //현재 발생한 터치 이벤트를 가지고 온다
        
        txtMessage.text = "Touches Moved" //현재 발생한 이벤트의 종류를 출력한다.
        txtTapCount.text = String(touch.tapCount) //터치의 개수를 출력한다.
        txtTouchCount.text = String(touches.count) //탭의 개수를 출력한다.
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch //현재 발생한 터치 이벤트를 가지고 온다
        
        txtMessage.text = "Touches Ended" //현재 발생한 이벤트의 종류를 출력한다.
        txtTapCount.text = String(touch.tapCount) //터치의 개수를 출력한다.
        txtTouchCount.text = String(touches.count) //탭의 개수를 출력한다.
    }
}

