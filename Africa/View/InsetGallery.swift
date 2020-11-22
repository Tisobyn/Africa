//
//  InsetGallery.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 19.11.2020.
//

import SwiftUI

struct InsetGallery: View {
	let animal: Animal
    var body: some View {
		ScrollView(.horizontal, showsIndicators: true) {
			HStack.init(alignment: .center, spacing: 15) {
				ForEach(animal.gallery, id: \.self ) { item in
					Image(item)
						.resizable()
						.scaledToFit()
						.frame(height: 200)
						.cornerRadius(12)
				}
			}
		}
    }
}

struct InsetGallery_Previews: PreviewProvider {
	static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
		InsetGallery(animal: animals[0])
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
