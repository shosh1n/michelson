class Signal
{
  float phase = 0; 
  float pi = PI;
  float f= 1;
  float w = 2*pi*f;
  vector _start;
  vector _end;
  
  Signal(vector start, vector end)
  {
    _start= start; 
    _end = end;
  }

  void shape(int t)
  {
    line(_start.x(),_start.y(), _end.x(), _end.y());
    stroke(255,0,255);
  }


  float progress(int t )
  {
    float y = sin(w*t);
    return y;  

  }


   
} 
