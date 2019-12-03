import Foundation

struct RepositoryModel {
    let lastname: String?
    let firstname: String?
    
    init(lastname: String?, firstname: String?) {
        self.lastname = lastname
        self.firstname = firstname
    }
    
    init(model: DomainModel) {
        lastname = model.lastname
        firstname = model.firstname
    }
}


