//
//  CenterModifier.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 25.11.2020.
//

import SwiftUI

struct CenterModifier: ViewModifier {
	
	func body(content: Content) -> some View {
		HStack {
			Spacer()
			content
			Spacer()
		}
	}

	
}
