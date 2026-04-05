//  Шаг 1
protocol GreetingViewModelProtocol {
    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)? { get set }
    init(person: Person)
    func showGreeting()
}

class GreetingViewModel: GreetingViewModelProtocol {
    //  Шаг 3
    var greeting: String? {
        //  Следим за состоянием. Как только изменяется - вызываем callback (который принимает тип нашего протокола)
        didSet {
            //  Как только изменится объект, сработает этот callback и произойдёт инициализация
            greetingDidChange?(self)
        }
    }
    
    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)?
    
    //  Шаг 2
    //  Определяем приватное свойство, после чего инициализируем
    private let person: Person
    
    required init(person: Person) {
        self.person = person
    }
    
    func showGreeting() {
        greeting = "Hello, \(person.name) \(person.surname)!"
    }
    
    
}
