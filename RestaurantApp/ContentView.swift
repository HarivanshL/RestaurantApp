//
//  ContentView.swift
//  RestaurantApp
//
//  Created by Harivansh Luchmun on 10/7/23.
//

import SwiftUI

struct ContentView: View {
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
                NavigationLink(destination: NoSignIn()) {
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
