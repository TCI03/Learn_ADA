with Ada.Text_IO;

package body String_Example is
	procedure Get_Name is
	Answer : String (1 .. 20);
	Last   : Integer;
	begin
		Ada.Text_IO.Put ("What is your name ?");
		Ada.Text_IO.Get_Line (Answer, Last);
		Ada.Text_IO.Put_line ("Your name is" & Answer (1 .. Last) & " and contains" & Integer'Image(Last) & " characters.");
	end Get_Name;
end String_Example;