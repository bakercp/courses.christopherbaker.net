// This class, like RangeFloat represents a range of PVector Values.
// This allows us to easily chose from a range of values in a simple class.

class RangePVector {
  private RangeFloat xRange;
  private RangeFloat yRange;
  private RangeFloat zRange;

  public RangePVector(PVector minVector, PVector maxVector) {
    xRange = new RangeFloat(minVector.x, maxVector.x);
    yRange = new RangeFloat(minVector.y, maxVector.y);
    zRange = new RangeFloat(minVector.z, maxVector.z);
  }

  PVector getMax() {
    return new PVector(xRange.getMax(), yRange.getMax(), zRange.getMax());
  }

  void setMax(PVector maximum) {
    xRange.setMax(maximum.x);
    yRange.setMax(maximum.y);
    zRange.setMax(maximum.z);
  }

  PVector getMin() {
    return new PVector(xRange.getMin(), yRange.getMin(), zRange.getMin());
  }

  void setMin(PVector minimum) {
    xRange.setMin(minimum.x);
    yRange.setMin(minimum.y);
    zRange.setMin(minimum.z);
  }

  PVector getRandom() {
    return new PVector(xRange.getRandom(), yRange.getRandom(), zRange.getRandom());
  }

  PVector getMean() {
    return new PVector(xRange.getMean(), yRange.getMean(), zRange.getMean());    
  }

  PVector rangeLerp(float amt) {
    return new PVector(xRange.rangeLerp(amt), yRange.rangeLerp(amt), zRange.rangeLerp(amt));
  }
}

