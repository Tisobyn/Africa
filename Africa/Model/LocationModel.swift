//
//  LocationModel.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 23.11.2020.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
	var id: String
	var name: String
	var image: String
	var latitude: Double
	var longitude: Double
	
	var location: CLLocationCoordinate2D {
		CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
	}
}

