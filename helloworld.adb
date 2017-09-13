with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Calendar;
use Ada.Calendar;
with Ada.Numerics.Float_Random;
use Ada.Numerics.Float_Random;

procedure Helloworld is
   procedure F1(D: in Duration) is
   begin
      Put("F1 executing, time is now:");
      Put_Line(Duration'Image(D));
   end F1;
   
   procedure F2 (D: in Duration) is
   begin
      Put("F2 executing, time is now:");
      Put_Line(Duration'Image(D));
   end F2;
   
   
   procedure F3 (D: in Duration) is
      G : Generator;
      Test : Uniformly_Distributed;
      
   begin
      Test := Random(G);
      Put(Uniformly_Distributed'Image(Test) &"F3 executing, time is now:");
      Put_Line(Duration'Image(D));
     
   end F3;
   
   Epoch : constant Time := Clock;
   Next_Time : Time := Clock +  0.5;
   D : Duration;
   Counter : Integer := 0;
   
begin 
   loop
      D := Seconds(Clock) - Seconds(Epoch);
      F1(d);
      D := Seconds(Clock) - Seconds(Epoch);
      F2(d);
      delay until (Next_Time);
      Next_Time := Next_Time + 0.5;
      D := Seconds(Clock) - Seconds(Epoch);
      if Counter mod 2 = 0 then 
	 F3(d);
      end if;
      delay until (Next_Time);
      Next_Time := Next_Time + 0.5;
      Counter := Counter +1;
      D := Seconds(Clock) - Seconds(Epoch);     
   end loop;
   
end Helloworld;
