unit share;

interface
   uses
System.SysUtils;

    type  details=record

   names:string[15];
   surname:string[15];
   company:string[20];
   title:string[15];
   email:string[40];
   f:textfile;

     end;
     var
id:details;
implementation

end.
