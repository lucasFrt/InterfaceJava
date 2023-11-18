-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/11/2023 às 17:45
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
-- Banco de dados: `javamarket`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_cadastro` int(11) NOT NULL,
  `Nome_usuario` varchar(120) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `usuario` varchar(120) DEFAULT NULL,
  `senha` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`id_cadastro`, `Nome_usuario`, `email`, `usuario`, `senha`) VALUES
(5, 'Lucas Miguel Frota', 'lucasfrota1@gmail.com', 'Lucas1', '1234'),
(6, 'Lucas Miguel Frota', 'lucasmigfrot58@gmail.com', 'LucasFrota', '1234'),
(7, 'Lucas Miguel', '391238912839123@asdasd', 'Lucas', '123'),
(8, 'Lucas MIguel Frota', 'lucasmgfrota@gmail.com', 'Lucas1', '123'),
(9, 'Lucas Miguel Frota', 'lucasmigf@gmail.com', 'LucasMg', '123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(120) DEFAULT NULL,
  `codigo` varchar(120) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `id_cadastro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome_produto`, `codigo`, `quantidade`, `id_cadastro`) VALUES
(10, 'asda', '123123123123', 123123, NULL),
(11, 'asda', '123123123123', 123123, NULL),
(12, 'asda', '123123123123', 123123, NULL),
(13, 'asda', '123123123123', 123123, NULL),
(14, 'asda', '123123123123', 123123, NULL),
(15, 'asda', '123123123123', 123123, NULL),
(16, 'asda', '123123123123', 123123, NULL),
(17, 'asda', '123123123123', 123123, NULL),
(18, 'asda', '123123123123', 123123, NULL),
(19, 'asda', '123123123123', 123123, NULL),
(20, 'asda', '123123123123', 123123, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_cadastro`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_usuario` (`id_cadastro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id_cadastro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`id_cadastro`) REFERENCES `cadastro` (`id_cadastro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
