#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float delta_n_step(float n, float lambda, float dt);
void single_decay(float N0, float lambda, float dt);

int main(){

	float N_0 = 100.0;
	float Lambda = 1.0/2.0;
	float Dt = 0.001;

	srand48(1);
	
	single_decay(N_0, Lambda, Dt);
		
	return 0;
}

float delta_n_step(float n, float lambda, float dt){
	
	float rand_num = drand48();
	if(rand_num < lambda*n*dt){
		return -1.0;
	} else {
		return 0.0;
	}
}
	
void single_decay(float N0, float lambda, float dt){

    
    
	float t_total = 5.0/lambda;
	int n_points = (int)t_total/dt;
	int i;
    int j;
    int k;
	
    float M=5.0;
	float t = 0.0;
	float n = N0;
    
    float *array_n=malloc(n_points*sizeof(float));
    float *array_t=malloc(n_points*sizeof(float));

    
    FILE *out=fopen("data_rand_average.txt","w+");
    
	fprintf(out,"%f %f\n", t, n);
    
    array_n[0]=n;
    array_t[0]=t;
    
    float *array_n_temp=malloc(n_points*sizeof(float));
    float *array_t_temp=malloc(n_points*sizeof(float));
        
    for(j=0;j<M;j++){

        array_n_temp[0]=N0;
        array_t_temp[0]=0.0;
        n=N0;
        t=0.0;
        
        for(i=1;i<(n_points);i++){
            t += dt;
		    float delta_n = delta_n_step(n, lambda, dt);
		    n +=delta_n;
            array_n_temp[i]=n;
            array_t_temp[i]=t;
	    }
        
        for(i=1;i<(n_points);i++){
            array_n[i]=array_n[i]+array_n_temp[i];
            array_t[i]=array_t[i]+array_t_temp[i];
	    }
        
    }
    for(k=1;k<(n_points);k++){
        array_n[k]=array_n[k]/M;
        array_t[k]=array_t[k]/M;
        fprintf(out,"%f %f\n", array_t[k], array_n[k]);
    }
    fclose(out);
}
