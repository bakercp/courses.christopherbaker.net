class PageLink {
  // This is a "class".
  // A class simply allows us to create complex objects
  // that can include lots of other variables.
  // Classes usually represent a more complex idea or 
  // logical grouping -- or data that needs to go together.
  // In this case, we want to make sure that we can represent
  // an image AND a related URL.
  
  public PImage img; // this is the variable, accessible via the "." operator (see main file)
  public String url; // same as above

  // this is a very simple "constructor"
  // it allows you to contruct or create an instance of the class
  public PageLink(String imageName, String _url) {
    img = loadImage(imageName);
    url = _url;
  }
}

