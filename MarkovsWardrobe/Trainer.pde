
class Trainer {
  double rando;
  Trainer() {
  }
  void dayOne() {
    rando=Math.random();
    if (rando<.75) {
      if (rando<.5) {
        if (rando<.25) {
          current[0]=h4;
        } else {
          current[0]=h3;
        }
      } else {
        current[0]=h2;
      }
    } else {
      current[0]=h1;
    }
    rando=Math.random();
    if (rando<.75) {
      if (rando<.5) {
        if (rando<.25) {
          current[1]=t4;
        } else {
          current[1]=t3;
        }
      } else {
        current[1]=t2;
      }
    } else {
      current[1]=t1;
    }
    rando=Math.random();
    if (rando<.75) {
      if (rando<.5) {
        if (rando<.25) {
          current[2]=p4;
        } else {
          current[2]=p3;
        }
      } else {
        current[2]=p2;
      }
    } else {
      current[2]=p1;
    }
    rando=Math.random();
    if (rando<.75) {
      if (rando<.5) {
        if (rando<.25) {
          current[3]=s4;
        } else {
          current[3]=s3;
        }
      } else {
        current[3]=s2;
      }
    } else {
      current[3]=s1;
    }
  }
  //$$@#$%^&*^%$^&*^*%&%*(*(^*%&$^#%$&*()*&^%$#@^&*()&^%$^#^&*(^%$#^&*(^%$#&*(%$#$%^&)(*^%$&%*^()**^(%$&%*^(&)*^(%*$&%^%*^(&%*$&%^%*^(&%*$&%^%^
  void newDay() {
    rando=Math.random();
    if (rando<h2.prob+h3.prob+h4.prob) {
      if (rando<h3.prob+h4.prob) {
        if (rando<h4.prob) {
          current[0]=h4;
        } else {
          current[0]=h3;
        }
      } else {
        current[0]=h2;
      }
    } else {
      current[0]=h1;
    }
    rando=Math.random();
    if (rando<t2.prob+t3.prob+t4.prob) {
      if (rando<t3.prob+t4.prob) {
        if (rando<t4.prob) {
          current[1]=t4;
        } else {
          current[1]=t3;
        }
      } else {
        current[1]=t2;
      }
    } else {
      current[1]=t1;
    }
    rando=Math.random();
    if (rando<p2.prob+p3.prob+p4.prob) {
      if (rando<p3.prob+p4.prob) {
        if (rando<p4.prob) {
          current[2]=p4;
        } else {
          current[2]=p3;
        }
      } else {
        current[2]=p2;
      }
    } else {
      current[2]=p1;
    }
    rando=Math.random();
    if (rando<s2.prob+s3.prob+s4.prob) {
      if (rando<s3.prob+s4.prob) {
        if (rando<s4.prob) {
          current[3]=s4;
        } else {
          current[3]=s3;
        }
      } else {
        current[3]=s2;
      }
    } else {
      current[3]=s1;
    }
  }
  //!@#$%^&*()_(*&^%$#@$%^&*()_*&^%$#@!$#%^&*()_*&^%$#@!$%^&*()_*&^%$#@!$%^&*()&^%$#@%^&*()&@#$%^&*(*&(^%$^#%#@$%&^*%$#@%&*$#
  void retrain() {
    ch=(int)(current[0].prob*100);
    ct=(int)(current[1].prob*100);
    cp=(int)(current[2].prob*100);
    cs=(int)(current[3].prob*100);

    if (current[0]==h1) {
      h2.prob+=(h1.prob/3.0);
      h3.prob+=(h1.prob/3.0);
      h4.prob+=(h1.prob/3.0);
      h1.prob=0;
    }
    if (current[0]==h2) {
      h1.prob+=(h2.prob/3.0);
      h3.prob+=(h2.prob/3.0);
      h4.prob+=(h2.prob/3.0);
      h2.prob=0;
    }
    if (current[0]==h3) {
      h1.prob+=(h3.prob/3.0);
      h2.prob+=(h3.prob/3.0);
      h4.prob+=(h3.prob/3.0);
      h3.prob=0;
    }
    if (current[0]==h4) {
      h1.prob+=(h4.prob/3.0);
      h2.prob+=(h4.prob/3.0);
      h3.prob+=(h4.prob/3.0);
      h4.prob=0;
    }

    if (current[1]==t1) {
      t2.prob+=(t1.prob/3.0);
      t3.prob+=(t1.prob/3.0);
      t4.prob+=(t1.prob/3.0);
      t1.prob=0;
    }
    if (current[1]==t2) {
      t1.prob+=(t2.prob/3.0);
      t3.prob+=(t2.prob/3.0);
      t4.prob+=(t2.prob/3.0);
      t2.prob=0;
    }
    if (current[1]==t3) {
      t1.prob+=(t3.prob/3.0);
      t2.prob+=(t3.prob/3.0);
      t4.prob+=(t3.prob/3.0);
      t3.prob=0;
    }
    if (current[1]==t4) {
      t1.prob+=(t4.prob/3.0);
      t2.prob+=(t4.prob/3.0);
      t3.prob+=(t4.prob/3.0);
      t4.prob=0;
    }

    if (current[2]==p1) {
      p2.prob+=(p1.prob/3.0);
      p3.prob+=(p1.prob/3.0);
      p4.prob+=(p1.prob/3.0);
      p1.prob=0;
    }
    if (current[2]==p2) {
      p1.prob+=(p2.prob/3.0);
      p3.prob+=(p2.prob/3.0);
      p4.prob+=(p2.prob/3.0);
      p2.prob=0;
    }
    if (current[2]==p3) {
      p1.prob+=(p3.prob/3.0);
      p2.prob+=(p3.prob/3.0);
      p4.prob+=(p3.prob/3.0);
      p3.prob=0;
    }
    if (current[2]==p4) {
      p1.prob+=(p4.prob/3.0);
      p2.prob+=(p4.prob/3.0);
      p3.prob+=(p4.prob/3.0);
      p4.prob=0;
    }

    if (current[3]==s1) {
      s2.prob+=(s1.prob/3.0);
      s3.prob+=(s1.prob/3.0);
      s4.prob+=(s1.prob/3.0);
      s1.prob=0;
    }
    if (current[3]==s2) {
      s1.prob+=(s2.prob/3.0);
      s3.prob+=(s2.prob/3.0);
      s4.prob+=(s2.prob/3.0);
      s2.prob=0;
    }
    if (current[3]==s3) {
      s1.prob+=(s3.prob/3.0);
      s2.prob+=(s3.prob/3.0);
      s4.prob+=(s3.prob/3.0);
      s3.prob=0;
    }
    if (current[3]==s4) {
      s1.prob+=(s4.prob/3.0);
      s2.prob+=(s4.prob/3.0);
      s3.prob+=(s4.prob/3.0);
      s4.prob=0;
    }

    //!@#$%^&*()_*)&(^%&$^#%@$!$#%^&*()_*&^%$#@%^&*()_*&^%$#@!$%^&*()!@#$%^&*()&^%$#^&*(^%$&*(^%$&*(^%$#$&*(^%$#$&*(^%$%&*(^%$%^*(

    if (h1.prob>h2.prob&&h1.prob>h3.prob&&h1.prob>h4.prob) {
      if (t1.prob<=.95&&t2.prob>=.05) {
        t1.prob+=.025;
        t2.prob-=.025;
      }
      if (t1.prob<=.95&&t3.prob>=.05) {
        t1.prob+=.025;
        t3.prob-=.025;
      }
      if (t1.prob<=.95&&t4.prob>=.05) {
        t1.prob+=.025;
        t4.prob-=.025;
      }
      if (p1.prob<=.95&&p2.prob>=.05) {
        p1.prob+=.025;
        p2.prob-=.025;
      }
      if (p1.prob<=.95&&p3.prob>=.05) {
        p1.prob+=.025;
        p3.prob-=.025;
      }
      if (p1.prob<=.95&&p4.prob>=.05) {
        p1.prob+=.025;
        p4.prob-=.025;
      }
      if (s1.prob<=.95&&s2.prob>=.05) {
        s1.prob+=.025;
        s2.prob-=.025;
      }
      if (s1.prob<=.95&&s3.prob>=.05) {
        s1.prob+=.025;
        s3.prob-=.025;
      }
      if (s1.prob<=.95&&s4.prob>=.05) {
        s1.prob+=.025;
        s4.prob-=.025;
      }
    }
    if (h2.prob>h1.prob&&h2.prob>h3.prob&&h2.prob>h4.prob) {
      if (t2.prob<=.95&&t1.prob>=.05) {
        t2.prob+=.025;
        t1.prob-=.025;
      }
      if (t2.prob<=.95&&t3.prob>=.05) {
        t2.prob+=.025;
        t3.prob-=.025;
      }
      if (t2.prob<=.95&&t4.prob>=.05) {
        t2.prob+=.025;
        t4.prob-=.025;
      }
      if (p2.prob<=.95&&p1.prob>=.05) {
        p2.prob+=.025;
        p1.prob-=.025;
      }
      if (p2.prob<=.95&&p3.prob>=.05) {
        p2.prob+=.025;
        p3.prob-=.025;
      }
      if (p2.prob<=.95&&p4.prob>=.05) {
        p2.prob+=.025;
        p4.prob-=.025;
      }
      if (s2.prob<=.95&&s1.prob>=.05) {
        s2.prob+=.025;
        s1.prob-=.025;
      }
      if (s2.prob<=.95&&s3.prob>=.05) {
        s2.prob+=.025;
        s3.prob-=.025;
      }
      if (s2.prob<=.95&&s4.prob>=.05) {
        s2.prob+=.025;
        s4.prob-=.025;
      }
    }
    if (h3.prob>h1.prob&&h3.prob>h2.prob&&h3.prob>h4.prob) {
      if (t3.prob<=.95&&t1.prob>=.05) {
        t3.prob+=.025;
        t1.prob-=.025;
      }
      if (t3.prob<=.95&&t2.prob>=.05) {
        t3.prob+=.025;
        t2.prob-=.025;
      }
      if (t3.prob<=.95&&t4.prob>=.05) {
        t3.prob+=.025;
        t4.prob-=.025;
      }
      if (p3.prob<=.95&&p1.prob>=.05) {
        p3.prob+=.025;
        p1.prob-=.025;
      }
      if (p3.prob<=.95&&p2.prob>=.05) {
        p3.prob+=.025;
        p2.prob-=.025;
      }
      if (p3.prob<=.95&&p4.prob>=.05) {
        p3.prob+=.025;
        p4.prob-=.025;
      }
      if (s3.prob<=.95&&s1.prob>=.05) {
        s3.prob+=.025;
        s1.prob-=.025;
      }
      if (s3.prob<=.95&&s2.prob>=.05) {
        s3.prob+=.025;
        s2.prob-=.025;
      }
      if (s3.prob<=.95&&s4.prob>=.05) {
        s3.prob+=.025;
        s4.prob-=.025;
      }
    }
    if (h4.prob>h1.prob&&h4.prob>h2.prob&&h4.prob>h3.prob) {
      if (t4.prob<=.95&&t1.prob>=.05) {
        t4.prob+=.025;
        t1.prob-=.025;
      }
      if (t4.prob<=.95&&t2.prob>=.05) {
        t4.prob+=.025;
        t2.prob-=.025;
      }
      if (t4.prob<=.95&&t3.prob>=.05) {
        t4.prob+=.025;
        t3.prob-=.025;
      }
      if (p4.prob<=.95&&p1.prob>=.05) {
        p4.prob+=.025;
        p1.prob-=.025;
      }
      if (p4.prob<=.95&&p2.prob>=.05) {
        p4.prob+=.025;
        p2.prob-=.025;
      }
      if (p4.prob<=.95&&p3.prob>=.05) {
        p4.prob+=.025;
        p3.prob-=.025;
      }
      if (s4.prob<=.95&&s1.prob>=.05) {
        s4.prob+=.025;
        s1.prob-=.025;
      }
      if (s4.prob<=.95&&s2.prob>=.05) {
        s4.prob+=.025;
        s2.prob-=.025;
      }
      if (s4.prob<=.95&&s3.prob>=.05) {
        s4.prob+=.025;
        s3.prob-=.025;
      }
    }
    if (t1.prob>t2.prob&&t1.prob>t3.prob&&t1.prob>t4.prob) {
      if (h1.prob<=.95&&h2.prob>=.05) {
        h1.prob+=.025;
        h2.prob-=.025;
      }
      if (h1.prob<=.95&&h3.prob>=.05) {
        h1.prob+=.025;
        h3.prob-=.025;
      }
      if (h1.prob<=.95&&h4.prob>=.05) {
        h1.prob+=.025;
        h4.prob-=.025;
      }
      if (p1.prob<=.95&&p2.prob>=.05) {
        p1.prob+=.025;
        p2.prob-=.025;
      }
      if (p1.prob<=.95&&p3.prob>=.05) {
        p1.prob+=.025;
        p3.prob-=.025;
      }
      if (p1.prob<=.95&&p4.prob>=.05) {
        p1.prob+=.025;
        p4.prob-=.025;
      }
      if (s1.prob<=.95&&s2.prob>=.05) {
        s1.prob+=.025;
        s2.prob-=.025;
      }
      if (s1.prob<=.95&&s3.prob>=.05) {
        s1.prob+=.025;
        s3.prob-=.025;
      }
      if (s1.prob<=.95&&s4.prob>=.05) {
        s1.prob+=.025;
        s4.prob-=.025;
      }
    }
    if (t2.prob>t1.prob&&t2.prob>t3.prob&&t2.prob>t4.prob) {
      if (h2.prob<=.95&&h1.prob>=.05) {
        h2.prob+=.025;
        h1.prob-=.025;
      }
      if (h2.prob<=.95&&h3.prob>=.05) {
        h2.prob+=.025;
        h3.prob-=.025;
      }
      if (h2.prob<=.95&&h4.prob>=.05) {
        h2.prob+=.025;
        h4.prob-=.025;
      }
      if (p2.prob<=.95&&p1.prob>=.05) {
        p2.prob+=.025;
        p1.prob-=.025;
      }
      if (p2.prob<=.95&&p3.prob>=.05) {
        p2.prob+=.025;
        p3.prob-=.025;
      }
      if (p2.prob<=.95&&p4.prob>=.05) {
        p2.prob+=.025;
        p4.prob-=.025;
      }
      if (s2.prob<=.95&&s1.prob>=.05) {
        s2.prob+=.025;
        s1.prob-=.025;
      }
      if (s2.prob<=.95&&s3.prob>=.05) {
        s2.prob+=.025;
        s3.prob-=.025;
      }
      if (s2.prob<=.95&&s4.prob>=.05) {
        s2.prob+=.025;
        s4.prob-=.025;
      }
    }
    if (t3.prob>t1.prob&&t3.prob>t2.prob&&t3.prob>t4.prob) {
      if (h3.prob<=.95&&h1.prob>=.05) {
        h3.prob+=.025;
        h1.prob-=.025;
      }
      if (h3.prob<=.95&&h2.prob>=.05) {
        h3.prob+=.025;
        h2.prob-=.025;
      }
      if (h3.prob<=.95&&h4.prob>=.05) {
        h3.prob+=.025;
        h4.prob-=.025;
      }
      if (p3.prob<=.95&&p1.prob>=.05) {
        p3.prob+=.025;
        p1.prob-=.025;
      }
      if (p3.prob<=.95&&p2.prob>=.05) {
        p3.prob+=.025;
        p2.prob-=.025;
      }
      if (p3.prob<=.95&&p4.prob>=.05) {
        p3.prob+=.025;
        p4.prob-=.025;
      }
      if (s3.prob<=.95&&s1.prob>=.05) {
        s3.prob+=.025;
        s1.prob-=.025;
      }
      if (s3.prob<=.95&&s2.prob>=.05) {
        s3.prob+=.025;
        s2.prob-=.025;
      }
      if (s3.prob<=.95&&s4.prob>=.05) {
        s3.prob+=.025;
        s4.prob-=.025;
      }
    }
    if (t4.prob>t1.prob&&t4.prob>t2.prob&&t4.prob>t3.prob) {
      if (h4.prob<=.95&&h1.prob>=.05) {
        h4.prob+=.025;
        h1.prob-=.025;
      }
      if (h4.prob<=.95&&h2.prob>=.05) {
        h4.prob+=.025;
        h2.prob-=.025;
      }
      if (h4.prob<=.95&&h3.prob>=.05) {
        h4.prob+=.025;
        h3.prob-=.025;
      }
      if (p4.prob<=.95&&p1.prob>=.05) {
        p4.prob+=.025;
        p1.prob-=.025;
      }
      if (p4.prob<=.95&&p2.prob>=.05) {
        p4.prob+=.025;
        p2.prob-=.025;
      }
      if (p4.prob<=.95&&p3.prob>=.05) {
        p4.prob+=.025;
        p3.prob-=.025;
      }
      if (s4.prob<=.95&&s1.prob>=.05) {
        s4.prob+=.025;
        s1.prob-=.025;
      }
      if (s4.prob<=.95&&s2.prob>=.05) {
        s4.prob+=.025;
        s2.prob-=.025;
      }
      if (s4.prob<=.95&&s3.prob>=.05) {
        s4.prob+=.025;
        s3.prob-=.025;
      }
    }
    if (p1.prob>p2.prob&&p1.prob>p3.prob&&p1.prob>p4.prob) {
      if (t1.prob<=.95&&t2.prob>=.05) {
        t1.prob+=.025;
        t2.prob-=.025;
      }
      if (t1.prob<=.95&&t3.prob>=.05) {
        t1.prob+=.025;
        t3.prob-=.025;
      }
      if (t1.prob<=.95&&t4.prob>=.05) {
        t1.prob+=.025;
        t4.prob-=.025;
      }
      if (h1.prob<=.95&&h2.prob>=.05) {
        h1.prob+=.025;
        h2.prob-=.025;
      }
      if (h1.prob<=.95&&h3.prob>=.05) {
        h1.prob+=.025;
        h3.prob-=.025;
      }
      if (h1.prob<=.95&&h4.prob>=.05) {
        h1.prob+=.025;
        h4.prob-=.025;
      }
      if (s1.prob<=.95&&s2.prob>=.05) {
        s1.prob+=.025;
        s2.prob-=.025;
      }
      if (s1.prob<=.95&&s3.prob>=.05) {
        s1.prob+=.025;
        s3.prob-=.025;
      }
      if (s1.prob<=.95&&s4.prob>=.05) {
        s1.prob+=.025;
        s4.prob-=.025;
      }
    }
    if (p2.prob>p1.prob&&p2.prob>p3.prob&&p2.prob>p4.prob) {
      if (t2.prob<=.95&&t1.prob>=.05) {
        t2.prob+=.025;
        t1.prob-=.025;
      }
      if (t2.prob<=.95&&t3.prob>=.05) {
        t2.prob+=.025;
        t3.prob-=.025;
      }
      if (t2.prob<=.95&&t4.prob>=.05) {
        t2.prob+=.025;
        t4.prob-=.025;
      }
      if (h2.prob<=.95&&h1.prob>=.05) {
        h2.prob+=.025;
        h1.prob-=.025;
      }
      if (h2.prob<=.95&&h3.prob>=.05) {
        h2.prob+=.025;
        h3.prob-=.025;
      }
      if (h2.prob<=.95&&h4.prob>=.05) {
        h2.prob+=.025;
        h4.prob-=.025;
      }
      if (s2.prob<=.95&&s1.prob>=.05) {
        s2.prob+=.025;
        s1.prob-=.025;
      }
      if (s2.prob<=.95&&s3.prob>=.05) {
        s2.prob+=.025;
        s3.prob-=.025;
      }
      if (s2.prob<=.95&&s4.prob>=.05) {
        s2.prob+=.025;
        s4.prob-=.025;
      }
    }
    if (p3.prob>p1.prob&&p3.prob>p2.prob&&p3.prob>p4.prob) {
      if (t3.prob<=.95&&t1.prob>=.05) {
        t3.prob+=.025;
        t1.prob-=.025;
      }
      if (t3.prob<=.95&&t2.prob>=.05) {
        t3.prob+=.025;
        t2.prob-=.025;
      }
      if (t3.prob<=.95&&t4.prob>=.05) {
        t3.prob+=.025;
        t4.prob-=.025;
      }
      if (h3.prob<=.95&&h1.prob>=.05) {
        h3.prob+=.025;
        h1.prob-=.025;
      }
      if (h3.prob<=.95&&h2.prob>=.05) {
        h3.prob+=.025;
        h2.prob-=.025;
      }
      if (h3.prob<=.95&&h4.prob>=.05) {
        h3.prob+=.025;
        h4.prob-=.025;
      }
      if (s3.prob<=.95&&s1.prob>=.05) {
        s3.prob+=.025;
        s1.prob-=.025;
      }
      if (s3.prob<=.95&&s2.prob>=.05) {
        s3.prob+=.025;
        s2.prob-=.025;
      }
      if (s3.prob<=.95&&s4.prob>=.05) {
        s3.prob+=.025;
        s4.prob-=.025;
      }
    }
    if (p4.prob>p1.prob&&p4.prob>p2.prob&&p4.prob>p3.prob) {
      if (t4.prob<=.95&&t1.prob>=.05) {
        t4.prob+=.025;
        t1.prob-=.025;
      }
      if (t4.prob<=.95&&t2.prob>=.05) {
        t4.prob+=.025;
        t2.prob-=.025;
      }
      if (t4.prob<=.95&&t3.prob>=.05) {
        t4.prob+=.025;
        t3.prob-=.025;
      }
      if (h4.prob<=.95&&h1.prob>=.05) {
        h4.prob+=.025;
        h1.prob-=.025;
      }
      if (h4.prob<=.95&&h2.prob>=.05) {
        h4.prob+=.025;
        h2.prob-=.025;
      }
      if (h4.prob<=.95&&h3.prob>=.05) {
        h4.prob+=.025;
        h3.prob-=.025;
      }
      if (s4.prob<=.95&&s1.prob>=.05) {
        s4.prob+=.025;
        s1.prob-=.025;
      }
      if (s4.prob<=.95&&s2.prob>=.05) {
        s4.prob+=.025;
        s2.prob-=.025;
      }
      if (s4.prob<=.95&&s3.prob>=.05) {
        s4.prob+=.025;
        s3.prob-=.025;
      }
    }
    if (s1.prob>s2.prob&&s1.prob>s3.prob&&s1.prob>s4.prob) {
      if (t1.prob<=.95&&t2.prob>=.05) {
        t1.prob+=.025;
        t2.prob-=.025;
      }
      if (t1.prob<=.95&&t3.prob>=.05) {
        t1.prob+=.025;
        t3.prob-=.025;
      }
      if (t1.prob<=.95&&t4.prob>=.05) {
        t1.prob+=.025;
        t4.prob-=.025;
      }
      if (p1.prob<=.95&&p2.prob>=.05) {
        p1.prob+=.025;
        p2.prob-=.025;
      }
      if (p1.prob<=.95&&p3.prob>=.05) {
        p1.prob+=.025;
        p3.prob-=.025;
      }
      if (p1.prob<=.95&&p4.prob>=.05) {
        p1.prob+=.025;
        p4.prob-=.025;
      }
      if (h1.prob<=.95&&h2.prob>=.05) {
        h1.prob+=.025;
        h2.prob-=.025;
      }
      if (h1.prob<=.95&&h3.prob>=.05) {
        h1.prob+=.025;
        h3.prob-=.025;
      }
      if (h1.prob<=.95&&h4.prob>=.05) {
        h1.prob+=.025;
        h4.prob-=.025;
      }
    }
    if (s2.prob>s1.prob&&s2.prob>s3.prob&&s2.prob>s4.prob) {
      if (t2.prob<=.95&&t1.prob>=.05) {
        t2.prob+=.025;
        t1.prob-=.025;
      }
      if (t2.prob<=.95&&t3.prob>=.05) {
        t2.prob+=.025;
        t3.prob-=.025;
      }
      if (t2.prob<=.95&&t4.prob>=.05) {
        t2.prob+=.025;
        t4.prob-=.025;
      }
      if (p2.prob<=.95&&p1.prob>=.05) {
        p2.prob+=.025;
        p1.prob-=.025;
      }
      if (p2.prob<=.95&&p3.prob>=.05) {
        p2.prob+=.025;
        p3.prob-=.025;
      }
      if (p2.prob<=.95&&p4.prob>=.05) {
        p2.prob+=.025;
        p4.prob-=.025;
      }
      if (h2.prob<=.95&&h1.prob>=.05) {
        h2.prob+=.025;
        h1.prob-=.025;
      }
      if (h2.prob<=.95&&h3.prob>=.05) {
        h2.prob+=.025;
        h3.prob-=.025;
      }
      if (h2.prob<=.95&&h4.prob>=.05) {
        h2.prob+=.025;
        h4.prob-=.025;
      }
    }
    if (s3.prob>s1.prob&&s3.prob>s2.prob&&s3.prob>s4.prob) {
      if (t3.prob<=.95&&t1.prob>=.05) {
        t3.prob+=.025;
        t1.prob-=.025;
      }
      if (t3.prob<=.95&&t2.prob>=.05) {
        t3.prob+=.025;
        t2.prob-=.025;
      }
      if (t3.prob<=.95&&t4.prob>=.05) {
        t3.prob+=.025;
        t4.prob-=.025;
      }
      if (p3.prob<=.95&&p1.prob>=.05) {
        p3.prob+=.025;
        p1.prob-=.025;
      }
      if (p3.prob<=.95&&p2.prob>=.05) {
        p3.prob+=.025;
        p2.prob-=.025;
      }
      if (p3.prob<=.95&&p4.prob>=.05) {
        p3.prob+=.025;
        p4.prob-=.025;
      }
      if (h3.prob<=.95&&h1.prob>=.05) {
        h3.prob+=.025;
        h1.prob-=.025;
      }
      if (h3.prob<=.95&&h2.prob>=.05) {
        h3.prob+=.025;
        h2.prob-=.025;
      }
      if (h3.prob<=.95&&h4.prob>=.05) {
        h3.prob+=.025;
        h4.prob-=.025;
      }
    }
    if (s4.prob>s1.prob&&s4.prob>s2.prob&&s4.prob>s3.prob) {
      if (t4.prob<=.95&&t1.prob>=.05) {
        t4.prob+=.025;
        t1.prob-=.025;
      }
      if (t4.prob<=.95&&t2.prob>=.05) {
        t4.prob+=.025;
        t2.prob-=.025;
      }
      if (t4.prob<=.95&&t3.prob>=.05) {
        t4.prob+=.025;
        t3.prob-=.025;
      }
      if (p4.prob<=.95&&p1.prob>=.05) {
        p4.prob+=.025;
        p1.prob-=.025;
      }
      if (p4.prob<=.95&&p2.prob>=.05) {
        p4.prob+=.025;
        p2.prob-=.025;
      }
      if (p4.prob<=.95&&p3.prob>=.05) {
        p4.prob+=.025;
        p3.prob-=.025;
      }
      if (h4.prob<=.95&&h1.prob>=.05) {
        h4.prob+=.025;
        h1.prob-=.025;
      }
      if (h4.prob<=.95&&h2.prob>=.05) {
        h4.prob+=.025;
        h2.prob-=.025;
      }
      if (h4.prob<=.95&&h3.prob>=.05) {
        h4.prob+=.025;
        h3.prob-=.025;
      }
    }
    //#!@$%^&*$#^&*(%$#^&*(^%$%&*()&^%*()_(&^%()*^%$*(%$#@^&*(&%$#@#^&*(&%$#$&*(%$#$&*$#%^&*(^%$#@Q!%^&*%$#@#^&*(^%$#$^&*(^%$#@#^&*(&%$#@#^&*^(
    if (weather==h1.weat) {
      if (h1.prob<=.9&&h2.prob>=.1) {
        h1.prob+=.1;
        h2.prob-=.1;
      }
      if (h1.prob<=.9&&h3.prob>=.1) {
        h1.prob+=.1;
        h3.prob-=.1;
      }
      if (h1.prob<=.9&&h4.prob>=.1) {
        h1.prob+=.1;
        h4.prob-=.1;
      }
    }
    if (weather==h2.weat) {
      if (h2.prob<=.9&&h1.prob>=.1) {
        h2.prob+=.1;
        h1.prob-=.1;
      }
      if (h2.prob<=.9&&h3.prob>=.1) {
        h2.prob+=.1;
        h3.prob-=.1;
      }
      if (h2.prob<=.9&&h4.prob>=.1) {
        h2.prob+=.1;
        h4.prob-=.1;
      }
    }
    if (weather==h3.weat) {
      if (h3.prob<=.9&&h2.prob>=.1) {
        h3.prob+=.1;
        h2.prob-=.1;
      }
      if (h3.prob<=.9&&h1.prob>=.1) {
        h3.prob+=.1;
        h1.prob-=.1;
      }
      if (h3.prob<=.9&&h4.prob>=.1) {
        h3.prob+=.1;
        h4.prob-=.1;
      }
    }
    if (weather==h4.weat) {
      if (h4.prob<=.9&&h2.prob>=.1) {
        h4.prob+=.1;
        h2.prob-=.1;
      }
      if (h4.prob<=.9&&h3.prob>=.1) {
        h4.prob+=.1;
        h3.prob-=.1;
      }
      if (h4.prob<=.9&&h1.prob>=.1) {
        h4.prob+=.1;
        h1.prob-=.1;
      }
    }
    if (weather==t1.weat) {
      if (t1.prob<=.9&&t2.prob>=.1) {
        t1.prob+=.1;
        t2.prob-=.1;
      }
      if (t1.prob<=.9&&t3.prob>=.1) {
        t1.prob+=.1;
        t3.prob-=.1;
      }
      if (t1.prob<=.9&&t4.prob>=.1) {
        t1.prob+=.1;
        t4.prob-=.1;
      }
    }
    if (weather==t2.weat) {
      if (t2.prob<=.9&&t1.prob>=.1) {
        t2.prob+=.1;
        t1.prob-=.1;
      }
      if (t2.prob<=.9&&t3.prob>=.1) {
        t2.prob+=.1;
        t3.prob-=.1;
      }
      if (t2.prob<=.9&&t4.prob>=.1) {
        t2.prob+=.1;
        t4.prob-=.1;
      }
    }
    if (weather==t3.weat) {
      if (t3.prob<=.9&&t2.prob>=.1) {
        t3.prob+=.1;
        t2.prob-=.1;
      }
      if (t3.prob<=.9&&t1.prob>=.1) {
        t3.prob+=.1;
        t1.prob-=.1;
      }
      if (t3.prob<=.9&&t4.prob>=.1) {
        t3.prob+=.1;
        t4.prob-=.1;
      }
    }
    if (weather==t4.weat) {
      if (t4.prob<=.9&&t2.prob>=.1) {
        t4.prob+=.1;
        t2.prob-=.1;
      }
      if (t4.prob<=.9&&t3.prob>=.1) {
        t4.prob+=.1;
        t3.prob-=.1;
      }
      if (t4.prob<=.9&&t1.prob>=.1) {
        t4.prob+=.1;
        t1.prob-=.1;
      }
    }
    if (weather==p1.weat) {
      if (p1.prob<=.9&&p2.prob>=.1) {
        p1.prob+=.1;
        p2.prob-=.1;
      }
      if (p1.prob<=.9&&p3.prob>=.1) {
        p1.prob+=.1;
        p3.prob-=.1;
      }
      if (p1.prob<=.9&&p4.prob>=.1) {
        p1.prob+=.1;
        p4.prob-=.1;
      }
    }
    if (weather==p2.weat) {
      if (p2.prob<=.9&&p1.prob>=.1) {
        p2.prob+=.1;
        p1.prob-=.1;
      }
      if (p2.prob<=.9&&p3.prob>=.1) {
        p2.prob+=.1;
        p3.prob-=.1;
      }
      if (p2.prob<=.9&&p4.prob>=.1) {
        p2.prob+=.1;
        p4.prob-=.1;
      }
    }
    if (weather==p3.weat) {
      if (p3.prob<=.9&&p2.prob>=.1) {
        p3.prob+=.1;
        p2.prob-=.1;
      }
      if (p3.prob<=.9&&p1.prob>=.1) {
        p3.prob+=.1;
        p1.prob-=.1;
      }
      if (p3.prob<=.9&&p4.prob>=.1) {
        p3.prob+=.1;
        p4.prob-=.1;
      }
    }
    if (weather==p4.weat) {
      if (p4.prob<=.9&&p2.prob>=.1) {
        p4.prob+=.1;
        p2.prob-=.1;
      }
      if (p4.prob<=.9&&p3.prob>=.1) {
        p4.prob+=.1;
        p3.prob-=.1;
      }
      if (p4.prob<=.9&&p1.prob>=.1) {
        p4.prob+=.1;
        p1.prob-=.1;
      }
    }
    if (weather==s1.weat) {
      if (s1.prob<=.9&&s2.prob>=.1) {
        s1.prob+=.1;
        s2.prob-=.1;
      }
      if (s1.prob<=.9&&s3.prob>=.1) {
        s1.prob+=.1;
        s3.prob-=.1;
      }
      if (s1.prob<=.9&&s4.prob>=.1) {
        s1.prob+=.1;
        s4.prob-=.1;
      }
    }
    if (weather==s2.weat) {
      if (s2.prob<=.9&&s1.prob>=.1) {
        s2.prob+=.1;
        s1.prob-=.1;
      }
      if (s2.prob<=.9&&s3.prob>=.1) {
        s2.prob+=.1;
        s3.prob-=.1;
      }
      if (s2.prob<=.9&&s4.prob>=.1) {
        s2.prob+=.1;
        s4.prob-=.1;
      }
    }
    if (weather==s3.weat) {
      if (s3.prob<=.9&&s2.prob>=.1) {
        s3.prob+=.1;
        s2.prob-=.1;
      }
      if (s3.prob<=.9&&s1.prob>=.1) {
        s3.prob+=.1;
        s1.prob-=.1;
      }
      if (s3.prob<=.9&&s4.prob>=.1) {
        s3.prob+=.1;
        s4.prob-=.1;
      }
    }
    if (weather==s4.weat) {
      if (s4.prob<=.9&&s2.prob>=.1) {
        s4.prob+=.1;
        s2.prob-=.1;
      }
      if (s4.prob<=.9&&s3.prob>=.1) {
        s4.prob+=.1;
        s3.prob-=.1;
      }
      if (s4.prob<=.9&&s1.prob>=.1) {
        s4.prob+=.1;
        s1.prob-=.1;
      }
    }

    if (formality==h1.form) {
      if (h1.prob<=.9&&h2.prob>=.1) {
        h1.prob+=.1;
        h2.prob-=.1;
      }
      if (h1.prob<=.9&&h3.prob>=.1) {
        h1.prob+=.1;
        h3.prob-=.1;
      }
      if (h1.prob<=.9&&h4.prob>=.1) {
        h1.prob+=.1;
        h4.prob-=.1;
      }
    }
    if (formality==h2.form) {
      if (h2.prob<=.9&&h1.prob>=.1) {
        h2.prob+=.1;
        h1.prob-=.1;
      }
      if (h2.prob<=.9&&h3.prob>=.1) {
        h2.prob+=.1;
        h3.prob-=.1;
      }
      if (h2.prob<=.9&&h4.prob>=.1) {
        h2.prob+=.1;
        h4.prob-=.1;
      }
    }
    if (formality==h3.form) {
      if (h3.prob<=.9&&h2.prob>=.1) {
        h3.prob+=.1;
        h2.prob-=.1;
      }
      if (h3.prob<=.9&&h1.prob>=.1) {
        h3.prob+=.1;
        h1.prob-=.1;
      }
      if (h3.prob<=.9&&h4.prob>=.1) {
        h3.prob+=.1;
        h4.prob-=.1;
      }
    }
    if (formality==h4.form) {
      if (h4.prob<=.9&&h2.prob>=.1) {
        h4.prob+=.1;
        h2.prob-=.1;
      }
      if (h4.prob<=.9&&h3.prob>=.1) {
        h4.prob+=.1;
        h3.prob-=.1;
      }
      if (h4.prob<=.9&&h1.prob>=.1) {
        h4.prob+=.1;
        h1.prob-=.1;
      }
    }
    if (formality==t1.form) {
      if (t1.prob<=.9&&t2.prob>=.1) {
        t1.prob+=.1;
        t2.prob-=.1;
      }
      if (t1.prob<=.9&&t3.prob>=.1) {
        t1.prob+=.1;
        t3.prob-=.1;
      }
      if (t1.prob<=.9&&t4.prob>=.1) {
        t1.prob+=.1;
        t4.prob-=.1;
      }
    }
    if (formality==t2.form) {
      if (t2.prob<=.9&&t1.prob>=.1) {
        t2.prob+=.1;
        t1.prob-=.1;
      }
      if (t2.prob<=.9&&t3.prob>=.1) {
        t2.prob+=.1;
        t3.prob-=.1;
      }
      if (t2.prob<=.9&&t4.prob>=.1) {
        t2.prob+=.1;
        t4.prob-=.1;
      }
    }
    if (formality==t3.form) {
      if (t3.prob<=.9&&t2.prob>=.1) {
        t3.prob+=.1;
        t2.prob-=.1;
      }
      if (t3.prob<=.9&&t1.prob>=.1) {
        t3.prob+=.1;
        t1.prob-=.1;
      }
      if (t3.prob<=.9&&t4.prob>=.1) {
        t3.prob+=.1;
        t4.prob-=.1;
      }
    }
    if (formality==t4.form) {
      if (t4.prob<=.9&&t2.prob>=.1) {
        t4.prob+=.1;
        t2.prob-=.1;
      }
      if (t4.prob<=.9&&t3.prob>=.1) {
        t4.prob+=.1;
        t3.prob-=.1;
      }
      if (t4.prob<=.9&&t1.prob>=.1) {
        t4.prob+=.1;
        t1.prob-=.1;
      }
    }
    if (formality==p1.form) {
      if (p1.prob<=.9&&p2.prob>=.1) {
        p1.prob+=.1;
        p2.prob-=.1;
      }
      if (p1.prob<=.9&&p3.prob>=.1) {
        p1.prob+=.1;
        p3.prob-=.1;
      }
      if (p1.prob<=.9&&p4.prob>=.1) {
        p1.prob+=.1;
        p4.prob-=.1;
      }
    }
    if (formality==p2.form) {
      if (p2.prob<=.9&&p1.prob>=.1) {
        p2.prob+=.1;
        p1.prob-=.1;
      }
      if (p2.prob<=.9&&p3.prob>=.1) {
        p2.prob+=.1;
        p3.prob-=.1;
      }
      if (p2.prob<=.9&&p4.prob>=.1) {
        p2.prob+=.1;
        p4.prob-=.1;
      }
    }
    if (formality==p3.form) {
      if (p3.prob<=.9&&p2.prob>=.1) {
        p3.prob+=.1;
        p2.prob-=.1;
      }
      if (p3.prob<=.9&&p1.prob>=.1) {
        p3.prob+=.1;
        p1.prob-=.1;
      }
      if (p3.prob<=.9&&p4.prob>=.1) {
        p3.prob+=.1;
        p4.prob-=.1;
      }
    }
    if (formality==p4.form) {
      if (p4.prob<=.9&&p2.prob>=.1) {
        p4.prob+=.1;
        p2.prob-=.1;
      }
      if (p4.prob<=.9&&p3.prob>=.1) {
        p4.prob+=.1;
        p3.prob-=.1;
      }
      if (p4.prob<=.9&&p1.prob>=.1) {
        p4.prob+=.1;
        p1.prob-=.1;
      }
    }
    if (formality==s1.form) {
      if (s1.prob<=.9&&s2.prob>=.1) {
        s1.prob+=.1;
        s2.prob-=.1;
      }
      if (s1.prob<=.9&&s3.prob>=.1) {
        s1.prob+=.1;
        s3.prob-=.1;
      }
      if (s1.prob<=.9&&s4.prob>=.1) {
        s1.prob+=.1;
        s4.prob-=.1;
      }
    }
    if (formality==s2.form) {
      if (s2.prob<=.9&&s1.prob>=.1) {
        s2.prob+=.1;
        s1.prob-=.1;
      }
      if (s2.prob<=.9&&s3.prob>=.1) {
        s2.prob+=.1;
        s3.prob-=.1;
      }
      if (s2.prob<=.9&&s4.prob>=.1) {
        s2.prob+=.1;
        s4.prob-=.1;
      }
    }
    if (formality==s3.form) {
      if (s3.prob<=.9&&s2.prob>=.1) {
        s3.prob+=.1;
        s2.prob-=.1;
      }
      if (s3.prob<=.9&&s1.prob>=.1) {
        s3.prob+=.1;
        s1.prob-=.1;
      }
      if (s3.prob<=.9&&s4.prob>=.1) {
        s3.prob+=.1;
        s4.prob-=.1;
      }
    }
    if (formality==s4.form) {
      if (s4.prob<=.9&&s2.prob>=.1) {
        s4.prob+=.1;
        s2.prob-=.1;
      }
      if (s4.prob<=.9&&s3.prob>=.1) {
        s4.prob+=.1;
        s3.prob-=.1;
      }
      if (s4.prob<=.9&&s1.prob>=.1) {
        s4.prob+=.1;
        s1.prob-=.1;
      }
    }
  }
}
