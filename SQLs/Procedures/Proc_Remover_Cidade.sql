CREATE OR ALTER PROCEDURE Proc_Remover_Cidade @descricao varchar(255)
AS
begin 
	declare 
	 @idLocal int; 
	select @idLocal = l.Id from Local l 
	where l.Descricao = @descricao
	if @idLocal >0
		begin
			delete from ClimaTempo where IdLocal = @idLocal;
			delete from Local where Id = @idLocal;
			print 'Registro removido';
		end;
    else
	   begin
			print 'Registro não encontrado.';
	   end;
end;

