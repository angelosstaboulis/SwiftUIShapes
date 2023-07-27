//
//  ContentView.swift
//  SwiftUIShapes
//
//  Created by Angelos Staboulis on 27/7/23.
//

import SwiftUI
struct RectangleSwiftUI:Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path(rect)
        path.addRect(rect)
        return path
    }
}
struct CircleSwiftUI:Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: (UIScreen.main.bounds.width / 2.0)-150 , y: UIScreen.main.bounds.minY), radius: 50, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 360.0), clockwise: true)
        return path
    }
}
struct ContentView: View {
    @State var selectedColorRectangle:Color! = .blue
    @State var selectedColor:Color! = .blue
    var body: some View {
        NavigationView{
            LazyVGrid(columns: [.init(),.init()]) {
                VStack{
                    RectangleSwiftUI()
                        .frame(width: 150, height: 140, alignment: .leading)
                        .foregroundColor(selectedColorRectangle)
                }.padding(30.0)
                VStack{
                    CircleSwiftUI()
                        .foregroundColor(selectedColor)
                }.padding(30.0)
                VStack{
                    Button {
                        selectedColorRectangle = .red
                    } label: {
                        Text("Red")
                    }.padding(15.0)
                        .background {
                            RoundedRectangle(cornerRadius: 22.0)
                                .frame(width: 150, height: 45.0, alignment: .leading)
                                .foregroundColor(.red)
                        }
                    Button {
                        selectedColorRectangle = .green
                    } label: {
                        Text("Green")
                    }.padding(15.0)
                        .background {
                            RoundedRectangle(cornerRadius: 22.0)
                                .frame(width: 150, height: 45.0, alignment: .leading)
                                .foregroundColor(.green)
                        }
                    Button {
                        selectedColorRectangle = .blue
                    } label: {
                        Text("Blue")
                            .foregroundColor(.white)
                    }.padding(15.0)
                        .background {
                            RoundedRectangle(cornerRadius: 22.0)
                                .frame(width: 150, height: 45.0, alignment: .leading)
                                .foregroundColor(.blue)
                        }
                }.padding(30.0)
                VStack{
                    VStack{
                        Button {
                            selectedColor = .red
                        } label: {
                            Text("Red")
                        }.padding(15.0)
                            .background {
                                RoundedRectangle(cornerRadius: 22.0)
                                    .frame(width: 150, height: 45.0, alignment: .leading)
                                    .foregroundColor(.red)
                            }
                        Button {
                            selectedColor = .green
                        } label: {
                            Text("Green")
                        }.padding(15.0)
                            .background {
                                RoundedRectangle(cornerRadius: 22.0)
                                    .frame(width: 150, height: 45.0, alignment: .leading)
                                    .foregroundColor(.green)
                            }
                        Button {
                            selectedColor = .blue
                        } label: {
                            Text("Blue")
                                .foregroundColor(.white)
                        }.padding(15.0)
                            .background {
                                RoundedRectangle(cornerRadius: 22.0)
                                    .frame(width: 150, height: 45.0, alignment: .leading)
                                    .foregroundColor(.blue)
                            }
                    }.padding(30.0)
                }.padding(30.0)
            }.navigationBarTitle("SwiftUIShapes", displayMode:.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
