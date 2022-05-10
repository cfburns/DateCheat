
       dcl-pr @Date date;
         InDate   zoned(6) const options(*nopass);
         InFormat char(4)  const options(*nopass);
       end-pr;

       dcl-s @YMD char(4) inz('*YMD');
       dcl-s @MDY char(4) inz('*MDY');

