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
                    Image("Menu")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                }
                .padding(.bottom,40)
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
                        Category(categoryTitle: "Design",
                        categoryDes: "Graphic Design and More",
                        categoryImg: "design")
                        Category(categoryTitle: "Design",
                        categoryDes: "Graphic Design and More",
                        categoryImg: "design")
                        Category(categoryTitle: "Design",
                        categoryDes: "Graphic Design and More",
                        categoryImg: "design")
                        
                       
                        
                    }
                }
                    
            }
            .padding(.top,30)
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
                        Recomended(recTitle: "IETS Preapaetion", recDes: "njnbi iiknhohn ijo")

                       
                            Recomended(recTitle: "IETS Preapaetion", recDes: "njnbi iiknhohn ijo")

                    }
                }
                    
            }
            .padding(.top,30)
            
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
    @State var categoryTitle : String
    @State var categoryDes : String
    @State var categoryImg : String

    var body: some View{
        VStack{
            
            Image("\(categoryImg)")
                .resizable()
            HStack{
                VStack(alignment: .leading){
                    Text("\(categoryTitle)")
                        .padding(.horizontal)
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                    Text("\(categoryDes)")
                        .padding(.horizontal)
                        .padding(.bottom,10)
                        .font(.system(size: 14))
                        .lineLimit(1)

                }
               
                Spacer()
            }
                           
            
        }
        .frame(width: UIScreen.main.bounds.width * 0.5 - 20, height: 180)
        .background(Color.white)
        .cornerRadius(20)
    }
}


struct Recomended : View {
    
    @State var recTitle : String
    @State var recDes : String
   
    var body: some View{
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("\(recTitle)")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("\(recDes)")
                        .padding(.bottom,10)
                        .font(.system(size: 14))
                        .lineLimit(1)
                        .foregroundColor(.gray)
                    HStack(spacing:0){
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Text("4.9")
                            .foregroundColor(.white)
                            .padding(.leading)
                        Spacer()
                        Text("Get Course")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))


                    }
                        .foregroundColor(.orange)
                    
                }
                .padding(.horizontal)
                Spacer()

            }
               

        }
        .frame(width: UIScreen.main.bounds.width * 0.9 - 20, height: 130)
        .background(Color("BlackCard"))
        .cornerRadius(20)
    }
}

