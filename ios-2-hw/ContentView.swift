//
//  ContentView.swift
//  ios-2-hw
//
//  Created by Mohammed Alqattan on 14/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var stepperValue1: Int = 0
    @State var stepperValue2: Int = 0
    @State var stepperValue3: Int = 0
    @State var stepperValue4: Int = 0
    @State var amountOfMoney = ""
    @State var total = 0.000
    @State var richOrPoor = ""

    var body: some View {
        
        
        ZStack{
            Image("burgundy")
                .resizable()
                .ignoresSafeArea()
        VStack{
            Text("Costa Coffee")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
            Spacer()
                .frame(height:720, alignment: .center)
            
        }
            VStack{
            Image("costa coffee")
                .resizable()
                .scaledToFit()
                .frame(width:150)
                Spacer()
                    .frame(height:500)
            }
            Color.white
                .padding()
                .frame(width:430 ,height: 350)
            
            VStack(spacing:45) {
                HStack{
                Text("Flat White")
                    .font(.title3)
                    .fontWeight(.bold)
                    Spacer()
                        .frame(width:265)
                }
                HStack{
                Text("Spanish Latte")
                    .font(.title3)
                    .fontWeight(.bold)
                    Spacer()
                        .frame(width:233)
                }
                HStack{
                Text("Cappuccino")
                    .font(.title3)
                    .fontWeight(.bold)
                    Spacer()
                        .frame(width:250)
                }
                HStack{
                Text("Americano")
                    .font(.title3)
                    .fontWeight(.bold)
                    Spacer()
                        .frame(width:260)
                }
            }
            VStack(spacing:45){
                Text("KD 1.800")
                    .font(.title3)
                    .fontWeight(.bold)
                Text("KD 2.050")
                    .font(.title3)
                    .fontWeight(.bold)
                Text("KD 1.600")
                    .font(.title3)
                    .fontWeight(.bold)
                Text("KD 1.350")
                    .font(.title3)
                    .fontWeight(.bold)
            }
            
            //amount of drinks
            
            VStack(spacing:38){
                HStack{
                    Spacer()
                        .frame(width:250)
                    
                Stepper("\(stepperValue1)", value: $stepperValue1, in: 0...10, step: 1)
                    .labelsHidden()
                    Text("\(stepperValue1)")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                HStack{
                    Spacer()
                        .frame(width:250)
                Stepper("\(stepperValue2)", value: $stepperValue2, in: 0...10, step: 1)
                    .labelsHidden()
                    Text("\(stepperValue2)")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                HStack{
                    Spacer()
                        .frame(width:250)
                Stepper("\(stepperValue3)", value: $stepperValue3, in: 0...10, step: 1)
                    .labelsHidden()
                    Text("\(stepperValue3)")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                HStack{
                    Spacer()
                        .frame(width:250)
                Stepper("\(stepperValue4)", value: $stepperValue4, in: 0...10, step: 1)
                    .labelsHidden()
                    Text("\(stepperValue4)")
                        .font(.title3)
                        .fontWeight(.bold)
                }

            } .padding()
            
            
            
            VStack{
                Spacer()
                    .frame(height:400)
                HStack{
                    Text("Enter amount of money :")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    TextField("Amount", text: $amountOfMoney)
                        .padding()
                        .frame(width:100)
                        .background(.white)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width:100)
                }
            }
            
            //rich or poor
            
            VStack{
                Spacer()
                    .frame(height:750)
            Text(richOrPoor)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.red)
            }
            
            
            VStack{
                Spacer()
                    .frame(height: 600)
            Text("Click to checkout")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding(15)
                .background(Color.white.opacity(0.3))
                .cornerRadius(5)
                onTapGesture {
                    
                    
                    
                    total = (1.8 * Double(stepperValue1)) + (2.05 * Double(stepperValue1)) + (1.6 * Double(stepperValue1)) + (1.35 * Double(stepperValue1))
                    
                    if amountOfMoney.isEmpty {
                        richOrPoor = "Enter your amount please"
                    } else if (Double(amountOfMoney) ?? 0.0) > total{
                        richOrPoor = "You have enough money"
                    } else if (Double(amountOfMoney) ?? 0.0) == total{
                        richOrPoor = "You have the perfect amount"
                    } else {
                        richOrPoor = "You need more money"
                    }
                    
                }
                
                
                Spacer()
                    .frame(height:20)
                
                Text("Your total is \(String(format: "%.3f", total))")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

}
