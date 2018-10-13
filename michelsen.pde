Signal signal;
FullMirror fTop;
HalfMirror hM;
vector fTPointA;
vector fTPointB;
FullMirror fmirror;
vector fPointA;
vector fPointB;
vector hit; 
gaussSeidel test;
vector start;
vector end;
vector hsect;
vector sect;
vector center;
vector hMirrorA;
vector hMirrorB;
vector half;
vector endhalf;
vector tsect;
vector gf;
float angle;
gaussSeidel forhalf;
gaussSeidel top;
void setup()
{
  hMirrorA= new vector(30,768); //halbSpiegel
  hMirrorB= new vector(840, 0); 
  fTPointA = new vector(300,100); //topSpiegel
  fTPointB = new vector(700,100);
  fTop = new FullMirror(fTPointA,fTPointB);
  angle = hMirrorA.skalar(hMirrorB)/(hMirrorA.value()*hMirrorB.value());
  start = new vector(150,530); //laserSignal
  end = new vector(1024, 530);
  signal = new Signal(start, end);
  size(1024, 768);
  background(0);
  fPointA = new vector(980,360); //seitenSpiegel
  fPointB = new vector(970, 700);
  center=fPointA.centerLine(fPointB);
  fmirror = new FullMirror(fPointA, fPointB);
  hit = new vector(fPointA.diff( fPointB));
  test = new gaussSeidel(start, end, fPointA, fPointB);  
  sect = new vector(center);
  
  sect = fPointA.addition(test._CD.bySkalar(test.beta));
  endhalf= new vector(900,500);
  half = new vector(500,600);
  hM = new HalfMirror(endhalf,half);
  forhalf= new gaussSeidel(start,end,half, endhalf);
  hsect=half.addition(forhalf._CD.bySkalar(forhalf.beta));
}

void draw()
{
  //System.out.println(test._equationThree._x1 +  " " + test._equationThree._x2 +" " +" "+ test._equationThree._x3 + " " +test._equationThree._x4 );  

 for(int t = 0; t < width; t++)
  {
    signal.shape(t);
    fmirror.surface();
    hM.surface();
    System.out.println(center._x + " " + center._y);
    hM.reflect(hsect);
    fmirror.reflect(sect);
    fTop.surface(); 
 // System.out.println(test._equationOne._x1 +" " + test._equationOne._x2 + " " + test._equationOne._x3 + " "  + test._equationOne._x4); 
  }
}
/*
  float gaußSeidel(vector A, vector C, vector B, vector D)
  {
    float a;
    float b;
   
    if (A._x+C._x == B._x + D._x)
        {
        return float evenX = A._x + C._x;
        } 
     
    if (A._y + C._y == B._y + D._y);
        {
        return float evenY  = A._y + C._y; 
        } 
    float processDifference()
    {
       A._x/(D._x);
       C._x/(D._x);
       B._x/(D._x);
       D._x/(D._x);

      float compare(vector toMatch, vector toResize)
      {
        vector dMatch =  new vector(toMatch.clone());
        vector dResize = new vector(toResize.clone());
        
        for(dResize._x >= dMatch._x; dResize._x--)
        {
          return float adjustedDown = dResize._x;
        }
        for(dResize._x <= dMatch._x; dResize._x++)
          return float adjustedUp= dResize._x;
      }


      float fitSize(float factor(this.compare(vector A, vector C, vector B, vector D))
          {
            vector4D equationOne = (A._x, C._x, B._x, D._x);
            vector4D equationTwo = (A._y, C._y, B._y, D._x);
            vector4D equationThree = new vector4D(equationOne.skalar(factor));
            vec

          }
      {
          
      }
    }
  }

*/

    

