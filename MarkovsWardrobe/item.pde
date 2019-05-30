
class item {
  String name, part="s";
  double prob, nice;
  PImage pic;
  int weat, form;
  item(String n, double d) {
    name=n;
    prob=d;
  }
  item(String n, double d, PImage p, int w, int f) {
    name=n;
    prob=d;
    pic=p;
    weat=w;
    form=f;
    part=name.substring(0, 1);
  }
  String toString() {
    nice=prob*1000;
    Math.round(nice);
    nice/=1000;
    return ""+nice;
  }
  void show() {
    if (pic==null) {
      if (name.equals("s1")) {
        dressShoes();
      }
      if (name.equals("s2")) {
        flipFlops();
      }
      if (name.equals("s3")) {
        boots();
      }
      if (name.equals("s4")) {
        tennisShoes();
      }
    }
    if (part.equals("h")) {
      if (name.equals("h1")) {
        image(pic, 300, 25);
      }
      if (name.equals("h2")) {
        image(pic, 350, 25);
      }
      if (name.equals("h3")) {
        image(pic, 350, 10);
      }
      if (name.equals("h4")) {
        image(pic, 350, 10);
      }
    }
    if (part.equals("t")) {
      if (name.equals("t1")) {
        image(pic, 300, 100);
      }
      if (name.equals("t2")) {
        image(pic, 325, 150);
      }
      if (name.equals("t3")) {
        image(pic, 300, 150);
      }
      if (name.equals("t4")) {
        image(pic, 300, 120);
      }
    }
    if (part.equals("p")) {
      if (name.equals("p4")) {
        fill(0);
        rect(350, 400, 20, 150);
        rect(430, 400, 20, 150);
      }
      image(pic, 300, 300);
    }
  }
}
