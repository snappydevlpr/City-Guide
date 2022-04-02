//
//  CityView.swift
//  City Guide
//
//  Created by Austin Suarez on 4/1/22.
//

import SwiftUI

struct CityView: View {
    @State private var appName: String = "Wandering Soul";
    @State private var cityName: String = "Dallas";
    
    
    var body: some View {
        ZStack{
            


            VStack{
                //MARK: - Title
                VStack{
                    HStack{
                        Text(appName)
                            .font(.system(size: 32))
                            .fontWeight(.bold)
                        Spacer()
                    }
                    HStack(spacing:0){
                        Text(cityName)
                            .font(.system(size: 20))
                            .fontWeight(.bold)

                        Text(", City Guide")
                            .font(.system(size: 20))
                            .fontWeight(.bold)

                        Spacer()
                    }
                }
                .padding(20)
                                
                VStack{
                    //MARK: - Iconic Places header
                    VStack(spacing:20){
                        HStack{
                            Text("Iconic places")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                            Spacer()
                        }
                    
                        HStack{
                            Button("Visit") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            Button("Discovered") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            Spacer()
                        }
                    }
                   
                    //MARK: - Iconic Places Carosel
                    HStack{
                        ZStack{
                            //MARK: - ICONIC PLACES BACKGROUND
                            Image("Margaret Hunt Hill Bridge").resizable()
                                .frame(width: 300, height: 200, alignment: .center)
                                .cornerRadius(25)
                            RoundedRectangle(cornerSize:CGSize(width: 20, height: 20),style: .continuous)
                                .fill(Color.black.opacity(0.20))
                                .frame(width: 300, height: 200)
                            
                            //MARK: - ICONIC PLACES INFO
                            VStack{
                                Spacer()
                                HStack{
                                    Text("Margaret Hunt Hill Bridge")
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                                .padding()
                            }
                           
                            
                        }
                        .frame(width: 300, height: 200)
                        .offset(x:-10)
                        
                    
                    }
                    
                    
                }
                .padding(20)
                Spacer()
                
            }
            
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
