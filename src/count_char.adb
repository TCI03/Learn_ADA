with Ada.Text_IO;
with Ada.Strings.Unbounded;

package body Count_Char is
    --  User enter something in the screen and the number of characters is displayed:
    --  Get_line version:
    procedure count_input is
        I_nb : Integer;
        S : Ada.Strings.Unbounded.Unbounded_String; 
    begin
        Ada.Text_IO.Put_Line ("Enter anything you want: ");
        S := Ada.Strings.Unbounded.To_Unbounded_String (Ada.Text_IO.Get_Line);
        I_nb := Ada.Strings.Unbounded.Length (S);
        Ada.Text_IO.Put_line ("You have entered" & Integer'Image (I_nb) & " characters.");

        --  How to print char for an unbounded string:
        --  Ada.Text_IO.Put (Ada.Strings.Unbounded.Element (S, 7)); It's OK here.
        --  With Put_Line, we need string (not char):
        --  Ada.Text_IO.Put_Line (Ada.Strings.Unbounded.Element (S, 7) & "");
    end count_input;

    procedure count_char_input is
        C : Character;
        nb : Integer := 0;
    begin
        Ada.Text_IO.Put_Line ("Enter anything you want:");
        while not Ada.Text_IO.End_Of_File loop
            if Ada.Text_IO.End_Of_Line then
                Ada.Text_IO.Skip_Line;
            else
                Ada.Text_IO.Get (C);
                nb := nb + 1;
            end if;
        end loop;
        Ada.Text_IO.New_Line;
        Ada.Text_IO.Put_Line ("You have entered" & Integer'Image (nb) & " characters.");
    end count_char_input;
end Count_Char;
