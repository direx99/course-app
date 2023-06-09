//
//  CourseDetailView.swift
//  Course App
//
//  Created by Dinith Hasaranga on 2023-06-08.
//

import SwiftUI

struct CourseDetailView: View {
    init() {
            // Use this if you want to customize the navigation bar appearance
            UINavigationBar.appearance().backgroundColor = UIColor(named: "BlackCard")
            
            // Change the status bar color to white
        UIApplication.shared.statusBarStyle = .darkContent
        }
    var body: some View {
        VStack{
            ScrollView{
                
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("React - The Complete ")
                                .font(.system(size: 32))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Text("Guid")
                                .font(.system(size: 32))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.bottom,1)
                            
                            Text("Developement")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                            
                            HStack(spacing:0){
                                Group{
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                }
                                .font(.system(size: 12))
                                
                                Text("5")
                                    .foregroundColor(.white)
                                    .padding(.leading,5)
                                    .font(.system(size: 12))
                                Spacer()
                                Image(systemName: "person.2.fill")
                                Text("23 234")
                                    .foregroundColor(.white)
                                    .padding(.leading,5)
                                    .font(.system(size: 12))
                                Spacer()
                                Image(systemName: "person.2.fill")
                                Text("23 234")
                                    .foregroundColor(.white)
                                    .padding(.leading,5)
                                    .font(.system(size: 12))
                                
                                
                            }
                            .foregroundColor(.orange)
                            .padding(.top,10)
                        }
                        
                        
                        
                        Spacer()
                    }
                    HStack(){
                        Text("$19.99")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .fontWeight(.semibold)
                            .padding(.top,20)
                        
                        Spacer()
                        
                    }
                    HStack(){
                        VStack(alignment:.leading){
                            Text("About Course")
                                .foregroundColor(.white)
                                .font(.system(size: 18))
                                .padding(.top,10)
                                .padding(.bottom,2)
                            Text("The React. JS Course Curriculum contains basic elements like introduction, JSX overview, Environmental setup, real-time applications, forms and UI, Component Lifecycle, Event Handling.")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .opacity(0.8)
                            
                        }
                        
                        
                        
                        Spacer()
                        
                    }
                    
                    
                   
                    
                    
                    Test()
                        .padding(.top,-50)
                    
                    
                    
                }
                .padding()
                .padding(.top,40)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("BlackCard"))
                .padding(.bottom,-25)
                
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .background(Color("BlackCard"))
            .navigationBarHidden(true)
            .ignoresSafeArea()
            
            .navigationViewStyle(StackNavigationViewStyle())
            VStack{
              Text("Buy now")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: UIScreen.main.bounds.width * 1 - 50, height: 60)
                    .opacity(0.9)

                
            }
            .background(Color("Orange"))
            .cornerRadius(32)
            
        }
        
        .padding(.top)
        .background(Color("BlackCard"))
       
        
        

        
    }
    
    
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView()
    }
}

struct Lesson : View {
    var body: some View{
        HStack{
            
            VStack(){
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
            }
            .frame(width: 60,height: 60)
            .background(Color("BlueRound"))
            .cornerRadius(50)
            .padding(.leading)
            .opacity(0.6)
            VStack(alignment:.leading,spacing: 2){
                Spacer()

                Text("Getting Started")
                    .foregroundColor(.white)
                    .padding(.leading,10)
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                HStack{
                    Text("13 Lectures")
                        .foregroundColor(.orange)
                        .padding(.leading,10)
                        .font(.system(size: 13))
                    Spacer()
                    Text("13 min")
                        .foregroundColor(.gray)
                        .padding(.trailing,20)
                        .font(.system(size: 13))
                    
                }
            
            
            Spacer()
        }
            Spacer()

        }
        .frame(width: UIScreen.main.bounds.width * 1 - 50, height: 80)
        .background(Color("BlueCard"))
        .cornerRadius(25)
    }
}

struct Test: View {
    @State private var selectedTab = 0

        var body: some View {
            VStack {
                
                TabView(selection: $selectedTab) {
                    VStack{
                        VStack{

                        HStack{
                            Text("Lessons")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .padding(.top,20)
                                .padding(.bottom,10)
                            Text("Reviews")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                                .padding(.top,20)
                                .padding(.bottom,10)
                                .padding(.leading)
                            Spacer()
                        }
                        .padding(.top)
                                VStack{
                                    Group{
                                        Lesson()
                                        Lesson()
                                        Lesson()
                                        Lesson()
                                        Lesson()
                                        Lesson()
                                        Lesson()
                                        Lesson()
                                        Lesson()
                                        
                                    }

                                
                                    Spacer()
                                }
                            
                                .frame(height: 1000)
                                }

                        
                    }
                   
                        
                        .tag(0)
                    
                    VStack{
                        VStack{
                            HStack{
                                Text("Lessons")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 20))
                                    .padding(.top,20)
                                    .padding(.bottom,10)
                                
                                Text("Reviews")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .padding(.top,20)
                                    .padding(.bottom,10)
                                    .padding(.leading)
                                
                                
                                Spacer()
                            }
                            .padding(.top)
                            VStack{
                                Review()
                                Review()
                                Review()

                                Review()
                                    Review()
                                    Review()
                                    Review()

                                    Review()
                                Spacer()
                            }
                            .frame(height: 1000)
                        }
                        

                    }
                        
                        .tag(1)
                    
                  
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .gesture(
                    DragGesture()
                        .onEnded { value in
                            if value.translation.width < 0 {
                                selectedTab = min(selectedTab + 1, 2)
                            } else if value.translation.width > 0 {
                                selectedTab = max(selectedTab - 1, 0)
                            }
                        }
                )
            }
            .frame( height: UIScreen.main.bounds.width * 3)

                    
        }
    }


struct Review : View {
    var body: some View{
        HStack(alignment: .top){
            
          
                Image("user")
                .resizable()
                .scaledToFit()
            
            .frame(width: 50,height: 50)
            .background(Color("BlueRound"))
            .cornerRadius(50)
            .padding(.leading)
            VStack(alignment:.leading,spacing: 2){
                HStack(){
                    Text("Amashi Silva")
                        .foregroundColor(.white)
                        .padding(.leading,10)
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                    Spacer()
                    Text("2 months ago")
                        .foregroundColor(.gray)
                        .padding(.trailing,20)
                        .font(.system(size: 13))
                    
                }
                
               
                HStack(spacing:0){
                    Group{
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                    }
                    .font(.system(size: 12))
                }
                .foregroundColor(.orange)
                .padding(.leading,10)
                
                VStack{
                    Text("I recently completed a comprehensive React course, and I must say it exceeded all my expectations. This course was an absolute game-changer for my development journey. From start to finish, it provided a solid foundation in React and equipped me with the necessary skills to build complex web applications with confidence.")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .padding(.leading,10)
                        

                }
                .frame(height: 70)
                
                
                   
                    
                
            
            
        }
            Spacer()
            

        }
        
    }
}
