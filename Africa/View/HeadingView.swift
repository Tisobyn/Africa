//
//  HeadingView.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 19.11.2020.
//

import SwiftUI

struct HeadingView: View {
	var headingImage: String
	var headingText: String
    var body: some View {
		HStack {
			Image(systemName: headingImage)
				.foregroundColor(.accentColor)
				.imageScale(.large)
			
			Text(headingText)
				.font(.title3)
				.fontWeight(.bold)
		}
		.padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
		HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderess in Picture")
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
