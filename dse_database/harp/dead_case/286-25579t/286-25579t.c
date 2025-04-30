#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void Multiplica(char Multiplicando[],char Multiplicador[],char Produto[])
{
    char Buffer[20001];

    int digito,digito2,j,resto=0,i=0;
    long int Parcial,Quociente = 0;
    long int Auxiliar1 = atol(Multiplicando);
    int Tamanho_string = strlen(Multiplicador);

    Tamanho_string--;
    while(Tamanho_string!=-1)
    {
        digito = Multiplicador[Tamanho_string]-48;
        digito2 = Multiplicando[Tamanho_string]-48;
        Parcial = digito2*digito;
        Parcial = Parcial+Quociente;
        Quociente = Parcial/10;
        resto = Parcial%10;
        Buffer[i] = resto+48;
        i++;
        Tamanho_string--;
    }
    while(Quociente>=10)
    {
        resto = Quociente%10;
        Quociente = Quociente/10;
        Buffer[i] = resto+48;
        i++;
    }
    if(Quociente>0)
    {
        Buffer[i] = Quociente+48;
        i++;
    }
    Buffer[i] = '\0'; // Obtem a "string" de forma inversa
    Tamanho_string = strlen(Buffer); // eh preciso inverter os caracteres
    for(i=0,j=Tamanho_string-1; i<Tamanho_string; i++,j--)
    {
        Produto[i] = Buffer[j];
    }
    Produto[i]='\0';
}

void matcher(char s1[],char s2[],char *Chave,int size) {
	char subs[2000];
	char subs2[2000];
	int subssize = 2;
	int biggestMatch = 0;
	int i,j=0,k,l;


	for (j=0;j<size;j++) {
		for (k=0;k<size;k++) {
			if (s1[j] == s2[k]) {
				i=0;
				while (s1[j+i] == s2[k+i]) {
					subs[i] = s1[j+i];
					i++;
				}
				subs[i] = '\0';
				if (strlen(subs) > biggestMatch) {
					biggestMatch = strlen(subs);
					strcpy(subs2,subs);
				}		
			}
		}
	}

	printf("maior match:%s\n",subs2);
}

int MultiplicaEZ(char m1[],char m2[]) {
	char subm1[6];
	strncpy(subm1,m1,6);
	subm1[5] = '\0';

	char subm2[6];
	strncpy(subm2,m2,6);
	subm2[5] = '\0';

	int im1 = atoi(subm1);
	int im2 = atoi(subm2);

	return (im1*im2);
}

int main() {
	int Tamanho = 743;
    char Texto[] = "12345678901065703304011031338370763392959061742177117741574752405286675751751314504012625336320365104661051291909178480948331328953939507131293079240283777803550434266953656933331862862836053872629918246535772390084354593076702934450791518879868380519997944757051401202663606740768021543612770901240982825779317596912107867285544985437368652710797055348487148149587590243274151793944598475566943017826205603956290299910129298589726700292721565513320871031576930809285943446191042007026945145706963385419521277601571208503379491200480304910489078359571596307622501134540377100878475810202910188059443398551447401411271192011985935673099472044705074971205559203895085818347347252899195454541511061949049056468259567711373961417054550528811252031";
    char Padrao[] = "10657033040110313383707633929590617421771177415747524052866757517513145040126253363203651046610512919091784809483313289539395071312930792402837778035504342669536569333318628628360538726299182465357723900843545930767029344507915188798683805199979447570514012026636067407680215436127709012409828257793175969121078672855449854373686527107970553484871481495875902432741517939445984755669430178262056039562902999101292985897267002927215655133208710315769308092859434461910420070269451457069633854195212776015712085033794912004803049104890783595715963076225011345403771008784758102029101880594433985514474014112711920119859356730994720447050749712055592038950858183473472528991954545415110619490490564682595677113739614170545505288112520310000071232";
    char *Chave = (char *)calloc(2000,sizeof(char));

    char m1[] = "335328584367495293659342105680805357709";
    char m2[] = "339728353662883315388043909290053954799";
    int prod;
    prod = MultiplicaEZ(m1,m2);
    printf("%d\n",prod);
    //printf("fim = %d\n",')' - 48);

    //matcher(Texto,Padrao,Chave,Tamanho);
    //printf("%s\n",Chave);



	return 0;
}
