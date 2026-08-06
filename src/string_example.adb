with Ada.Text_IO;
with Ada.Strings.Unbounded;

package body String_Example is
    --  User enter name and procedure outputs name and number of character of it:
    --  Fixed strings version:
	
    procedure Get_Name is
	    Answer : String (1 .. 20);
	    Last   : Integer;
	begin
		Ada.Text_IO.Put ("What is your name ? ");
		Ada.Text_IO.Get_Line (Answer, Last);
		Ada.Text_IO.Put_line ("Your name is" & Answer (1 .. Last) & " and contains" & Integer'Image(Last) & " characters.");
	end Get_Name;
    
    --  User enter name and procedure outputs name and number of character of it:
    --  Unbounded strings version:
    
    procedure Get_Name_Unbounded is
        Answer_U : Ada.Strings.Unbounded.Unbounded_String;
    begin
        Ada.Text_IO.Put ("What is your name ? ");
        Answer_U := Ada.Strings.Unbounded.To_Unbounded_String (Ada.Text_IO.Get_Line);
        Ada.Text_IO.Put_Line ("Your name is " & 
            Ada.Strings.Unbounded.To_String (Answer_U) & 
            " and contains" & 
            Integer'Image (Ada.Strings.Unbounded.Length (Answer_U)) & 
            " characters.");
    end Get_Name_Unbounded;
end String_Example;
