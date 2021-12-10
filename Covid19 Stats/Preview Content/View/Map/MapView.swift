//
//  MapView.swift
//  Covid19 Stats
//
//  Created by Shawn Shirazi on 9/6/21.
//

import SwiftUI
import UIKit
import MapKit

struct MapView: UIViewRepresentable {
    
    @Binding var countryData: [CountryData]
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        var allAnnotations: [CovidCaseAnnotation] = []
        
        for data in countryData {
            
            let title = data.country + "\n Confirmed " + data.confirmed.formatNumber() + "\n Death " + data.deaths.formatNumber()
            
            let coordinate = CLLocationCoordinate2D(latitude: data.latitude, longitude: data.longitude)
            
            allAnnotations.append(CovidCaseAnnotation(title: title, coordinate: coordinate))
        }
        
        uiView.annotations.forEach { uiView.removeAnnotation($0) }
        uiView.addAnnotations(allAnnotations)
    }
    
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView()
    }
}


class CovidCaseAnnotation: NSObject, MKAnnotation {
    
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String?, coordinate: CLLocationCoordinate2D) {
        
        self.title = title
        self.coordinate = coordinate
    }
}
