import SwiftUI

struct Genre: Identifiable {
    let id = UUID()
    let title: String
    let primaryGenre: String
    let secondaryGenre: String
    let primaryColor: Color
    let secondaryColor: Color
}

struct StacksView: View {
    let genres = [
        Genre(title: "Your Top Hit", primaryGenre: "Hip-Hop", secondaryGenre: "R-N-B", primaryColor: Color.blue, secondaryColor: Color.red),
        Genre(title: "Your frequent searches", primaryGenre: "Gospel", secondaryGenre: "Classicala", primaryColor: Color.teal, secondaryColor: Color.cyan),
        Genre(title: "Week New Release", primaryGenre: "Western", secondaryGenre: "Juju", primaryColor: Color.brown, secondaryColor: Color.orange),
        Genre(title: "Life in the urban", primaryGenre: "Fuji", secondaryGenre: "Apala", primaryColor: Color.green, secondaryColor: Color.purple),
        Genre(title: "Life in the urban", primaryGenre: "Fuji", secondaryGenre: "Apala", primaryColor: Color.green, secondaryColor: Color.purple),
        Genre(title: "Life in the urban", primaryGenre: "Fuji", secondaryGenre: "Apala", primaryColor: Color.green, secondaryColor: Color.purple),
        Genre(title: "Life in the urban", primaryGenre: "Fuji", secondaryGenre: "Apala", primaryColor: Color.green, secondaryColor: Color.purple)
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                VStack {
                    HStack {
                        Text("Search")
                            .bold()
                            .padding(.leading, 10)
                        Spacer()
                        HStack {
                            Image(systemName: "mic")
                                .padding(.trailing, 10)
                            Image(systemName: "camera")
                        }
                        .padding(.trailing, 10)
                    }
                }
                
                ForEach(genres) { genre in
                    VStack(alignment: .leading) {
                        Text(genre.title)
                            .bold()
                        HStack(spacing: 15) {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading) {
                                    Rectangle()
                                        .fill(genre.primaryColor)
                                        .frame(width: 180, height: 100)
                                    
                                    Text(genre.primaryGenre)
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("img1") // Replace "img1" with your actual image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .rotationEffect(.degrees(30))
                                    .offset(x: 16, y: 0)
                            }
                            .cornerRadius(10)
                            .clipped()
                            
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading) {
                                    Rectangle()
                                        .fill(genre.secondaryColor)
                                        .frame(width: 180, height: 100)
                                    
                                    Text(genre.secondaryGenre)
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("img2") // Replace "img2" with your actual image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .rotationEffect(.degrees(30))
                                    .offset(x: 16, y: 0)
                            }
                            .cornerRadius(10)
                            .clipped()
                        }
                    }
                }
            }
        }
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
