//
//  LandmarkDetail.swift
//  FirstSwiftUIProject
//
//  Created by Anton Abramov on 19.03.2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
//Завернули наш VStack в еще один VStack
        ScrollView {
//Добавили наш MapView и задали его высоту
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
//Добавили наше изображение
            CircleImage(image: landmark.image)
//Добавили отступы по оси у
                .offset(y: -130)
                .padding(.bottom, -130)
 //Добавили вертикальный стек и настроили леадинг и фонт у текста
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
    //Добавили горизонтальный стек
                HStack {
                    Text(landmark.park)
    //Добавили пробел между Джошуа и Калифорнией - использует всю ширину родительского вью
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
//Добавили разделительную линию
                Divider()
//Добавили еще 2 блока текста
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
    //Добавили отступы от краев по умолчанию для всего Вью
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
