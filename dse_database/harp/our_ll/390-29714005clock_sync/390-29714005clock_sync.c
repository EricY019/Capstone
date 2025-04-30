
#include <stdio.h>

int  connections[10][5] = {{0,1,2,-1,-1},{3,7,9,11,-1},{4,10,14,15,-1},{0,4,5,6,7},{6,7,8,10,12},{0,2,14,15,-1},{3,14,15,-1,-1},{4,5,7,14,15},{1,2,3,4,5},{3,4,5,9,13}};

int all_twelve(int* current_locations){

	int i=0;
	for(i=0;i<16;i++){
		if(current_locations[i] != 12){
			return -1;
		}
	}

	return 0;
}

void set(int* current_locations, int* affected, int value){
	int i=0;
	for(i=0;i<5;i++){
		if(-1 != affected[i]){
			current_locations[affected[i]] = current_locations[affected[i]] + value;
			if(current_locations[affected[i]] > 12){
				current_locations[affected[i]] = current_locations[affected[i]] - 12;
			}
			if(current_locations[affected[i]] <= 0){
				current_locations[affected[i]] = current_locations[affected[i]] + 12;
			}
		}
	}
}


int min_switch(int* current_locations, int switch_idx){


	if(switch_idx >= 10){
		return all_twelve(current_locations);
	}
	int i=0;
	int* affected = connections[switch_idx];

	//当前不动，后面的开关动的最小次数
	int no_switch = min_switch(current_locations, switch_idx+1);

	set(current_locations, affected, 3);
	//当前动一次，后面的开关动的最小次数
	int switch_once = min_switch(current_locations, switch_idx+1);
	if(switch_once != -1){
		switch_once += 1;
	}
	set(current_locations, affected, -3);

	set(current_locations, affected, 6);
	//当前动两次，后面的开关动的最小次数
	int switch_twice = min_switch(current_locations, switch_idx+1);
	if(switch_twice != -1){
		switch_twice += 2;
	}
	set(current_locations, affected, -6);

	set(current_locations, affected, 9);
	//当前动三次，后面的开关动的最小次数
	int switch_third = min_switch(current_locations, switch_idx+1);
	if(switch_third != -1){
		switch_third += 3;
	}
	set(current_locations, affected, -9);

	if(switch_once != -1){
		if(no_switch == -1){
			no_switch = switch_once;
		}
		else if(no_switch > switch_once){
			no_switch = switch_once;
		}
	}

	if(switch_twice != -1){
		if(no_switch == -1){
			no_switch = switch_twice;
		}
		else if(no_switch > switch_twice){
			no_switch = switch_twice;
		}
	}

	if(switch_third != -1){
		if(no_switch == -1){
			no_switch = switch_third;
		}
		else if(no_switch > switch_third){
			no_switch = switch_third;
		}
	}

	return no_switch;

}


int min_switch_v2(int* current_locations, int switch_idx){

	if(switch_idx >= 10){
		return all_twelve(current_locations);
	}
	int i=0, tmp=0, ret=-1;

	for(i=0;i<4;i++){
		set(current_locations, connections[switch_idx], i*3);
		tmp = min_switch_v2(current_locations, switch_idx+1);
		set(current_locations, connections[switch_idx], -i*3);
		if(tmp != -1){
			tmp += i;
			if(ret == -1 || ret > tmp){
				ret = tmp;
			}
		}
	}

	return ret;
}


int main(int argc, char const *argv[])
{
	//2
	int case1[] = {12,6,6,6,6,6,12,12,12,12,12,12,12,12,12,12};
	//9
	int case2[] = {12,9,3,12,6,6,9,3,12,9,12,9,12,12,6,6};

	printf("%d\n", min_switch_v2(case1, 0));
	printf("%d\n", min_switch_v2(case2, 0));

	return 0;
}
