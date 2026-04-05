import UIKit

//  Шаг 1
protocol GreetingViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

final class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    //  Шаг 5
    //  Тип ссылки - тип публичного интерфейса (этот паттерн предполагает работу через интерфейсы, мы не должны работать через классы). Тем самым код становится модульным (независимые блоки).
    private var presenter: GreetingPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  Шаг 6
        let person = Person(name: "Tim", surname: "Cook")
        presenter = GreetingPresenter(view: self, person: person)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        //  Шаг 7
        presenter.showGreeting()
    }

}

//  Шаг 2
extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
