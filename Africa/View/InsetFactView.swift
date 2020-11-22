//
//  InsetFactView.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 22.11.2020.
//

import SwiftUI

struct InsetFactView: View {
	let animal: Animal
    var body: some View {
		GroupBox {
			TabView {
				ForEach(animal.fact, id: \.self) { item in
					Text(item)
				}

			}
			.tabViewStyle(PageTabViewStyle())
			.frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
		} // GorupBox
    }
}

struct InsetFactView_Previews: PreviewProvider {
	static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
		InsetFactView(animal: animals[1])
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
