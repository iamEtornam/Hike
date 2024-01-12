//
//  CardView.swift
//  Hike
//
//  Created by Etornam on 12/01/2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber:Int = 1
    @State private var randomNumber:Int = 1
    
    func randomImage(){
        print("----the button was pressed-----")
        print("STATUS: Old image number = \(imageNumber)")
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("Random number = \(randomNumber)")
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
        print("Image number = \(imageNumber)")
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                            LinearGradient(colors: [
                                .customGrayLight,
                                .customGrayMedium
                            ],
                                           startPoint: .top,
                                           endPoint: .bottom
                            )
                            )
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            CustomButtonView()
                        })
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal,30)
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color.customIndigoMedium,
                                    Color.colorSalmonLight
                                ],
                                startPoint: UnitPoint.topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256,height: 256)
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                
                }
                
                Button(action: {
                    randomImage()
                }, label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom
                                                       )
                        )
                        .shadow(
                            color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25),
                                radius: 0.25,x:1,y:2
                        )
                })
                .buttonStyle(GradientButton())
               
            }
        }
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
