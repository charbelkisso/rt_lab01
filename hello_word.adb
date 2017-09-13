with Ada.Text_Io;
use Ada.Text_Io;
with Ada.Calendar;
use Ada.Calendar;


procedure hello_word is
   T : Time := Seconds(Clock);
begin
   Put_Line(Duration'Image(Seconds(Clock)));
end Hello_Word;


