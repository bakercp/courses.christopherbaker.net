
// this is a colelction of PageLink objects
ArrayList<PageLink> pageLinks = new ArrayList<PageLink>();

// this keeps track of the current page link index
int currentPageLinkIndex = 0;

// this is the current position of the current page image
int currentYPosition = 0;

void setup() {
  size(1024, 768); // could also use size(1024, 768, OPENGL); for better performance
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

  // draw the current image (it accesses the related image via .img).
  // img is the variable name (see the PageLink tab above).
  image(currentPageLink.img, 0, currentYPosition);

  // if the current position takes the image off of the page,
  // then we reset the current Y position and get a new current image.
  // we use a modulo operator to help us choose a valid index into our
  // collection (i.e. our ArrayList full of PageLink objects).
  if ((currentYPosition + currentPageLink.img.height) < height) {
    currentYPosition = height;
    currentPageLinkIndex = (currentPageLinkIndex + 1) % pageLinks.size();
  }
}

void mousePressed() {
  // when a mouse is pressed, we look and see what PageLink is 
  // currently active onscreen (by lookin gat the current index)
  // and then we get it and open its url.
  PageLink currentPageLink = pageLinks.get(currentPageLinkIndex);
  // again, we are using the .url syntax to access the object's
  // member variable called "url" -- see the PageLink tab above!
  open(currentPageLink.url);
}

