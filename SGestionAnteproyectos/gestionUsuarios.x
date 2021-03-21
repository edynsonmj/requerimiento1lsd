/*Declaracion de datos a transferir entre el cliente y el servidor*/
/*Declaracion de constantes*/
const MAXNOM = 40;
/*Declaracion de la estructura que permite almacenar los datos de un anteproyecto*/
struct datos_usuario{
    int identificacion;
    char departamento[MAXNOM];
    char role[MAXNOM];
    char nombre[MAXNOM];
    char login[MAXNOM];
    char password[MAXNOM];
};

/*Definicion de las operaciones que se pueden realizar*/
program gestion_usuarios{
    version gestion_usuarios_version{
        bool registrarUsuario(datos_usuario objUsuario)=1;
        /*solo se pasa login y password*/
        datos_usuario iniciarSesion(datos_usuario login)=2;
    }=1;
}=0x20000011;