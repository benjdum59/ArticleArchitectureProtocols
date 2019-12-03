import Foundation

class Repository {
    
    private struct Constants {
        struct Keys {
            static let lastname = "lastname"
            static let firstname = "firstname"
        }
    }
    
    func get(_ completion: (RepositoryModel) -> Void) {
        let lastname = UserDefaults.standard.string(forKey: Constants.Keys.lastname)
        let firstname = UserDefaults.standard.string(forKey: Constants.Keys.firstname)
        completion(RepositoryModel(lastname: lastname, firstname: firstname))
    }
    
    func save(model: DomainModel, _ completion: (RepositoryModel) -> Void) {
        guard let lastname = model.lastname, let firstname = model.firstname else {
            return
        }
        UserDefaults.standard.set(lastname, forKey: Constants.Keys.lastname)
        UserDefaults.standard.set(firstname, forKey: Constants.Keys.firstname)
        completion(RepositoryModel(model: model))
    }
}
