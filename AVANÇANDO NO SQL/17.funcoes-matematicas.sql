select (23+((25-2)/2) * 45) as resultado;

/*ceiling - retorna o maior inteiro*/
select ceiling(12.3333) as resultado;
select floor(12.3333) as resultado;

select round(12.3333) as resultado;

select rand() as resultado;

select numero, quantidade, preco, quantidade * preco as faturamento from itens_notas_fiscais;

select numero, quantidade, preco, round(quantidade * preco, 2) as faturamento from itens_notas_fiscais;
