```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   MyArr_Copy : My_Array := MyArr; -- Create a copy of the array
begin
   for I in MyArr_Copy'Range loop
      if MyArr_Copy(I) = 5 then
         MyArr(I) := MyArr_Copy(I) * 2; 
      end if;
   end loop;
   for I in MyArr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(MyArr(I)));
   end loop;
exception
   when others =>
      Ada.Text_IO.Put_Line("Error occurred");
end Example_Solution;
```