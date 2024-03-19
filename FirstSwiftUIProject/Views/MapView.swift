//
//  MapView.swift
//  FirstSwiftUIProject
//
//  Created by Anton Abramov on 18.03.2024.
//

import SwiftUI
import MapKit
//Выше импортировали MapKit который дает доступ к карте
struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
//Добавили карту на наше вью и задали ей координаты переменной ниже
        Map(position: .constant(.region(region)))
    }
//Создали переменную и задали ей нужные координаты
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
