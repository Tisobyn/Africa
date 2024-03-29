//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 19.11.2020.
//

import SwiftUI

struct AnimalListItemView: View {
	
	let animal: Animal

    var body: some View {
		HStack(alignment: .center, spacing: 16, content: {
			Image(animal.image)
				.resizable()
				.scaledToFill()
				.frame(width: 90, height: 90)
				.clipShape(
					RoundedRectangle(cornerRadius: 12)
				)
			
			VStack(alignment: .leading, spacing: 8, content: {
				Text(animal.image)
					.font(.title2)
					.fontWeight(.heavy)
					.foregroundColor(.accentColor)
				
				Text(animal.headline)
					.font(.footnote)
					.multilineTextAlignment(.leading)
					.lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
					.padding(.trailing, 8)
			})
			
			
		})
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
	static let animals: [Animal] = Bundle.main.decode("animal.json")
	
    static var previews: some View {
		AnimalListItemView(animal: animals[1])
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
