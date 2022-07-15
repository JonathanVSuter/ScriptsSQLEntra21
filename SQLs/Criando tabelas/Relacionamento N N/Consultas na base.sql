--Visualizando os dados das tabelas de forma individual;
select * from Local
select * from Clima
select * from ClimaTempo

--exemplo de script em T-SQL
BEGIN 
 DECLARE 
	@texto varchar(100);
	BEGIN
		select @texto = c.Descricao_curta from Clima c where c.Id = 2;
		select @texto;
    END;
END;

--Mostrar apenas os climas onde o campo descrição curta não é vazio.
--Sem except
select l.Descricao, c.Descricao_curta from Local l 
inner join ClimaTempo ct on l.Id = ct.IdLocal 
inner join Clima c on ct.IdClima = c.Id
Where not c.Descricao_curta = ''

--Usando o except
select l.Descricao, c.Descricao_curta from Local l 
inner join ClimaTempo ct on l.Id = ct.IdLocal 
inner join Clima c on ct.IdClima = c.Id
except
select l.Descricao, c.Descricao_curta from Local l 
inner join ClimaTempo ct on l.Id = ct.IdLocal 
inner join Clima c on ct.IdClima = c.Id
where c.Descricao_curta = ''

--Mostrar os climas em que a descrição longa tem Neve
select l.Descricao, c.Descricao_longa from Local l 
inner join ClimaTempo ct on l.Id = ct.IdLocal 
inner join Clima c on ct.IdClima = c.Id
where c.Descricao_longa = 'Neve'

--Mostrar climas em que a descrição 
--Usando OR
select l.Descricao, c.Descricao_longa from Local l 
inner join ClimaTempo ct on l.Id = ct.IdLocal 
inner join Clima c on ct.IdClima = c.Id
where c.Descricao_longa = 'Neve'
or c.Descricao_longa = 'Nublado'

--Usando Union
select l.Descricao, c.Descricao_longa from Local l 
inner join ClimaTempo ct on l.Id = ct.IdLocal 
inner join Clima c on ct.IdClima = c.Id
where c.Descricao_longa = 'Neve'
union
select l.Descricao, c.Descricao_longa from Local l 
inner join ClimaTempo ct on l.Id = ct.IdLocal 
inner join Clima c on ct.IdClima = c.Id
where c.Descricao_longa = 'Nublado'

--Localizando registros usando uma parte da palavra
select l.Descricao, c.Descricao_longa from Local l 
inner join ClimaTempo ct on l.Id = ct.IdLocal 
inner join Clima c on ct.IdClima = c.Id
where c.Descricao_longa like '%C%'
 
