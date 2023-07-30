//
//  ContentView.swift
//  lab1Week2
//
//  Created by Rana MHD on 12/01/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var showImage = false
    @State private var sleepTime = false

    var body: some View {
        
        // Task 4
        VStack {
            // Task 1
            Text("My First App")
                .font(.system(.largeTitle))
                .foregroundColor(Color(.darkGray))
                .frame(maxWidth:.infinity, alignment: .leading)

            
            if(showImage) {
                // Task 6
                ZStack {
                    // Task 2
                    Image("pink-flower")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Pink Flower")
                        .foregroundColor(Color(.white))

                }
                
            }
            
           // Task 3
            if(showImage) {
                Button("Hide Image") {
                    showImage.toggle()
                }
            } else {
                Button("Show Image") {
                    showImage.toggle()
                }
            }
            
            // Task 5
            HStack {
                if(sleepTime) {
                    Image(systemName: "moon.stars.fill")
                    Text("Sleep Time")
                    Button("Wakeup Time") {
                        sleepTime.toggle()
                    }
                } else {
                    Image(systemName: "cloud.sun.rain.fill")
                    Text("Wakeup Time")
                    Button("Sleep Time") {
                        sleepTime.toggle()
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
