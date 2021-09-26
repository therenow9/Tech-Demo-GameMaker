//testing out the functions of ds lists
for (i=0;i <ds_list_size(dsl_test); i +=1)
{
	draw_text(10,10+(10*i),ds_list_find_value(dsl_test,i));
}
