// This class represents two numbers, a maximum and minimum
// to form a range.  This range can be accessed by simple 
// random getters, etc allowing easy operations on the value.

class RangeFloat {
  // these are private, so they must be set
  // using the setXX methods.  This allows us to 
  // make sure that they obey our rules.
  private float maximum = 0; 
  private float minimum = 0;

  public RangeFloat(float minimum, float maximum) {
    this.minimum = minimum;
    this.maximum = maximum;
    
    // this makes sure that the minimum and maximum area 
    // actually the minimum and maximum in the range.
    if (minimum > maximum) {
      swap();
    }
  }

  float getMax() {
    return maximum;
  }

  void setMax(float maximum) {
    this.maximum = maximum;
    if (minimum > maximum) {
      swap();
    }
  }

  float getMin() {
    return minimum;
  }

  void setMin(float minimum) {
    this.minimum = minimum;
    if (minimum > maximum) {
      swap();
    }
  }

  float getRandom() {
    return random(minimum, maximum);
  }

  float getMean() {
    return (maximum + minimum) / 2.0f;
  }

  float rangeLerp(float amt) {
    return lerp(maximum, minimum, amt);
  }

  private void swap() {
    // we are going to swap values
    float temporary = maximum; // hold this value temporarily
    maximum = minimum;
    minimum = temporary;
  }
}

