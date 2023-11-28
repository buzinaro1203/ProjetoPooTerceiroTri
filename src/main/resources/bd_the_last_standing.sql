-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/11/2023 às 03:58
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
  `id_batalha` bigint(20) UNSIGNED NOT NULL,
  `nome_vencedor` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_batalha`
--

INSERT INTO `tb_batalha` (`id_batalha`, `nome_vencedor`) VALUES
(1, 'sada'),
(2, 'sada'),
(3, 'sada');

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
(3, 'claudio', 100, 20, 12, 0, 0),
(4, 'morde', 100, 17, 10, 0, 0),
(5, 'juerge', 100, 16, 15, 0, 0),
(6, 'josimar', 100, 15, 12, 0, 0),
(7, 'asda', 100, 16, 11, 0, 0),
(8, 'asdas', 100, 19, 12, 0, 0),
(9, 'juerge', 100, 15, 10, 0, 0),
(10, 'juerge', 100, 16, 14, 0, 0),
(11, 'asds', 100, 17, 10, 0, 0),
(12, 'as', 100, 15, 11, 0, 0),
(13, 'jorgin', 100, 16, 11, 0, 0),
(14, 'juerge', 100, 19, 13, 0, 0),
(15, 'JORGIN DA ', 100, 15, 13, 0, 0),
(16, 'alla', 100, 18, 13, 0, 0),
(17, '', 100, 15, 10, 0, 0),
(18, 'as', 100, 16, 15, 0, 0),
(19, '123', 100, 19, 14, 0, 0),
(20, '', 100, 18, 14, 0, 0),
(21, '', 100, 15, 10, 0, 0),
(22, '', 100, 20, 11, 0, 0),
(23, 'asd', 100, 17, 14, 0, 0),
(24, '123', 100, 19, 10, 0, 0),
(25, 'sadasd', 100, 19, 15, 0, 0),
(26, 'adas', 100, 15, 15, 0, 0),
(27, 'asd', 100, 16, 12, 0, 0),
(28, 'asdas', 100, 18, 13, 0, 0),
(29, 'asda', 100, 16, 13, 0, 0),
(30, '', 100, 19, 15, 0, 0),
(31, '13', 100, 19, 12, 0, 0),
(32, '213', 100, 20, 12, 0, 0),
(33, 'adas', 100, 20, 13, 0, 0),
(34, '55', 100, 20, 10, 0, 0),
(35, 'sadasd', 100, 15, 12, 0, 0),
(36, '13', 100, 19, 11, 0, 0),
(37, '123', 100, 20, 10, 0, 0),
(38, '11', 100, 20, 13, 0, 0),
(39, '3123', 100, 17, 12, 0, 0),
(40, 'asd', 100, 15, 12, 0, 0),
(41, 'sad', 100, 15, 13, 0, 0),
(42, 'asd', 100, 16, 12, 0, 0),
(43, 'asd', 100, 16, 15, 0, 0),
(44, '', 100, 18, 14, 0, 0),
(45, 'aa', 100, 18, 15, 0, 0),
(46, 'asd', 100, 15, 14, 0, 0),
(47, 'asd', 100, 16, 12, 0, 0),
(48, 'aa', 100, 17, 15, 0, 0),
(49, '00', 100, 17, 12, 0, 0),
(50, '55', 100, 15, 11, 0, 0),
(51, 'asd', 100, 20, 14, 0, 0),
(52, 'asd', 100, 18, 14, 0, 0),
(53, 'sada', 100, 19, 21, 0, 0);

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
(3, 'fred', 100, 16, 12, 0, 0),
(4, 'linguiça', 100, 18, 14, 0, 0),
(5, 'del culo', 100, 20, 13, 0, 0),
(6, 'eloi', 100, 18, 12, 0, 0),
(7, 'asdas', 100, 20, 12, 0, 0),
(8, 'asda', 100, 17, 14, 0, 0),
(9, 'bryan', 100, 19, 12, 0, 0),
(10, 'del culo', 100, 17, 13, 0, 0),
(11, 'asd', 100, 20, 15, 0, 0),
(12, 'as', 100, 15, 15, 0, 0),
(13, 'da 1007', 100, 19, 10, 0, 0),
(14, 'de la mil e sete', 100, 19, 14, 0, 0),
(15, '1007', 100, 20, 10, 0, 0),
(16, 'alslas', 100, 19, 15, 0, 0),
(17, 'assa', 100, 20, 12, 0, 0),
(18, 'asda', 100, 16, 15, 0, 0),
(19, '123', 100, 20, 10, 0, 0),
(20, '', 100, 20, 15, 0, 0),
(21, '', 100, 18, 15, 0, 0),
(22, '', 100, 17, 10, 0, 0),
(23, 'asd', 100, 17, 15, 0, 0),
(24, '123', 100, 20, 13, 0, 0),
(25, 'asdasd', 100, 18, 12, 0, 0),
(26, 'adas', 100, 17, 11, 0, 0),
(27, 'asd', 100, 16, 15, 0, 0),
(28, 'asdasd', 100, 16, 13, 0, 0),
(29, 'asds', 100, 18, 15, 0, 0),
(30, '', 100, 18, 14, 0, 0),
(31, '22', 100, 17, 14, 0, 0),
(32, '123', 100, 17, 14, 0, 0),
(33, 'asds', 100, 19, 15, 0, 0),
(34, '585', 100, 16, 13, 0, 0),
(35, 'asdas', 100, 16, 10, 0, 0),
(36, '22', 100, 17, 11, 0, 0),
(37, '31', 100, 18, 14, 0, 0),
(38, '13', 100, 17, 11, 0, 0),
(39, '123', 100, 17, 11, 0, 0),
(40, 'asd', 100, 16, 11, 0, 0),
(41, 'asd', 100, 17, 10, 0, 0),
(42, 'asd', 100, 17, 11, 0, 0),
(43, 'asd', 100, 18, 13, 0, 0),
(44, '', 100, 16, 14, 0, 0),
(45, 'a ', 100, 16, 15, 0, 0),
(46, 'ad ', 100, 19, 12, 0, 0),
(47, 'asd', 100, 19, 13, 0, 0),
(48, 'aa', 100, 17, 12, 0, 0),
(49, '00', 100, 17, 11, 0, 0),
(50, '22', 100, 15, 13, 0, 0),
(51, 'asd', 100, 15, 15, 0, 0),
(52, 'asd', 100, 16, 10, 0, 0),
(53, 'adas', 100, 23, 11, 0, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_batalha`
--
ALTER TABLE `tb_batalha`
  ADD UNIQUE KEY `id_batalha` (`id_batalha`);

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
-- AUTO_INCREMENT de tabela `tb_batalha`
--
ALTER TABLE `tb_batalha`
  MODIFY `id_batalha` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_guerreiro`
--
ALTER TABLE `tb_guerreiro`
  MODIFY `id_guerreiro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
  MODIFY `id_mago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
