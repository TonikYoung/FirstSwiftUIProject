//
//  CircleImage.swift
//  FirstSwiftUIProject
//
//  Created by Anton Abramov on 18.03.2024.
//

import SwiftUI

struct CircleImage: View {
   
    var image : Image
    var body: some View {
//Добавили картинку из ассетов
        image
//Добавили закругление изображения
            .clipShape(Circle())
//Добавили еще один слой, задали что он круглый и это линия ее цвет и ширина
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
//Добавили тень
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
