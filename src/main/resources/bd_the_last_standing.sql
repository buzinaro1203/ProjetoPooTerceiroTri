-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/11/2023 às 02:55
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `the_last_standing`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_batalha`
--

CREATE TABLE `tb_batalha` (
  `id_batalha` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fk_jogador` int(11) NOT NULL,
  `data_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_guerreiro`
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

--
-- Despejando dados para a tabela `tb_guerreiro`
--

INSERT INTO `tb_guerreiro` (`id_guerreiro`, `nome`, `ponto_vida`, `ponto_ataque`, `ponto_defesa`, `forca`, `velocidade`) VALUES
(1, 'jorge', 100, 19, 14, 0, 0),
(2, 'caldo', 100, 19, 13, 0, 0),
(3, 'claudio', 100, 20, 12, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_item`
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
-- Estrutura para tabela `tb_jogador`
--

CREATE TABLE `tb_jogador` (
  `id_jogador` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `pontuacao` int(11) NOT NULL,
  `data_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_mago`
--

CREATE TABLE `tb_mago` (
  `id_mago` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `ponto_vida` int(11) NOT NULL,
  `ponto_ataque` int(11) NOT NULL,
  `ponto_defesa` int(11) NOT NULL,
  `magia` int(11) NOT NULL,
  `poder_sombrio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_mago`
--

INSERT INTO `tb_mago` (`id_mago`, `nome`, `ponto_vida`, `ponto_ataque`, `ponto_defesa`, `magia`, `poder_sombrio`) VALUES
(1, 'jorge', 100, 19, 14, 0, 0),
(2, 'de cana', 100, 19, 15, 0, 0),
(3, 'fred', 100, 16, 12, 0, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_batalha`
--
ALTER TABLE `tb_batalha`
  ADD KEY `fk_jogador` (`fk_jogador`);

--
-- Índices de tabela `tb_guerreiro`
--
ALTER TABLE `tb_guerreiro`
  ADD PRIMARY KEY (`id_guerreiro`);

--
-- Índices de tabela `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices de tabela `tb_jogador`
--
ALTER TABLE `tb_jogador`
  ADD PRIMARY KEY (`id_jogador`);

--
-- Índices de tabela `tb_mago`
--
ALTER TABLE `tb_mago`
  ADD PRIMARY KEY (`id_mago`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_guerreiro`
--
ALTER TABLE `tb_guerreiro`
  MODIFY `id_guerreiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT de tabela `tb_mago`
--
ALTER TABLE `tb_mago`
  MODIFY `id_mago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_batalha`
--
ALTER TABLE `tb_batalha`
  ADD CONSTRAINT `tb_batalha_ibfk_1` FOREIGN KEY (`fk_jogador`) REFERENCES `tb_jogador` (`id_jogador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
