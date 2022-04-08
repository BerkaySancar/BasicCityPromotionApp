//
//  DetailsViewController.swift
//  SehirTanitimUygulamasi
//
//  Created by Berkay Sancar on 8.04.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var cityNameLabel: UILabel!
    
    @IBOutlet weak var cityInfoTextView: UITextView!
    
    var selectedCity : Cities?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cityNameLabel.text = selectedCity?.name
        explanationsOfCities()
        imageView.image = selectedCity?.image
        
        
    }
    
    func explanationsOfCities() {
        
        if selectedCity?.name == "İstanbul" {
            cityInfoTextView.text = "İstanbul, Türkiye'nin en kalabalık şehridir. Nüfüsu yaklaşık 17 milyon civarındadır."
        } else if selectedCity?.name == "Ankara" {
            cityInfoTextView.text = "Ankara, Türkiye'nin başkentidir. Ulu önder Mustafa Kemal Atatürk'ün naaşının bulunduğu Anıtkabir de bu ildedir."
        } else if selectedCity?.name == "İzmir" {
            cityInfoTextView.text = "İzmir, Türkiye'de Ege Bölgesi'nde yer alan şehir ve ülkenin 81 ilinden biridir. Ülkenin nüfus bakımından en kalabalık üçüncü şehridir."
        } else if selectedCity?.name == "Kars" {
            cityInfoTextView.text = "Kars, Türkiye'nin en soğuk illerinden biridir. Ani Harabeleri gezilecek tarihi mekanların başlarında gelir."
        } else if selectedCity?.name == "Antalya" {
            cityInfoTextView.text = "Antalya, turist yoğunluğu bakımından Türkiye'nin en popüler şehirlerinden biridir. Plajları ile ünlüdür."
        }
    }
    


}
