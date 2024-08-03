import Foundation
import CoreLocation

struct APIPlayground: Decodable {
    let id: Int
    let type: String
    let lat: Double?
    let lon: Double?
}

extension APIPlayground {
    func toModel() -> Playground? {
        guard let lat, let lon else { return nil }
        debugPrint(type)
        return Playground(
            id: id,
            coordinate: CLLocationCoordinate2D(latitude: lat, longitude: lon)
        )
    }
}
