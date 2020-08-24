//
//  MosqueDetails.swift
//  SwiftUIDay3
//
//  Created by shaikha aljenaidel on 8/24/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI
import AVFoundation

struct MosqueDetails: View {
    @State var Ayah: AVAudioPlayer?
    var prayers = ["الفجر", "الشروق", "الظهر", "العصر", "المغرب", "العشاء"]
    var prayerTimes = ["4:00AM", "5:00AM", "11:55AM", "3:10PM", "6:10PM", "7:50PM"]
    var mosque: Mosque
    var body: some View {
         ZStack{
            
            Group{
            Image(mosque.name)
                .resizable()
                .frame(width: 420, height: 300, alignment: .top)
                .edgesIgnoringSafeArea(.all)
                .offset(x: 0, y: -240)
                Text(mosque.name)
                    .foregroundColor(.white)
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .offset(x: 0, y: -360)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 15){
                    ForEach(mosque.shuyoukh, id: \.self){ shiekh in
                        Image(shiekh)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 6))
                            .onTapGesture {
                                let path = Bundle.main.path(forResource: "\(shiekh).mp3", ofType:nil)!
                                let url = URL(fileURLWithPath: path)

                                do {
                                    self.Ayah = try AVAudioPlayer(contentsOf: url)
                                    self.Ayah?.play()
                                } catch {
                                    // couldn't load file :(
                                }
                        }
                    }
                }
            }.offset(x: 0, y: -220)
            
            VStack{
                Spacer()
                ScrollView{
                    VStack(spacing: 60){
                    ForEach(0 ..< prayers.count , id: \.self){ prayer in
                       HStack{
                           Spacer()
                        Text(self.prayers[prayer])
                               .foregroundColor(.white)
                               .bold()
                           .font(.system(size: 30))
                            Spacer()
                        Text(self.prayerTimes[prayer])
                               .foregroundColor(.white)
                               .bold()
                               .font(.system(size: 30))
                           Spacer()
                        Divider()
                       }
                    }
                    }
                    
                }.padding(.top, 260)
            }
        }
    }
}

struct MosqueDetails_Previews: PreviewProvider {
    static var previews: some View {
        MosqueDetails(mosque: Mosques[0])
            .environment(\.colorScheme, .dark)
    }
}


