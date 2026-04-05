//  Шаг 3
protocol GreetingPresenterProtocol {
    //  Обязательно для инициализации
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

//  Шаг 4
class GreetingPresenter: GreetingPresenterProtocol {
    //  Сама view должна иметь сильную ссылку на presenter, а presenter слабую ссылку на view
    private unowned let view: GreetingViewProtocol
    private let person: Person
    
    required init(view: any GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello, \(person.name) \(person.surname)"
        view.setGreeting(greeting)
    }
    
    
}
