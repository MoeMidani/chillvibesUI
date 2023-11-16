import SwiftUI

struct Chapter1View: View {
    var body: some View {
        
       
            

    
            
            VStack {
        
                Image("forestPath1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                   // .padding(.top, -90)
                    
                VStack{
                    ScrollView{
                        
            
                    }
                    
                  
                }.padding(.bottom, 20)
            }
           // .padding(.bottom, 100)
                
                   
             //.padding(.bottom, 220)
            
    }
}

#Preview {
    Chapter1View()
       
}
