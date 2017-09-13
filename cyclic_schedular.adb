with Ada.Text_Io;
use Ada.Text_Io;
with Ada.Calendar;
use Ada.Calendar;


procedure Cyclic_Schedular is
   
   procedure F1 (D :in Duration) is
   begin
      Put("F1 executing, time now is:");
      Put_Line(Duration'Image(D));
   end F1;
   
   procedure F2 (D :in Duration) is 
   Begin 
      Put("F2 executing, time now is:");
      Put_Line(Duration'Image(D));
   end F2;
   
   procedure F3 (D :in Duration) is 
   begin 
      Put("F3 executing, time now is:");
      Put_Line(Duration'Image(D));
   end F3;
   
   Start: Time:= Clock;
   D: Duration := 0.0;
   Last_Exec :Time;
   F1_Stop :Time;
   Now : Time;
   Exec_Time: Duration;
   --Counter : Integer :=0;
begin
   loop
      Last_Exec:= Clock;
      D:= Seconds(Clock)-Seconds(Start);
      F1(D);
      F1_Stop:= Clock;
      D:= Seconds(Clock)-Seconds(Start);
      F2(D);
      delay until F1_Stop + 0.5;
      D:= Seconds(Clock)-Seconds(Start);
      F3(D);
      Now:= Clock;
      Exec_Time := Now - Last_Exec;
      delay (1.0 - Exec_Time);
      exit when False;
   end loop;
end Cyclic_Schedular;
