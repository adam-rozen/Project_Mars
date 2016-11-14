i = 0;
test = global.textbox.phrases[i];
while(test!=-1)
{
     i++;
     test = global.textbox.phrases[i];
}
global.textbox.phrases[i] = argument[0];
