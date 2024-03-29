//
//  ContentView.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 16.11.2020.
//

import SwiftUI

struct ContentView: View {
	
	let animals: [Animal] = Bundle.main.decode("animals.json")
	let haptics = UIImpactFeedbackGenerator(style: .medium)
	
	@State private var isGridViewActive: Bool = false
	
	@State private var gridLayout: [GridItem] = [ GridItem(.flexible())]
	@State private var gridColume: Int = 1
	@State private var toolbarIcon: String = "square.grid.2x2"
	
	func gridSwitch() {
		gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
		gridColume = gridLayout.count
		
		switch gridColume {
		case 1:
			toolbarIcon = "rectangle.grid.1x2"
		case 2:
			toolbarIcon = "square.grid.2x2"
		case 3:
			toolbarIcon = "rectangle.grid.3x2"
		default:
			toolbarIcon = "square.grid.2x2"
		}
	}
	
    var body: some View {
		NavigationView {
			Group {
				if !isGridViewActive {
					List {
						CoverImageView()
							.frame(height: 300)
							.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

						ForEach(animals) { animal in
							NavigationLink(
								destination: AnimalDetailView(animal: animal)
							) {
								AnimalListItemView(animal: animal)
							}
						}
						
						CreditsView()
							.modifier(CenterModifier())
					}
				} else {
					ScrollView(.vertical, showsIndicators: false) {
						LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
							ForEach(animals) { animal in
								NavigationLink(
									destination: AnimalDetailView(animal: animal)
								) {
									AnimalGridItemView(animal: animal)
								}
								
									
							}
						}
						.padding(10)
						.animation(.easeIn)
					}
				}
			}
			.navigationBarTitle("Africa", displayMode: .large)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					HStack(spacing: 16) {
						//List
						Button(action: {
							print("This View is Activated")
							isGridViewActive = false
							haptics.impactOccurred()
						}) {
							Image(systemName: "square.fill.text.grid.1x2")
								.font(.title2)
								.foregroundColor(isGridViewActive ? .primary : .accentColor)
						}
						
						Button(action: {
							print("Grid View is Activated")
							isGridViewActive = true
							haptics.impactOccurred()
							gridSwitch()
						}) {
							Image(systemName: toolbarIcon)
								.font(.title2)
								.foregroundColor(isGridViewActive ? .accentColor : .primary)
						}
					}
				}
			}
		}
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
