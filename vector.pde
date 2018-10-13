//Hier ist ein 2-D Vektor
class vector
{
  vector _vector;
  float _x;
  float _y;

  vector(float x, float y)
  {
    _x=x;
    _y=y;
  }
 vector(vector another)
 {
  _x=another.x();
  _y=another.y(); 
 }
 
 vector addition(vector another)
 {
   vector temp = new vector(this.clone());
   temp._x = _x + another._x;
   temp._y = _y + another._y;
   return temp;
 }
 
  vector bySkalar(float skalar)
  {
    float x = this._x*skalar;
    float y = this._y*skalar;
    vector out = new vector(x,y);
    return out;
  }

  
  vector diff(vector A)
  {

  vector out = new vector(this.clone());
  out._x=  _x - A._x;
  out._y=  _y - A._y;
  return out; 
  }
  
 vector normal2d(vector another)
  {
    another = new vector(-(_y),_x);
    return another;
  }
  
  float skalar(vector another)
  {
    float x =this.x()*another.x() + this.y()*another.y();
    return x;    
  }
  
  float value()
  {
    float x =  sqrt(pow(this.x(),2) + pow(this.y(),2));
    return x;
  }
  
  float x()
  {
    return _x;
  }
  
  float y()
  {
    return _y;
  }
  
  
  vector clone()
  {
    return new vector(this);
  }
    
    
  vector centerLine(vector another)
  {
    vector out = new vector(this.clone());
    out._x=(_x + another._x)/2;
    out._y=(_y + another._y)/2;
    return out;
  }    
    
  
}
