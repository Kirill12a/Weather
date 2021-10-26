//
//  ViewController.swift
//  alamafireWeather
//
//  Created by Kirill Drozdov on 13.10.2021.
//

import UIKit


class ViewController: UIViewController {
    
    var weatherData = WeatherData()      
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var weatherDescription: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var degresse: UILabel!
    @IBOutlet weak var presureImage: UIImageView!
    @IBOutlet weak var windImage: UIImageView!
    @IBOutlet weak var presureValue: UILabel!
    @IBOutlet weak var windSpeed: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        uppdateWeatherInfo()
        
    }
}
extension ViewController{
    func uppdateWeatherInfo(){
        let session = URLSession.shared
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=55.897&lon=37.4297&lang=ru&units=metric&appid=6cbbebf9bfff951cf0aa15f5d206017c")!
        
        
        let task = session.dataTask(with: url) { (data, response, error) in
            guard error == nil else{
                print("Data task error \(error?.localizedDescription ?? "error")")
                return
            }
            
            do{
                self.weatherData = try JSONDecoder().decode(WeatherData.self, from: data!)
                DispatchQueue.main.async {
                    self.uppdateView()
                }
            }catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}

extension ViewController{
    func uppdateView(){
        weatherDescription.text = DataSource.weatherIDs[weatherData.weather[0].id]
        
        degresse.text = String(Int(weatherData.main.temp)) + " c°"
        image.image = UIImage(named: weatherData.weather[0].icon)
        presureValue.text = String(weatherData.main.pressure)
        windSpeed.text = String(weatherData.wind.speed) + " мс"
        cityName.text = weatherData.name
    }
}


