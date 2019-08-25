-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.26 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para dbo_loja
CREATE DATABASE IF NOT EXISTS `dbo_loja` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbo_loja`;

-- Copiando estrutura para tabela dbo_loja.rel_itemcompra
CREATE TABLE IF NOT EXISTS `rel_itemcompra` (
  `id_produto` int(11) DEFAULT NULL,
  `id_ordem` int(11) DEFAULT NULL,
  KEY `fk_produto` (`id_produto`),
  KEY `fk_ordem` (`id_ordem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.rel_itemcompra: 0 rows
/*!40000 ALTER TABLE `rel_itemcompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_itemcompra` ENABLE KEYS */;

-- Copiando estrutura para tabela dbo_loja.rel_pedido_items
CREATE TABLE IF NOT EXISTS `rel_pedido_items` (
  `id_pedido` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  KEY `fk_pedido` (`id_pedido`),
  KEY `fk_produto` (`id_produto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.rel_pedido_items: 0 rows
/*!40000 ALTER TABLE `rel_pedido_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_pedido_items` ENABLE KEYS */;

-- Copiando estrutura para tabela dbo_loja.rel_produto_nf
CREATE TABLE IF NOT EXISTS `rel_produto_nf` (
  `id_nf` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  KEY `fk_nf` (`id_nf`),
  KEY `fk_prod` (`id_produto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.rel_produto_nf: 0 rows
/*!40000 ALTER TABLE `rel_produto_nf` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_produto_nf` ENABLE KEYS */;

-- Copiando estrutura para tabela dbo_loja.tb_clientes
CREATE TABLE IF NOT EXISTS `tb_clientes` (
  `id_cli` int(11) NOT NULL AUTO_INCREMENT,
  `tp_cli` enum('PF','PJ') NOT NULL,
  `nm_cli` varchar(100) NOT NULL,
  `nr_cpf` char(11) DEFAULT NULL,
  `nr_rg` varchar(15) DEFAULT NULL,
  `nr_cnpj` char(14) DEFAULT NULL,
  `nr_insc_est` varchar(15) DEFAULT NULL,
  `end_lograd` varchar(150) NOT NULL,
  `end_num` varchar(10) NOT NULL,
  `end_bairro` varchar(50) NOT NULL,
  `end_cidade` varchar(50) NOT NULL,
  `end_uf` char(2) NOT NULL,
  `end_cep` char(8) NOT NULL,
  `nr_tel` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `site` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.tb_clientes: 0 rows
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela dbo_loja.tb_fornecedor
CREATE TABLE IF NOT EXISTS `tb_fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nmFornecedor` varchar(50) NOT NULL,
  `nm_pseudonimo` varchar(50) DEFAULT NULL,
  `end_lograd` varchar(150) NOT NULL,
  `end_num` varchar(10) NOT NULL,
  `end_bairro` varchar(50) NOT NULL,
  `end_cidade` varchar(50) NOT NULL,
  `end_uf` char(2) NOT NULL,
  `end_cep` char(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nr_cnpj` char(14) NOT NULL,
  `nr_inscrEstad` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.tb_fornecedor: 0 rows
/*!40000 ALTER TABLE `tb_fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_fornecedor` ENABLE KEYS */;

-- Copiando estrutura para tabela dbo_loja.tb_marcas
CREATE TABLE IF NOT EXISTS `tb_marcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marcaImpressora` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.tb_marcas: 0 rows
/*!40000 ALTER TABLE `tb_marcas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_marcas` ENABLE KEYS */;

-- Copiando estrutura para tabela dbo_loja.tb_nota_fiscal
CREATE TABLE IF NOT EXISTS `tb_nota_fiscal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nr_nota` char(10) NOT NULL,
  `dt_emissao` date NOT NULL,
  `tp_pgto` enum('tef','chk') NOT NULL,
  `id_cli` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nf_cliente` (`id_cli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.tb_nota_fiscal: 0 rows
/*!40000 ALTER TABLE `tb_nota_fiscal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_nota_fiscal` ENABLE KEYS */;

-- Copiando estrutura para tabela dbo_loja.tb_ordem_compra
CREATE TABLE IF NOT EXISTS `tb_ordem_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nr_ordem` int(11) NOT NULL,
  `dt_emissao` date NOT NULL,
  `st_atend` tinyint(1) NOT NULL,
  `dt_previsao` date NOT NULL,
  `id_fornec` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fornecedor` (`id_fornec`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.tb_ordem_compra: 0 rows
/*!40000 ALTER TABLE `tb_ordem_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_ordem_compra` ENABLE KEYS */;

-- Copiando estrutura para tabela dbo_loja.tb_pedido
CREATE TABLE IF NOT EXISTS `tb_pedido` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_cli` int(11) DEFAULT NULL,
  `nr_pedido` char(10) NOT NULL,
  `dt_emissao` date NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedido_cliente` (`id_cli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.tb_pedido: 0 rows
/*!40000 ALTER TABLE `tb_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pedido` ENABLE KEYS */;

-- Copiando estrutura para tabela dbo_loja.tb_produto
CREATE TABLE IF NOT EXISTS `tb_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codProd` varchar(10) NOT NULL,
  `descrProd` varchar(100) NOT NULL,
  `modeloProd` varchar(70) NOT NULL,
  `idMarca` int(11) NOT NULL,
  `saldoEstoque` double NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idMarca_idProduto` (`idMarca`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela dbo_loja.tb_produto: 0 rows
/*!40000 ALTER TABLE `tb_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_produto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
