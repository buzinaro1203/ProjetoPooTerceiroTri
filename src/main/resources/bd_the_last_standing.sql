-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3304
-- Tempo de geração: 03-Out-2023 às 16:16
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_the_last_standing`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_batalha`
--

CREATE TABLE `tb_batalha` (
  `id_batalha` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fk_jogador` int(11) NOT NULL,
  `data_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_guerreiro`
--

CREATE TABLE `tb_guerreiro` (
  `id_guerreiro` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `ponto_vida` int(11) NOT NULL,
  `ponto_ataque` int(11) NOT NULL,
  `ponto_defesa` int(11) NOT NULL,
  `forca` int(11) NOT NULL,
  `velocidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_item`
--

CREATE TABLE `tb_item` (
  `id_item` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `personagem` varchar(255) NOT NULL,
  `modalidade` varchar(255) NOT NULL,
  `preco` int(11) NOT NULL,
  `bonus_defesa` int(11) NOT NULL,
  `bonus_ataque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_jogador`
--

CREATE TABLE `tb_jogador` (
  `id_jogador` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `pontuacao` int(11) NOT NULL,
  `data_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_mistico`
--

CREATE TABLE `tb_mistico` (
  `id_mistico` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `ponto_vida` int(11) NOT NULL,
  `ponto_ataque` int(11) NOT NULL,
  `ponto_defesa` int(11) NOT NULL,
  `inteligencia` int(11) NOT NULL,
  `recuperacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_batalha`
--
ALTER TABLE `tb_batalha`
  ADD KEY `fk_jogador` (`fk_jogador`);

--
-- Índices para tabela `tb_guerreiro`
--
ALTER TABLE `tb_guerreiro`
  ADD PRIMARY KEY (`id_guerreiro`);

--
-- Índices para tabela `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices para tabela `tb_jogador`
--
ALTER TABLE `tb_jogador`
  ADD PRIMARY KEY (`id_jogador`);

--
-- Índices para tabela `tb_mistico`
--
ALTER TABLE `tb_mistico`
  ADD PRIMARY KEY (`id_mistico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_guerreiro`
--
ALTER TABLE `tb_guerreiro`
  MODIFY `id_guerreiro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_item`
--
ALTER TABLE `tb_item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_jogador`
--
ALTER TABLE `tb_jogador`
  MODIFY `id_jogador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_mistico`
--
ALTER TABLE `tb_mistico`
  MODIFY `id_mistico` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_batalha`
--
ALTER TABLE `tb_batalha`
  ADD CONSTRAINT `tb_batalha_ibfk_1` FOREIGN KEY (`fk_jogador`) REFERENCES `tb_jogador` (`id_jogador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
