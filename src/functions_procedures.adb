with Ada.Text_IO;

package body Functions_Procedures is
    procedure test_proc(
        Val1 : in Integer;
        Val2 : in out Integer;
        Val3 : out Integer) is
    begin
        --  Compilation error since Val1 is in:
        --  Val1 := 4;
        
        Ada.Text_IO.Put_Line(" Input1 before assignment: " & Integer'Image(Val2));
        Val2 := 6;
        --  This value does not get set and is a nonsense.

        Ada.Text_IO.Put_Line(" Input2 before assignment: " & Integer'Image(Val3));
        Val3 := 8;
        Ada.Text_IO.Put_Line(" Input2 after assignment: "  & Integer'Image(Val3));

        return;
    end test_proc;

    function test_func(
        Val1 : in Integer;
        Val2 : out Integer) 
        return Boolean is

    begin
        --  Compilation error since Val1 is in.
        --  Val1 := 22;
        Val2 := 44;
        return True;
    end test_func;

    procedure func_proc is
        Input1 : Integer := 23;
        Input2 : Integer := 92;
    begin
        Ada.Text_IO.Put_Line(" Input1 before test_proc: " & Integer'Image(Input1));
        Ada.Text_IO.Put_Line(" Input2 before test_proc: " & Integer'Image(Input2));
        Ada.Text_io.New_Line;

        test_proc(25, Input1, Input2);

        Ada.Text_io.New_Line;
        Ada.Text_IO.Put_Line(" Input1 after test_proc: " & Integer'Image(Input1));
        Ada.Text_IO.Put_Line(" Input2 after test_proc: " & Integer'Image(Input2));
        Ada.Text_io.New_Line;

        Ada.Text_IO.Put_Line(" test_func return value: " & Boolean'Image(test_func(54, Input2)));

        Ada.Text_io.New_Line;
        Ada.Text_IO.Put_Line(" Input2 after test_proc: " & Integer'Image(Input2));
    end func_proc;
end Functions_procedures;
