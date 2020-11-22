//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 19.11.2020.
//

import SwiftUI

struct AnimalDetailView: View {
	let animal: Animal
    var body: some View {
		ScrollView(.vertical, showsIndicators: false, content: {
			VStack(alignment: .center, spacing: 20, content: {
				// Image
				Image(animal.image)
					.resizable()
					.scaledToFit()
				// Title
				Text(animal.name.uppercased())
					.font(.largeTitle)
					.fontWeight(.heavy)
					.multilineTextAlignment(.center)
					.padding(.vertical, 8)
					.foregroundColor(.primary)
					.background(
						Color.accentColor
							.frame(height: 6)
							.offset(y: 24)
					)
				// HeadLine
				Text(animal.headline) 
					.font(.headline)
					.multilineTextAlignment(.leading)
					.foregroundColor(.accentColor)
					.padding(.horizontal)
				// Gallery
				Group {
					HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Picture")
					InsetGallery(animal: animal)
				}
				.padding(.horizontal)
				// Facts
				Group {
					HeadingView(headingImage: "quationmark.circle", headingText: "Did you know?")
					InsetFactView(animal: animal)
				}
				.padding(.horizontal)
				
				// Descriptions
				Group {
					HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
					Text(animal.description)
						.multilineTextAlignment(.leading)
						.layoutPriority(1)
				}
				.padding(.horizontal)
				// Map
				Group {
					HeadingView(headingImage: "map", headingText: "National Parks")
					InsetMapView()
				}
				.padding(.horizontal)
				// Link
				Group {
					HeadingView(headingImage: "books.vertical", headingText: "Learn more")
					ExternalWebLinkView(animal: animal)
				}.padding(.horizontal)
			})
			.navigationBarTitle("Learn about \(animal.name )", displayMode: .inline)
			
		})
	}
}

struct AnimalDetailView_Previews: PreviewProvider {
	static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
		NavigationView {
			AnimalDetailView(animal: animals[1])
		}
		.previewDevice("iPhone 11 Pro")
    }
}
