<?php





$dataIni = '2006-01-01';
$dataFim = '2006-01-31';

if(isset($_GET)){
  $nomePessoa = '%'.trim($_GET['nome']).'%';
  $ufCod = '%'.trim($_GET['uf']).'%';
  $recCod = '%'.trim($_GET['recurso']).'%';
} else {
  $nomePessoa = '%%';
  $ufCod = '%%';
  $recCod = '%%';
}



$dbh = new PDO('mysql:host=127.0.0.1;dbname=teste','root','');

$sth = $dbh->prepare('SELECT SUM(pedido.total) AS SOMA FROM pedido INNER JOIN pessoa ON pessoa.chave = pedido.pessoa INNER JOIN uf ON uf.chave = pessoa.uf INNER JOIN recurso ON recurso.chave = pedido.recurso WHERE ( pedido.movimentacao >= :dataIni AND pedido.movimentacao <= :dataFim) AND pessoa.nome LIKE :nomePessoa AND uf.codigo LIKE :ufCod AND recurso.codigo LIKE :recCod ');
$sth->bindParam(':dataIni',$dataIni, PDO::PARAM_STR);
$sth->bindParam(':dataFim',$dataFim, PDO::PARAM_STR);
$sth->bindParam(':nomePessoa',$nomePessoa, PDO::PARAM_STR);
$sth->bindParam(':ufCod',$ufCod, PDO::PARAM_STR);
$sth->bindParam(':recCod',$recCod, PDO::PARAM_STR);
$sth->execute();

$resultados = $sth->fetchAll(PDO::FETCH_ASSOC);

print_r(json_encode($resultados));exit;

?>