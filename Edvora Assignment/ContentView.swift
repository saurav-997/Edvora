

import SwiftUI

@available(iOS 13.0, *)
struct ContentView: View {
    
    @State private var showingOptions = false
    @State private var vstacks = 0
    @State private var selection = "Okay"
    var body: some View {
        ZStack(alignment: .top){
            VStack(){
                HStack(alignment: .top, content: {
                    Text("Edvora")
                        .font(.system(size: 45))
                        .bold()
                        .frame(height: 40, alignment: .center)
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                })
                .frame(width: UIScreen.main.bounds.width-25, height: 100, alignment: .center)
                Spacer()
                    .frame(width: UIScreen.main.bounds.width, height: 10, alignment: .center)
                HStack(alignment: .center, content: {
                    Button("Nearest") {
                        
                    }
                    Spacer().frame(width:20, height: 30, alignment: .center)
                    
                    Button("Upcoming") {
                        
                    }.foregroundColor(.gray)
                    Spacer().frame(width:20, height: 30, alignment: .center)
                    
                    Button("Past") {
                        
                    }.foregroundColor(.gray)
                    Spacer()
                    
                    Button(action: { vstacks = 1 } ){
                        Text("Filters")
                    }
                })
                .frame(width: UIScreen.main.bounds.width-25, height: 30, alignment: .center)
                Spacer().frame(width: UIScreen.main.bounds.width, height: 25, alignment: .center)
                
                ForEach(0..<vstacks, id: \.self) { vs in
                    ZStack{
                        VStack{
                            Text("Filters")
                                .font(.system(size: 20.5))
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .multilineTextAlignment(.center)
                                .padding(7.5)
                            Spacer().frame(height:0.1)
                            ZStack{
                                Text("State")
                                    .foregroundColor(.secondary)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(9.5)
                                Button("^"){
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(12.5)
                            }
                            .frame(maxWidth: .infinity, maxHeight: 35)
                            .background(Color.gray.opacity(0.15))
                            .cornerRadius(7.5)
                            .padding(7.5)
                            
                            Spacer().frame(height:0.1)
                            ZStack{
                                Text("City")
                                    .foregroundColor(.secondary)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(9.5)
                                Button("^"){
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(12.5)
                            }
                            .frame(maxWidth: .infinity, maxHeight: 35)
                            .background(Color.gray.opacity(0.15))
                            .cornerRadius(7.5)
                            .padding(7.5)
                        }
                    }
                    .frame(width: 250)
                    .cornerRadius(5)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 0.16)
                    )
                }
                ScrollView{
                    VStack{
                        Button(action: {showingOptions = true}){
                        ZStack(){
                            VStack{
                                Image("navigation")
                                    .resizable()
                                    .scaledToFit()
                                    .overlay(ImageOverlay(),alignment: .bottomTrailing)
                                Spacer().frame(width: 0, height: 0)
                                HStack{
                                    Image(systemName: "number")
                                    Text("Ride ID")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "calendar")
                                    Text("Date")
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .foregroundColor(.blue)
                                .frame(width: UIScreen.main.bounds.width-35, height: 45, alignment: .center)
                                .background(Color.gray.opacity(0.15))

                            }
                        }
                        .sheet(isPresented: $showingOptions, content: {
                            DetailsView(presentedAsModal: self.$showingOptions)
                            
                        })
                        .cornerRadius(10)
                        .frame(width: UIScreen.main.bounds.width-35, height: 250, alignment: .center)
                        .foregroundColor(.black)
                        
                        Spacer().frame(width: 1, height: 45, alignment: .center)
                     
                        }
                        
                            Button(action: {showingOptions = true}){
                            ZStack(){
                                VStack{
                                    Image("navigation")
                                        .resizable()
                                        .scaledToFit()
                                        .overlay(ImageOverlay(),alignment: .bottomTrailing)
                                    Spacer().frame(width: 0, height: 0)
                                    HStack{
                                        Image(systemName: "number")
                                        Text("Ride ID")
                                            .foregroundColor(.black)
                                        Spacer()
                                        Image(systemName: "calendar")
                                        Text("Date")
                                            .foregroundColor(.black)
                                    }
                                    .padding()
                                    .foregroundColor(.blue)
                                    .frame(width: UIScreen.main.bounds.width-35, height: 45, alignment: .center)
                                    .background(Color.gray.opacity(0.15))

                                }
                            }
                            .sheet(isPresented: $showingOptions, content: {
                                DetailsView(presentedAsModal: self.$showingOptions)
                                
                            })
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width-35, height: 250, alignment: .center)
                            .foregroundColor(.black)
                            
                            Spacer().frame(width: 1, height: 45, alignment: .center)
                         
                            }
                        
                            Button(action: {showingOptions = true}){
                            ZStack(){
                                VStack{
                                    Image("navigation")
                                        .resizable()
                                        .scaledToFit()
                                        .overlay(ImageOverlay(),alignment: .bottomTrailing)
                                    Spacer().frame(width: 0, height: 0)
                                    HStack{
                                        Image(systemName: "number")
                                        Text("Ride ID")
                                            .foregroundColor(.black)
                                        Spacer()
                                        Image(systemName: "calendar")
                                        Text("Date")
                                            .foregroundColor(.black)
                                    }
                                    .padding()
                                    .foregroundColor(.blue)
                                    .frame(width: UIScreen.main.bounds.width-35, height: 45, alignment: .center)
                                    .background(Color.gray.opacity(0.15))

                                }
                            }
                            .sheet(isPresented: $showingOptions, content: {
                                DetailsView(presentedAsModal: self.$showingOptions)
                                
                            })
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width-35, height: 250, alignment: .center)
                            .foregroundColor(.black)
                            
                            Spacer().frame(width: 1, height: 45, alignment: .center)
                         
                            }
                        
                            Button(action: {showingOptions = true}){
                            ZStack(){
                                VStack{
                                    Image("navigation")
                                        .resizable()
                                        .scaledToFit()
                                        .overlay(ImageOverlay(),alignment: .bottomTrailing)
                                    Spacer().frame(width: 0, height: 0)
                                    HStack{
                                        Image(systemName: "number")
                                        Text("Ride ID")
                                            .foregroundColor(.black)
                                        Spacer()
                                        Image(systemName: "calendar")
                                        Text("Date")
                                            .foregroundColor(.black)
                                    }
                                    .padding()
                                    .foregroundColor(.blue)
                                    .frame(width: UIScreen.main.bounds.width-35, height: 45, alignment: .center)
                                    .background(Color.gray.opacity(0.15))

                                }
                            }
                            .sheet(isPresented: $showingOptions, content: {
                                DetailsView(presentedAsModal: self.$showingOptions)
                                
                            })
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width-35, height: 250, alignment: .center)
                            .foregroundColor(.black)
                            
                            Spacer().frame(width: 1, height: 45, alignment: .center)
                         
                            }
                    }
                }
                
               
                Spacer()
            }
            
        }
        .fixedSize(horizontal: false, vertical: false)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        .padding()
        
        
    }
}
@available(iOS 13.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

@available(iOS 13.0, *)
struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("20 KM")
                .bold()
                .padding(6)
                .foregroundColor(.white)
                .font(.system(size: 16))
        }
        .frame(width:100)
        .background(Color.accentColor)
        .cornerRadius(10.0)
        .padding(10)
    }
}

