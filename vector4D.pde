//Hier ist ein 4D-Vektor
class vector4D
{
    float _x1;
    float _x2;
    float _x3;
    float _x4;
    float _x5;

    vector4D _construct;

    vector4D(float x1, float x2, float x3, float x4)
    {
        _x1=x1;
        _x2=x2;
        _x3=x3;
        _x4=x4;
        
    }
    
    vector4D(vector4D another)
    {
      _x1=another.x1();
      _x2=another.x2();
      _x3=another.x3();
      _x4=another.x4();
    }
    
    vector4D bySkalar(float factor)
    {
       vector4D temp= new vector4D(this.clone());
        temp._x1 = _x1*factor;
        temp._x2 = _x2*factor;
        temp._x3 = _x3*factor;
        temp._x4 = _x4*factor;
    
        return  temp;
    }
    
    vector4D solveAlpha(float beta)
    {
      vector4D temp = new vector4D(this.clone());
      temp._x1= _x1 - _x1;
      temp._x2= _x2;
      temp._x3= _x3 - _x1;
      temp._x4= _x4; 

      return temp;
    }
    
    vector4D solveBeta(float alpha)
    {
     
      vector4D temp = new vector4D(this.clone());
      temp._x1= _x1;
      temp._x2=_x2*alpha;
      temp._x3=_x3;
      temp._x4=_x4;

      
     
      temp._x1=temp._x1 + temp._x2 - temp._x3;
      temp._x2=temp._x2 - temp._x2; 
      temp._x3=temp._x3 - temp._x3;
      temp._x4=temp._x4;
      
    return temp;  

    }
    
    vector4D diff(vector4D A)
    {
        A._x1 =_x1 - A._x1;
        A._x2 =_x2 - A._x2;
        A._x3 =_x3 - A._x3;
        A._x4 =_x4 - A._x4;
        
        return A;
    }

    vector4D clone()
     {
        return new vector4D(this);
     }
    
   float x1()
    {
     return _x1;
    }
   
    float x2()
    {
     return _x2;
    }

    float x3()
    {
     return _x3;
    }

    float x4()
    {
     return _x4;
    }
}

