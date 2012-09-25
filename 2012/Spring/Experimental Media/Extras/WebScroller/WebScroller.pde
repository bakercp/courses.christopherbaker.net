
// this is a colelction of PageLink objects
ArrayList<PageLink> pageLinks = new ArrayList<PageLink>();

// this keeps track of the current page link index
int currentPageLinkIndex = 0;

// this is the current position of the current page image
int currentYPosition = 0;

void setup() {
  size(1024, 768, OPENGL);
  frameRate(60);

 // add images and their links here
 // create images with http://capturefullpage.com/
 // or a piece of software like Paparazzi! for OS X.
  pageLinks.add(new PageLink("HuffPost.jpg", "http://huffingtonpost.com"));
  pageLinks.add(new PageLink("apple_tech.png", "http://www.apple.com/iphone/specs.html"));
  // more can be added here ...
}


void draw() {
  background(255);

  currentYPosition -= 30; // scroll speed

  // get the current page
  PageLink currentPageLink = pageLinks.get(currentPageLinkIndex);

  image(currentPageLink.img, 0, currentYPosition);

  println(currentYPosition + currentImage.height);

  if ((currentYPosition + currentImage.height) < height) {
    currentYPosition = height;
    currentPageLinkIndex = (currentPageLinkIndex + 1) % pageLinks.size();
  }
}

void mousePressed() {
  PageLink currentPageLink = pageLinks.get(currentPageLinkIndex);
  String url = currentPageLink.url; 
  open(url);
}

