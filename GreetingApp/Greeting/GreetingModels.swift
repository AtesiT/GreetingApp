//  Определяет название сцены

typealias GreetingViewModel = Greeting.ShowGreeting.ViewModel
typealias GreetingRequest = Greeting.ShowGreeting.Request
typealias GreetingResponse = Greeting.ShowGreeting.Response

enum Greeting {
    //  Юзкейсы - действие которых необходимо сделать на этой сцене
    // MARK: Use cases
    enum ShowGreeting {
        //  Посредник между View и Interactor
        struct Request {
            //  Здесь данные, которые необходимо передать от пользователя
        }
        
        //  Посредник между Interactor и Presenter
        struct Response {
            let name: String
            let surname: String
        }
        
        //  Посредник между Presenter и View
        struct ViewModel {
            let greeting: String
        }
    }
}
