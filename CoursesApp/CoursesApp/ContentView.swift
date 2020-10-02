import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
        
    }
}


struct Home: View {
    @State var txt = ""
    
    var body: some View {
        VStack {
            
            HStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Hello Carlos")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Lets upgrade your skill!")
                    
                }
                .foregroundColor(.black)
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    Image("profile")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                }
            }
            .padding()
            
            
            ScrollView(.vertical, showsIndicators: false) {
             
                VStack {
                    
                    HStack(spacing: 15) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Search Courses", text: $txt)
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                    
                    HStack {
                        Text("Categories")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {}) {
                            Text("View All")
                        }
                        .padding()
                    }
                    .foregroundColor(.black)
                    .padding(.top, 25)
                }
                .padding()
            }
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
    }
}


struct CourseCardView : View {
    
    var course : Course
    
    var body: some View {
        
        VStack {
            
            Image(course.asset)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .padding(.top, 10)
                .padding(.leading, 10)
                .background(Color(course.asset))
            
            HStack {
                
                VStack(alignment: .leading, spacing: 12) {
                    Text(course.name)
                        .fontWeight(.bold)
                    
                    Text("\(course.numCourse) Courses")
                }
                .foregroundColor(.black)
                Spacer(minLength: 0)
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(15)

    }
}


struct Course : Identifiable {
    
    var id = UUID().uuidString
    var name : String
    var numCourse : Int
    var asset : String
}

var courses = [
    Course(name: "Coding", numCourse: 12,asset: "coding"),
    Course(name: "Trading", numCourse: 12,asset: "trading"),
    Course(name: "Cooking", numCourse: 12,asset: "cooking"),
    Course(name: "Marketing", numCourse: 12,asset: "marketing"),
    Course(name: "UI/UX", numCourse: 12,asset: "ux"),
    Course(name: "Digital Marketing", numCourse: 12,asset: "digital")]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
