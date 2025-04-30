/*
 * burgers.c
 *
 *  Created on: 2/11/2015
 *      Author: Laura Ferrer
 */

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int nx = 41;
	int nt = 120;
	int c = 1;
	int pasos = 500;
	double dx = 2./(nx-1.);
	double sigma = .0009;
	double nu = 0.01;
	double dt = sigma*dx*dx/nu;
	double x[nx];
	double y[nx];
	int i;
	int j;
	for (i = 0; i < nx; i += 1)
	{
		x[i]= i*dx;
		y[i]= i*dx;
	}
	double u[nx][nx];
	double v[nx][nx];
	for (i = 0; i < nx; i += 1)
	{
		for (j = 0; j < nx; j += 1)
		{
			if (((i>=0.5) && (i<=dx)) && ((j>=0.5) && (j<=dx)))
			{
				u[i][j] = 2;
				v[i][j] = 2;
			}
			else
			{
				u[i][j] = 1;
				v[i][j] = 1;
			}
		}
	}
	int paso;
	for (paso = 0; paso < pasos; paso += 1)
	{
		for (i = 0; i < nx; i += 1)
		{
			for (j = 0; j < nx; j += 1)
			{
				if (i == 0 || i == nx-1 || j == 0 || j == nx-1)//Fronteras
				{
					u[i][j] = 1;
					v[i][j] = 1;
				}
				else
				{
					u[i][j]=u[i][j]- dt/dx*u[i][j]*(u[i][j]-u[i][j-1])
							-dt/dx*u[i][j]*(u[i][j]-u[i-1][j])+
							nu*dt/pow(dx,2.)*(u[i][j+1]-2*u[i][j]+u[i][j-1])+
							nu*dt/pow(dx,2.)*(u[i+1][j]-2*u[i][j]+u[i-1][j]);
					v[i][j]=v[i][j]- dt/dx*v[i][j]*(v[i][j]-v[i][j-1])
							-dt/dx*v[i][j]*(v[i][j]-v[i-1][j])+
							nu*dt/pow(dx,2.)*(v[i][j+1]-2*v[i][j]+v[i][j-1])+
							nu*dt/pow(dx,2.)*(v[i+1][j]-2*v[i][j]+v[i-1][j]);
				}
				printf("%g,%g,%g,%g", x[i],y[j],u[i][j],v[i][j]);
			}
		}
	}


	return 0;
}
