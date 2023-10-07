//
//  ContentView.swift
//  RestaurantApp
//
//  Created by Harivansh Luchmun on 10/7/23.
//

import SwiftUI



struct ContentView: View {
    
    
    @State private var authenticated : Bool = false
    
    //Name : ImagePath, Stars, Location
    @State private var demoRestaurants : [Restaurant] = [
    Restaurant(id: UUID(), name: "Bob's Palace", location: "close", stars: 3, images: [], descriptors: [])
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Hungry and can't decide where to go?")
                    .font(.system(size: 40))
                    .multilineTextAlignment(.center)
                Spacer()
                Text(" Find restaurants in Norman tailored to your preferences")
                    .font(.system(size: 40))
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(destination: LogIn()) {
                    Text("Log In")
                       .foregroundColor(.black)
                       .font(.system(size:30))
                       .fontWeight(.bold)
                    }
                .padding(5)
                NavigationLink(destination: SignUp()) {
                    Text("Sign Up")
                        .foregroundColor(.black)
                        .font(.system(size:30))
                        .fontWeight(.bold)
                    }
                .padding(5)
                NavigationLink(destination: RestaurantLoadView()) {
                    Text("Proceed without logging in")
                       .foregroundColor(.black)
                       .font(.system(size:20))
                    }
                 }.navigationBarTitle("Restaurant Finder", displayMode: .inline)
              }
        /*
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
         */
        
    }
    
    func restaurants() -> Array<Restaurant>{
        return demoRestaurants
    }
}

struct LogIn : View {
    var body: some View {
        VStack{
            Text("Welcome Back")
        }
    }
}

struct SignUp : View{
    var body: some View{
        VStack{
            Text("Sign up")
        }
    }
}

struct RestaurantLoadView : View {
    
    var body: some View {
        VStack{
            ForEach(ContentView().restaurants()){item in
                Text(item.name)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .padding(5)
                    .multilineTextAlignment(.trailing)
                HStack{
                    Text("Location: " + item.location)
                    Text("Stars: " + String(item.stars))

                }
            }
        }

    }
}

struct NoSignIn : View {
    var body: some View {
        Text("No sign in")
    }
}

#Preview {
    ContentView()
}

struct Views: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Restaurant : Identifiable{
    var id = UUID()
    var name : String
    var location : String
    var stars : Int
    var images : [String] = []
    var descriptors : [String] = []
    
    
}
