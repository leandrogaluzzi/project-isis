import Foundation

enum Configuration {
    static var baseURL: String {
        "https://overpass-api.de/api/interpreter?data=[out:json];(node[leisure=playground](around:5000,\(41.3851),\(2.1734));way[leisure=playground](around:5000,\(41.3851),\(2.1734)););out body;"
    }
}
