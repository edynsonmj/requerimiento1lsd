/*Declaracion de datos a transferir entre el cliente y el servidor*/
/*Declaracion de constantes*/
const MAXNOM = 40;
typedef struct nodo_anteproyecto * listaAnteproyectos;
typedef struct nodo_resolucion * listaResoluciones;
/*Declaracion de la estructura que permite almacenar los datos de un anteproyecto*/
struct datos_anteproyecto{
    /*proyecto*/
    int codigoAnteproyecto;
    char nombrePrograma[MAXNOM];
    char titulo[MAXNOM];
    char objetivos[MAXCONTENIDO];
    /*estudiantes*/
    char estudiante01Nom[MAXNOM];
    int estudiante01Cod;
    char estudiante02Nom[MAXNOM];
    int estudiante02Cod;
    /*director*/
    char director[MAXNOM];
    char codirector[MAXNOM];
    /*B-C-D*/
    evaluacion infoEval[2];
    coordinacion infoCoordi;
    jefeDepto infoJefeDepto;
};
struct datos_resolucion{
    int codigoAnteproyecto;
    char fechaResolucion[MAXNOM];
    int numResolucion;
};

/*Definicion de las operaciones que se pueden realizar*/
program gestion_usuarios{
    version gestion_seguimiento_version{
        /*registrar*/
        bool registrarAnteproyectoHistorial(datos_anteproyecto)=1;
        bool registrarResolucion(datos_resolucion)=2;
        /*obtener todo*/
        listaAnteproyectos consultarAnteproyectos(void)=3;
        listaResoluciones consultarAprovados(void)=4;
        /*obtener 1*/
        datos_anteproyecto consultarAnteproyecto(int codigo)=5;
        datos_resolucion consultarAprovado(int codigo)=6;
    }=1;
}=0x20000013;