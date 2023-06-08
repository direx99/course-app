//
//  CourseDetailView.swift
//  Course App
//
//  Created by Dinith Hasaranga on 2023-06-08.
//

import SwiftUI

struct CourseDetailView: View {
    var body: some View {
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

                }
                
               

                Spacer()
                
            }
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

           

            Test()
            Spacer()
                
        }
        .padding()
        .padding(.top,40)
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("BlackCard"))
        .padding(.bottom,-25)


        
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
                Text("Getting Started")
                    .foregroundColor(.white)
                    .padding(.leading,10)
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                Text("13 Miniutes")
                    .foregroundColor(.gray)
                    .padding(.leading,10)
                    .font(.system(size: 13))
            }

            Spacer()
            
        }
        .frame(width: UIScreen.main.bounds.width * 1 - 50, height: 80)
        .background(Color("BlueCard"))
        .cornerRadius(25)
        .padding(.bottom,5)
    }
}

struct Test: View {
    @State private var selectedTab = 0

        var body: some View {
            VStack {
                
                TabView(selection: $selectedTab) {
                    VStack{
                        ScrollView{
                            Lesson()
                            Lesson()
                            Lesson()
                            Lesson()
                        }
                    }
                        .tabItem {
                            Label("Tab 1", systemImage: "1.circle")
                        }
                        .tag(0)
                    
                    VStack{
                        ScrollView{
                            Lesson()
                            Lesson()
                            Lesson()
                            Lesson()
                        }
                    }
                        .tabItem {
                            Label("Tab 2", systemImage: "2.circle")
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
           
                    
        }
    }
