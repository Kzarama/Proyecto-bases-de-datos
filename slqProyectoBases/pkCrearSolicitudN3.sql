create or replace package pkCrearSolicitudN3 is
    procedure pCrearSolicitudN3(codigo in varchar2, estado in varchar2, descripcion in varchar2, clienteCedula in varchar2, codigoProducto in varchar2, fechaCreacion in date, tipo in varchar2, nombre in varchar2, fechaNacimiento in date, direccion in varchar2, telefono in varchar2, descripcionProducto in varchar2, tipoProducto in varchar2, errorCodCliente out number, errorNameCliente out varchar2, errorCodProducto out number, errorNameProducto out varchar2, errorCodSolicitud out number, errorNameSolicitud out varchar2);
end pkCrearSolicitudN3;

create or replace package body pkCrearSolicitudN3 is
    
    procedure pCrearSolicitudN3(codigo in varchar2, estado in varchar2, descripcion in varchar2, clienteCedula in varchar2, codigoProducto in varchar2, fechaCreacion in date, tipo in varchar2, nombre in varchar2, fechaNacimiento in date, direccion in varchar2, telefono in varchar2, descripcionProducto in varchar2, tipoProducto in varchar2, errorCodCliente out number, errorNameCliente out varchar2, errorCodProducto out number, errorNameProducto out varchar2, errorCodSolicitud out number, errorNameSolicitud out varchar2) is
    begin
        errorCodCliente := 0;
        errorNameCliente := '';
		errorCodProducto := 0;
        errorNameProducto := '';
		errorCodSolicitud := 0;
        errorNameSolicitud := '';
        pkcrearsolicitudn2.pcrearsolicitudn2(codigo, estado, descripcion, clienteCedula, codigoProducto, fechaCreacion, tipo, nombre, fechaNacimiento, direccion, telefono, descripcionProducto, tipoProducto, errorCodCliente, errorNameCliente, errorCodProducto, errorNameProducto, errorCodSolicitud, errorNameSolicitud);
    end pCrearSolicitudN3;
    
end pkCrearSolicitudN3;