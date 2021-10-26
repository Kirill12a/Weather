

import Foundation

//struct Weather: Codable {
//    var id: Int
//    var main: String
//    var description: String
//    var icon: String
//}
//
//
//struct Main: Codable {
//    var temp: Double = 0.0
//    var pressure: Int = 0
//    var humidity: Int = 0
//}
//
//struct WeatherData: Codable {
//    var weather: [Weather] = []
//    var main: Main = Main()
//    var name: String = ""
//}
//
//



import Foundation

// MARK: - WeatherData
struct WeatherData: Codable {
    var coord: Coord = Coord()
    var weather: [Weather] = []
    var base: String = ""
    var main: Main = Main()
    var visibility: Int = 0
    var wind: Wind = Wind()
    var clouds: Clouds = Clouds()
    var dt:Int = 0
    var sys: Sys = Sys()
    var timezone: Int = 0
    var id: Int = 0
    var name:String = ""
   
}

// MARK: - Clouds
struct Clouds: Codable {
    var all: Int = 0
}

// MARK: - Coord
struct Coord: Codable {
    var lon: Double = 0.0
    var lat: Double = 0.0
}

// MARK: - Main
struct Main: Codable {
    var temp: Double = 0.0
    var feels_like: Double = 0.0
    var temp_min: Double = 0.0
    var temp_max: Double = 0.0
    var pressure: Int = 0
    var humidity: Int = 0
}

// MARK: - Sys
struct Sys: Codable {
    var type: Int = 0
    var id: Int = 0
    var country: String = ""
    var sunrise: Int = 0
    var sunset: Int = 0
}

// MARK: - Weather
struct Weather: Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}

// MARK: - Wind
struct Wind: Codable {
    var speed: Int = 0
    var deg = 0
}


