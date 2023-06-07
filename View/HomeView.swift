//
//  HomeView.swift
//  Course App
//
//  Created by Dinith Hasaranga on 2023-06-07.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText : String = ""

    var body: some View {
        VStack{
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                }
            }
            HStack{
                VStack(alignment:.leading){
                    Text("Welcome back")
                        .font(.system(size: 24))
                    Text("Dinith")
                        .font(.system(size: 35))
                        .fontWeight(.semibold)
                        .padding(.top,-20)
                }
                Spacer()
            }
            
            HStack{
                TextField("Search your job here", text: $searchText)
                    .leadingImage(systemName: "magnifyingglass")
                    .padding()
                    .background(Color.white)
                    .font(.system(size: 15).bold())
                    .cornerRadius(130)
                    
                
                   
            }
            
            VStack{
                HStack(alignment:.bottom){
                    Text("Categories")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                    Spacer()
                    Text("See all")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                ScrollView(.horizontal , showsIndicators: false){
                    HStack(spacing:10){
                        Category()
                        Category()
                        Category()
                        
                    }
                }
                    
            }
            .padding(.top)
            VStack{
                HStack(alignment:.bottom){
                    Text("Recomended")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                    Spacer()
                    Text("See all")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                ScrollView(.horizontal , showsIndicators: false){
                    HStack(spacing:10){
                        Recomended()
                        Recomended()
                        Recomended()
                        
                    }
                }
                    
            }
            .padding(.top)
            
            Spacer()
           
        }
        .padding()
        .background(Color("AppGray"))

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension View {
    func leadingImage(systemName: String) -> some View {
        HStack {
            self
            Image(systemName: systemName)
                .foregroundColor(.gray)
                .padding(.leading, 8)
            
        }
    }
}

struct Category : View {
    var body: some View{
        VStack{
            
        }
        .frame(width: UIScreen.main.bounds.width * 0.5 - 20, height: 150)
        .background(Color.white)
        .cornerRadius(20)
    }
}


struct Recomended : View {
    var body: some View{
        VStack{
            
        }
        .frame(width: UIScreen.main.bounds.width * 0.9 - 20, height: 150)
        .background(Color.white)
        .cornerRadius(20)
    }
}
