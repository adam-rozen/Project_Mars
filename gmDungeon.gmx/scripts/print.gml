i = 0;
test = obj_textbox.phrases[i];
while(test!=-1)
{
     i++;
     test = obj_textbox.phrases[i];
}
obj_textbox.phrases[i] = argument[0];
