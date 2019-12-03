import Foundation

class DomainModel {
    let firstname: String?
    let lastname: String?
    lazy var fullname: String? = {
        guard let firstname = firstname, let lastname = lastname, !firstname.isEmpty, !lastname.isEmpty else {
            return nil
        }
        return "\(firstname) \(lastname)"
    } ()
    
    init(model: RepositoryModel) {
        firstname = model.firstname
        lastname = model.lastname
    }
    
    init(model: FormViewModel) {
        firstname = model.firstname
        lastname = model.lastname
    }
}

