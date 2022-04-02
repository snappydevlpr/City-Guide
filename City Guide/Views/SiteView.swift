//
//  SiteView.swift
//  City Guide
//
//  Created by Austin Suarez on 4/1/22.
//

import SwiftUI

struct SiteView: View {
    @State var screenWidth = UIScreen.main.bounds.size.width
    @State private var discoveredState: Bool = false;
    @State private var discoveredImage:String = "star";
    var body: some View {
        VStack(spacing:0){
            ZStack{
                Image("Margaret Hunt Hill Bridge")
                    .resizable()
                    .frame(width: screenWidth, height: 400, alignment: .center)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    HStack{
                        Image(systemName:discoveredImage)
                            .foregroundColor(.white)
                            .onTapGesture {
                                discoveredState = !discoveredState;
                                if(!discoveredState){
                                    discoveredImage = "star";
                                    
                                }
                                else{
                                    discoveredImage = "star.fill";
                                }
                            }
                        Text("Discovered")
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    .padding()
                   
                }.offset(y:-25)
               
            }
            
            
            VStack(spacing:0){
                RoundedRectangle(cornerSize:CGSize(width: 20, height: 20),style: .continuous)
                    .fill(Color.white)
                    .frame(width: screenWidth, height: 50)
                    .offset(y:-25)
                HStack{
                    Text("Margaret Hunt Hill Bridge")
                        .fontWeight(.bold)
                        .padding([.leading, .bottom])
                    Spacer()
                }
                Text("The Margaret Hunt Hill Bridge is a bridge in Dallas, Texas, that spans the Trinity River. The bridge is named for Margaret Hunt Hill, an heiress and philanthropist.[3] The bridge was constructed as part of the Trinity River Project. Designed by Santiago Calatrava, it is one of three such bridges planned to be built over the Trinity; the second, the Margaret McDermott Bridge, is completed; the third cancelled. The span parallels the Ronald Kirk Bridge, a walking bridge that was previously the Continental Avenue bridge.[4]")
                    .padding()
                Spacer()
            }
            Spacer()
            Button("Information Sources") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

struct SiteView_Previews: PreviewProvider {
    static var previews: some View {
        SiteView()
    }
}
