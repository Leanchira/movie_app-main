import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/movie_card.dart';

final List<Movie> movies = [
  Movie(
    title: "The Dark Knight",
    description:
        "Batman faces his greatest challenge when the Joker, a criminal mastermind, creates chaos in Gotham City. As the Joker pushes the city into anarchy, Batman must confront his own limits to stop him and protect the people he lovesr.",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg",
    rating: 9.0,
    year: 2008,
  ),
  Movie(
    title: "Inception",
    description:
        "Dom Cobb is a skilled thief who steals secrets from deep inside people’s dreams. He is given a chance to erase his criminal past by performing the impossible task of planting an idea into someone’s mind through dreams within dreams..",
    imageUrl:
        "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg",
    rating: 8.8,
    year: 2010,
  ),
  Movie(
    title: "Interstellar",
    description:
        "As Earth becomes uninhabitable, a group of astronauts travel through a wormhole in space to find a new home for humanity. The mission tests love, time, and sacrifice beyond human imagination.",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkshzpfsh566sD5Im2qzFxaxfNFFqSQAFZgg&s",
    rating: 8.6,
    year: 2014,
  ),
  Movie(
    title: "The Matrix",
    description:
        "A computer hacker named Neo discovers that the world he lives in is a simulated reality controlled by machines. He joins a group of rebels to uncover the truth and fight for the freedom of humanity.",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZNl1EYS9z4PfNViNWMK_V5ZspshcWfksobw&s",
    rating: 8.7,
    year: 1999,
  ),
  Movie(
    title: "Toy Story",
    description:
        "Woody, a cowboy toy, feels threatened when a new space ranger toy named Buzz Lightyear becomes his owner’s favorite. The two must work together to find their way home after being separated from their owner.",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd1_9O7ZAMWdim0aZ3AGYpzugvq7EPOdJpHA&s",
    rating: 8.3,
    year: 1995,
  ),
  Movie(
    title: "Mr. Robot",
    description:
        "Elliot Alderson, a socially anxious cybersecurity engineer and hacker, is recruited by an underground group to take down powerful corporations. As he fights corruption, his mental health begins to blur reality and control..",
    imageUrl:
        "https://m.media-amazon.com/images/M/MV5BOTg4NTBiZDAtZTc0YS00NzZlLTg4Y2ItNGQ3M2ZlMDM5MWQzXkEyXkFqcGc@._V1_.jpg",
    rating: 8.5,
    year: 2015,
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Movies")),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.62, //
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: movies[index]);
        },
      ),
    );
  }
}
