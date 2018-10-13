class gaussSeidel
{
  vector _A;
  vector _D;
  vector _AB;

  vector _B;
  vector _C;
  vector _CD;

  vector4D _equationOne;
  vector4D _equationTwo;
    
  vector4D _equationThree;
  float alpha;
  float beta;
  gaussSeidel(vector A, vector B, vector C, vector D )
  {
      _A =A;
      _D =D;
      _B =B;
      _C =C;

      _AB= A.diff(B);
      _CD= C.diff(D);
      this.saveEquation();
  }

  void saveEquation()
  {
    _equationOne = new vector4D(_A._x, _AB._x, _C._x, _CD._x);
    _equationTwo = new vector4D(_A._y, _AB._y, _C._y, _CD._y);
    
   _equationThree= _equationOne.clone();
   _equationThree= _equationOne.bySkalar(1/_CD._x);   
   _equationThree= _equationThree.bySkalar(_CD._y);
   _equationThree= _equationTwo.diff(_equationThree);
   _equationThree= _equationThree.solveAlpha(_AB._x);
   _equationThree= _equationThree.bySkalar(1/_equationThree._x2);
 //    _equationThree= _equationThree.solveBeta(_equationThree._x3);
 //  _equationThree= _equationThree.bySkalar(1/_equationThree._x4); 
   
   alpha = _equationThree._x3;
   _equationOne=_equationOne.bySkalar(1/ _equationOne._x4);
  // vector inter= new vector(_AB._x, _AB._y);
   //inter =  inter.bySkalar(5);

   _equationOne = _equationOne.solveBeta(alpha);
   beta = _equationOne._x1;


  }

/*
 vector intersect(float another)
 {
   vector inter= new vector(_CD._x, _CD._y);
   inter = _C.addition( inter.bySkalar(another));
   return inter;

 }
*/


  vector4D constructEquation(vector4D A)
  {
   
    return A;  
    
  }
 
  vector4D eliminateUnknown(vector4D original, vector4D adapted)
  {
    vector4D temp = new vector4D(original.clone());
    temp = temp.diff(adapted);
    return temp;
  }

 /*
 float adaptValue( vector4D equationOne, vector equationTwo) 
 {
    int a = Math.round(_equationOne._x4);
    int b = Math.round(_equationTwo._x4);
    float _x4; 
   if( a != b)
   {
    if(a >=b)
    { 
      for(int x4 = a; x4  >= b; x4-- )
      {
        if( x4 == b)
        {
        return  _x4= (float)x4;
        }
      }
    }
    else
    {
      for(int x4 = a; x4 <= b; x4++)
      {
        if(x4 == b)
        {
        return  _x4 =(float) x4;
        }
      }
    }
   }

   else 
   {
     _x4= b;
     return _x4;
   }
  return _x4; 
 }
 */
}


  

