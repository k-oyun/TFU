import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id : Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image { // 즉시 실행 클로져
        Image(imageName) // 이미지 뷰 반환
    }
    
    private var coordinates : Coordinates
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    
}
