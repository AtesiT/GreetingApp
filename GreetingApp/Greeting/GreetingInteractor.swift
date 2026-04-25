protocol GreetingBusinessLogic {
    func showGreeting(request: GreetingRequest)
}

protocol GreetingDataStore {
    //  Здесь хранятся все свойства, которые необходимы для хрвнения состояния сцены (хранения данных)
    var person: Person? { get }
}

class GreetingInteractor: GreetingBusinessLogic, GreetingDataStore {
    
    var presenter: GreetingPresentationLogic?
    var person: Person?
    
    func showGreeting(request: GreetingRequest) {
        person = Person(name: "Tim", surname: "Cook")
        let response = Greeting.ShowGreeting.Response(name: person?.name ?? "", surname: person?.surname ?? "")
        presenter?.presentGreeting(response: response)
    }
}
