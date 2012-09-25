class PageLink {
  
  public PImage img;
  public String url; 
  public PageLink(String imageName, String _url) {
    img = loadImage(imageName);
    url = _url;
  }
}

