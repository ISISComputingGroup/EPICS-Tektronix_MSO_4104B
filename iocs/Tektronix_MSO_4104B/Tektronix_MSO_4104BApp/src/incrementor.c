#include <registryFunction.h>
#include <epicsExport.h>
#include "aSubRecord.h"
#include "stdlib.h"
   
static long incrementor(aSubRecord *prec) {
    long i;
    double *a;
    
    prec->pact = 1;
    
    a = (double *)prec->a;
	//printf("a = %f", *a);
    
    //Could potentially be an array, so must code for that
    free(prec->vala);
	prec->vala = malloc(prec->nova * sizeof(double));
    
    //printf("noa = %d", prec->noa);
    
    for(i=0; i < prec->nova; ++i)
    {
        //printf("index= %d", i);
        ((double *)prec->vala)[i] = (double)i * (*a);
    }
    
    prec->pact = 0;

    //Debug message - prints to IOC
    //printf("my_asub_routine called");
    
    return 0;
}
epicsRegisterFunction(incrementor);