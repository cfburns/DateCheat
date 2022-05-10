
       ctl-opt nomain;

       dcl-proc @Date export;

       dcl-pi @Date date;
         InDate   zoned(6) const options(*nopass);
         InFormat char(4)  const options(*nopass);
       end-pi;

       dcl-s WorkISO  date;

      /copy qcpysrc,datecheat

       if %parms = 0;
         return %date();
       elseif %parms = 1;
         return *loval;
       elseif %upper(InFormat) = @YMD;
         WorkISO = %date(InDate : *YMD);
       elseif %upper(InFormat) = @MDY;
         WorkISO = %date(InDate : *MDY);
       else;
         return *loval;
       endif;

       if WorkISO < d'1960-01-01';
         WorkISO += %years(100);
       endif;

       return WorkISO;

       end-proc;

