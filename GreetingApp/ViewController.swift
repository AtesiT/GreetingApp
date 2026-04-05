import UIKit

final class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    //  Шаг 4
    //  Нам нужно взаимоувязать сам ViewController с его моделью представления (ему необходимо знать про модель)
    //  Посредством интерфейса происходит общение
    private var viewModel: GreetingViewModelProtocol! {
        //  Как только будет менять своё состояние, мы будем вызывать callback
        didSet {
            viewModel.greetingDidChange = { [unowned self] viewModel in
                greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  Шаг 5
        //  Делаем инициализацию
        let person = Person(name: "Tim", surname: "Cook")
        viewModel = GreetingViewModel(person: person)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        //  Шаг 6
        //  Вызываем нам метод по нажатию на экран
        viewModel.showGreeting()
    }
}
