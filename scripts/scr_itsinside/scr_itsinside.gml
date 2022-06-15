function scr_itsinside(x1,y1,x2,y2, x_test, y_test){
	var Result = false;
	if((x1 < x_test) and (x_test < x2) and (y1 < y_test) and (y_test < y2)){
		Result = true;
	}
	return Result;
}