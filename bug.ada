```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1,2,3,4,5,6,7,8,9,10);
begin
   for I in MyArr'Range loop
      if MyArr(I) = 5 then
         MyArr(I) := MyArr(I) * 2; -- Modifying array element during iteration
      end if;
   end loop;
   for I in MyArr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(MyArr(I)));
   end loop;
exception
   when others =>
      Ada.Text_IO.Put_Line("Error occurred");
end Example;
```