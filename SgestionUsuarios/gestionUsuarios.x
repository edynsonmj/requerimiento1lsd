/*Declaracion de datos a transferir entre el cliente y el servidor*/
/*Declaracion de constantes*/
const MAXNOM = 40;
/*Declaracion de la estructura que permite almacenar los datos de un anteproyecto*/
struct registroUsuario{
    int identificacion;
    char departamento[MAXNOM];
    char role[MAXNOM];
    char nombre[MAXNOM];
    char login[MAXNOM];
    char password[MAXNOM];
};

/*Definicion de las operaciones que se pueden realizar*/
program gestion_usuarios{
    version gestion_usuario_version{
        bool almacenarUsuario(registroUsuario objUsuario)=1;
        registroUsuario consultarUsuario(int id)=2;
        registroUsuario autenticar(registroUsuario login)=3;
    }=1;
}=0x20000013;