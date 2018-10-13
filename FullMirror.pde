class FullMirror
{
	vector edgeA;
  vector edgeB;

  FullMirror(vector A, vector B)
  {
    edgeA = A;
    edgeB = B;
  }

  void surface()
  {
    line (edgeA.x(),edgeA.y(),edgeB.x(),edgeB.y());
    stroke(255,0,0);
  }




  void reflect(vector hit)
  {  
    vector normal = new vector(hit._x, hit._y);
    normal =normal.normal2d(normal);
  
    vector position= new vector(edgeA.diff(edgeB));
  
    vector reflect=new vector(hit.bySkalar(2));
         //reflect= reflect.addition(normal.bySkalar(-(position.skalar(normal))));
  
    line(hit._x, hit._y, position._x, position._y);
    stroke(255,0,0);
  }

  vector intersect(vector A, vector B, vector C, vector D)
  {
    vector AB = new vector(A.diff(B));
    vector CD = new vector(C.diff(B));
    return  AB;
  }
}
