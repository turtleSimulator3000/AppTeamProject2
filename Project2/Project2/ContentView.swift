//
//  ContentView.swift
//  Project2
//
//  Created by Jeffrey Hu on 2/24/26.
//

import SwiftUI


struct ContentView: View {
    var currentTemp = Int.random(in: 32...100)
    var hours: [Hour] = [Hour(time: "Now", temp: Int.random(in: 32...100), weather: Int.random(in: 0...2)), Hour(time: "1PM", temp: Int.random(in: 32...100), weather: Int.random(in: 0...2)),Hour(time: "2PM", temp: Int.random(in: 32...100), weather: Int.random(in: 0...2)),Hour(time: "3PM", temp: Int.random(in: 32...100), weather: Int.random(in: 0...2)),Hour(time: "4PM", temp: Int.random(in: 32...100), weather: Int.random(in: 0...2)),Hour(time: "5PM", temp: Int.random(in: 32...100), weather: Int.random(in: 0...2)),Hour(time: "6PM", temp: Int.random(in: 32...100), weather: Int.random(in: 0...2))]
    
    var body: some View {
        ZStack{
            LinearGradient(
                            gradient: Gradient(colors: [Color.blue, Color.white]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .ignoresSafeArea()
            VStack {
                
                Text("Chapel Hill").foregroundStyle(.white).font(.system(size: 70))
                
                Text("  \(currentTemp)°").foregroundStyle(.white).font(.system(size: 70))
                Text("Sunny").foregroundStyle(.white).font(.system(size: 40)).opacity(0.5)
                
                ZStack{
                    Rectangle().opacity(0.5).foregroundStyle(Color.blue).cornerRadius(25).frame(height: 200)
                    VStack(alignment: .leading){
                        HStack{
                            Text("Hourly Forecast").foregroundStyle(.white).font(.system(size: 20)).opacity(0.5)
                            Spacer()
                        }.padding()
                        
                        HStack(){
                            ForEach(hours) { hour in
                                HourView(time: hour.time, temp: hour.temp, weather: hour.weather)
                            }
                        }.padding()
                        
                    }
                    
                }
                
                Spacer()
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
