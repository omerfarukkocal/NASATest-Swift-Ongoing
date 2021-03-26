// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try ContentViewModel(json)

import Foundation

// MARK: - ContentViewModel
class ContentViewModel: Codable, ObservableObject {
    let photos: [Photo]
    
    var URL = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY&page=1"

    init(photos: [Photo]) {
        self.photos = photos
    }
}

// MARK: ContentViewModel convenience initializers and mutators

extension ContentViewModel {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(ContentViewModel.self, from: data)
        self.init(photos: me.photos)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        photos: [Photo]? = nil
    ) -> ContentViewModel {
        return ContentViewModel(
            photos: photos ?? self.photos
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Photo
class Photo: Codable {
    let id, sol: Int
    let camera: Camera
    let imgSrc: String
    let earthDate: String
    let rover: Rover

    enum CodingKeys: String, CodingKey {
        case id, sol, camera
        case imgSrc
        case earthDate
        case rover
    }

    init(id: Int, sol: Int, camera: Camera, imgSrc: String, earthDate: String, rover: Rover) {
        self.id = id
        self.sol = sol
        self.camera = camera
        self.imgSrc = imgSrc
        self.earthDate = earthDate
        self.rover = rover
    }
}

// MARK: Photo convenience initializers and mutators

extension Photo {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Photo.self, from: data)
        self.init(id: me.id, sol: me.sol, camera: me.camera, imgSrc: me.imgSrc, earthDate: me.earthDate, rover: me.rover)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int? = nil,
        sol: Int? = nil,
        camera: Camera? = nil,
        imgSrc: String? = nil,
        earthDate: String? = nil,
        rover: Rover? = nil
    ) -> Photo {
        return Photo(
            id: id ?? self.id,
            sol: sol ?? self.sol,
            camera: camera ?? self.camera,
            imgSrc: imgSrc ?? self.imgSrc,
            earthDate: earthDate ?? self.earthDate,
            rover: rover ?? self.rover
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Camera
class Camera: Codable {
    let id: Int
    let name: CameraName
    let roverID: Int
    let fullName: FullName

    enum CodingKeys: String, CodingKey {
        case id, name
        case roverID
        case fullName
    }

    init(id: Int, name: CameraName, roverID: Int, fullName: FullName) {
        self.id = id
        self.name = name
        self.roverID = roverID
        self.fullName = fullName
    }
}

// MARK: Camera convenience initializers and mutators

extension Camera {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Camera.self, from: data)
        self.init(id: me.id, name: me.name, roverID: me.roverID, fullName: me.fullName)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int? = nil,
        name: CameraName? = nil,
        roverID: Int? = nil,
        fullName: FullName? = nil
    ) -> Camera {
        return Camera(
            id: id ?? self.id,
            name: name ?? self.name,
            roverID: roverID ?? self.roverID,
            fullName: fullName ?? self.fullName
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum FullName: String, Codable {
    case frontHazardAvoidanceCamera = "Front Hazard Avoidance Camera"
    case mastCamera = "Mast Camera"
    case rearHazardAvoidanceCamera = "Rear Hazard Avoidance Camera"
}

enum CameraName: String, Codable {
    case fhaz = "FHAZ"
    case mast = "MAST"
    case rhaz = "RHAZ"
}

// MARK: - Rover
class Rover: Codable {
    let id: Int
    let name: RoverName
    let landingDate, launchDate: String
    let status: Status

    enum CodingKeys: String, CodingKey {
        case id, name
        case landingDate
        case launchDate
        case status
    }

    init(id: Int, name: RoverName, landingDate: String, launchDate: String, status: Status) {
        self.id = id
        self.name = name
        self.landingDate = landingDate
        self.launchDate = launchDate
        self.status = status
    }
}

// MARK: Rover convenience initializers and mutators

extension Rover {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Rover.self, from: data)
        self.init(id: me.id, name: me.name, landingDate: me.landingDate, launchDate: me.launchDate, status: me.status)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int? = nil,
        name: RoverName? = nil,
        landingDate: String? = nil,
        launchDate: String? = nil,
        status: Status? = nil
    ) -> Rover {
        return Rover(
            id: id ?? self.id,
            name: name ?? self.name,
            landingDate: landingDate ?? self.landingDate,
            launchDate: launchDate ?? self.launchDate,
            status: status ?? self.status
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum RoverName: String, Codable {
    case curiosity = "Curiosity"
}

enum Status: String, Codable {
    case active = "active"
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