@available(iOS 13.0, *)
struct DetailsView: View {
    @Binding var presentedAsModal:Bool
    var body: some View {
        ZStack{
            VStack {
                Spacer().frame(height:20)
                Image("navigation")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width-45, height: 250, alignment: .top)
                    .cornerRadius(10)
                    
                Spacer().frame(width: 0, height: 25)
                
                VStack
                {
                    HStack{
                        VStack{
                            Text("Ride ID")
                                .font(.system(size: 12))
                                .foregroundColor(Color.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Spacer().frame(height:5)
                            Text("001")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Spacer()
                        VStack{
                            Text("Origin Station")
                                .font(.system(size: 12))
                                .foregroundColor(Color.gray)
                            Spacer().frame(height:5)
                            Text("20")
                                .bold()
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width-45)
                    Divider()
                    
                    HStack{
                        VStack{
                            Text("Date")
                                .font(.system(size: 12))
                                .foregroundColor(Color.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Spacer().frame(height:5)
                            Text("16th Feb")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Spacer()
                        VStack{
                            Text("Distance")
                                .font(.system(size: 12))
                                .foregroundColor(Color.gray)
                            Spacer().frame(height:5)
                            Text("100 Km")
                                .bold()
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width-45)
                    Divider()
                    
                    HStack{
                        VStack{
                            Text("State")
                                .font(.system(size: 12))
                                .foregroundColor(Color.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Spacer().frame(height:5)
                            Text("Maharashtra")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Spacer()
                        VStack{
                            Text("Distance")
                                .font(.system(size: 12))
                                .foregroundColor(Color.gray)
                            Spacer().frame(height:5)
                            Text("Panvel")
                                .bold()
                        }
                        
                    }
                    .frame(width: UIScreen.main.bounds.width-45)
                    Divider()
                    
                    HStack{
                        VStack{
                            Text("Station Path")
                                .font(.system(size: 12))
                                .foregroundColor(Color.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Spacer().frame(height:5)
                            Text("20, 39, 40, 42, 54, 63, 72, 88, 98")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width-45)
                    Divider()
                    
                }
            }
        }
        Spacer()
            .fixedSize(horizontal: false, vertical: false)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        .background(Color.secondary.opacity(0.05))
        .frame(maxHeight: .infinity)
    }
}

