import processing.video.*; 

// Step 1. Declare a Movie object.
Movie movie; 

void setup() {  
  size(320, 240);  

  // Step 2. Initialize Movie object. The file "testmovie.mov" should live in the data folder.
  movie = new Movie(this, "testmovie.mov");  

  // Step 3. Start playing movie. To play just once play() can be used instead.
  movie.loop();
}

// Step 4. Read new frames from the movie.
void movieEvent(Movie movie) {  
  movie.read();
}

// Step 5. Display movie.
void draw() {
  image(movie, 0, 0);
}