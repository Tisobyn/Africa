//
//  VideoModel.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 23.11.2020.
//

import Foundation

struct Video: Codable, Identifiable {
	let id: String
	let name: String
	let headline: String
	
	var thumbnail: String {
		"video-\(id)"
	}
}
