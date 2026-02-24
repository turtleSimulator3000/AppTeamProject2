//
//  SwiftUIView.swift
//  Project2
//
//  Created by Jeffrey Hu on 2/24/26.
//

import SwiftUI
struct Hour: Identifiable{
    var time: String
    var temp: Int
    var weather: Int
    var id = UUID()
}

struct HourView: View {
    var time: String
    var temp: Int
    var weather: Int
    
    var body: some View {
        VStack(){
            Text("\(time)").foregroundStyle(Color.white).font(.system(size: 20))
            if weather == 0{
                Image(systemName: "sun.max.fill").foregroundStyle(.yellow).frame(height: 10)
            }
            else if weather == 1{
                Image(systemName: "cloud.fill").foregroundStyle(.gray).frame(height: 10)
            }
            else if weather == 2{
                Image(systemName: "cloud.rain.fill").foregroundStyle(.blue).frame(height: 10)
            }
            Text("\(temp)°").foregroundStyle(Color.white).font(.system(size: 20))
        }
        
    }
}

#Preview {
    ContentView()
}
