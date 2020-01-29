-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jan-2020 às 14:01
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `psymed`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_start` datetime NOT NULL,
  `appointment_end` datetime NOT NULL,
  `appointment_patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `appointment_status` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'free',
  `appointment_patient_session` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_start`, `appointment_end`, `appointment_patient_name`, `appointment_status`, `appointment_patient_session`, `doctor_id`) VALUES
(1, '2020-01-27 09:00:00', '2020-01-27 10:00:00', 'Henrique', 'confirmed', NULL, 2),
(2, '2020-01-27 10:00:00', '2020-01-27 11:00:00', 'Alisson', 'confirmed', 'sdo18t7hh1e99rk753m4ebdjc8', 2),
(17, '2020-01-27 09:00:00', '2020-01-27 10:00:00', 'marcio', 'confirmed', 'sdo18t7hh1e99rk753m4ebdjc8', 1),
(18, '2020-01-27 10:00:00', '2020-01-27 11:00:00', NULL, 'free', NULL, 1),
(19, '2020-01-27 11:00:00', '2020-01-27 12:00:00', NULL, 'free', NULL, 1),
(20, '2020-01-27 12:00:00', '2020-01-27 13:00:00', NULL, 'free', NULL, 1),
(21, '2020-01-27 14:00:00', '2020-01-27 15:00:00', NULL, 'free', NULL, 1),
(22, '2020-01-27 15:00:00', '2020-01-27 16:00:00', NULL, 'free', NULL, 1),
(23, '2020-01-27 16:00:00', '2020-01-27 17:00:00', NULL, 'free', NULL, 1),
(24, '2020-01-27 17:00:00', '2020-01-27 18:00:00', NULL, 'free', NULL, 1),
(25, '2020-01-27 11:00:00', '2020-01-27 12:00:00', NULL, 'free', NULL, 2),
(26, '2020-01-27 12:00:00', '2020-01-27 13:00:00', NULL, 'free', NULL, 2),
(27, '2020-01-27 14:00:00', '2020-01-27 15:00:00', NULL, 'free', NULL, 2),
(28, '2020-01-27 15:00:00', '2020-01-27 16:00:00', NULL, 'free', NULL, 2),
(29, '2020-01-27 16:00:00', '2020-01-27 17:00:00', NULL, 'free', NULL, 2),
(30, '2020-01-27 17:00:00', '2020-01-27 18:00:00', NULL, 'free', NULL, 2),
(31, '2020-01-01 09:00:00', '2020-01-01 10:00:00', NULL, 'free', NULL, 2),
(32, '2020-01-27 09:00:00', '2020-01-27 10:00:00', NULL, 'free', NULL, 5),
(33, '2020-01-27 10:00:00', '2020-01-27 11:00:00', NULL, 'free', NULL, 5),
(34, '2020-01-27 11:00:00', '2020-01-27 12:00:00', NULL, 'free', NULL, 5),
(35, '2020-01-27 12:00:00', '2020-01-27 13:00:00', NULL, 'free', NULL, 5),
(36, '2020-01-27 14:00:00', '2020-01-27 15:00:00', NULL, 'free', NULL, 5),
(37, '2020-01-27 15:00:00', '2020-01-27 16:00:00', NULL, 'free', NULL, 5),
(38, '2020-01-27 16:00:00', '2020-01-27 17:00:00', NULL, 'free', NULL, 5),
(39, '2020-01-27 17:00:00', '2020-01-27 18:00:00', NULL, 'free', NULL, 5),
(40, '2020-01-29 09:00:00', '2020-01-29 10:00:00', NULL, 'free', NULL, 5),
(41, '2020-01-29 10:00:00', '2020-01-29 11:00:00', NULL, 'free', NULL, 5),
(42, '2020-01-29 11:00:00', '2020-01-29 12:00:00', NULL, 'free', NULL, 5),
(43, '2020-01-29 12:00:00', '2020-01-29 13:00:00', NULL, 'free', NULL, 5),
(44, '2020-01-29 14:00:00', '2020-01-29 15:00:00', NULL, 'free', NULL, 5),
(45, '2020-01-29 15:00:00', '2020-01-29 16:00:00', NULL, 'free', NULL, 5),
(46, '2020-01-29 16:00:00', '2020-01-29 17:00:00', NULL, 'free', NULL, 5),
(47, '2020-01-29 17:00:00', '2020-01-29 18:00:00', NULL, 'free', NULL, 5),
(48, '2020-01-29 09:00:00', '2020-01-29 10:00:00', NULL, 'free', NULL, 2),
(49, '2020-01-29 10:00:00', '2020-01-29 11:00:00', NULL, 'free', NULL, 2),
(50, '2020-01-29 11:00:00', '2020-01-29 12:00:00', NULL, 'free', NULL, 2),
(51, '2020-01-29 12:00:00', '2020-01-29 13:00:00', NULL, 'free', NULL, 2),
(52, '2020-01-29 14:00:00', '2020-01-29 15:00:00', NULL, 'free', NULL, 2),
(53, '2020-01-29 15:00:00', '2020-01-29 16:00:00', NULL, 'free', NULL, 2),
(54, '2020-01-29 16:00:00', '2020-01-29 17:00:00', NULL, 'free', NULL, 2),
(55, '2020-01-29 17:00:00', '2020-01-29 18:00:00', NULL, 'free', NULL, 2),
(56, '2020-01-29 09:00:00', '2020-01-29 10:00:00', NULL, 'free', NULL, 1),
(57, '2020-01-29 10:00:00', '2020-01-29 11:00:00', NULL, 'free', NULL, 1),
(58, '2020-01-29 11:00:00', '2020-01-29 12:00:00', NULL, 'free', NULL, 1),
(59, '2020-01-29 12:00:00', '2020-01-29 13:00:00', NULL, 'free', NULL, 1),
(60, '2020-01-29 14:00:00', '2020-01-29 15:00:00', NULL, 'free', NULL, 1),
(61, '2020-01-29 15:00:00', '2020-01-29 16:00:00', NULL, 'free', NULL, 1),
(62, '2020-01-29 16:00:00', '2020-01-29 17:00:00', NULL, 'free', NULL, 1),
(63, '2020-01-29 17:00:00', '2020-01-29 18:00:00', NULL, 'free', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nome`, `email`, `senha`, `endereco`, `telefone`, `cpf`) VALUES
(1, 'Guilherme', 'g@g.com', '123', 'rua abc', '213123121', '170000'),
(2, 'Guilherme', 'g@g.com', '123', 'rua abc', '213123121', '170000'),
(3, 'matheus', 'matheusmoura@gmail.com', 'Q1w2e3r4t5', 'rua x', '40028922', '123456789'),
(4, 'ALISSON JUNIOR OLIVEIRA FERREIRA', 'alisson.ferreira012@hotmail.com', 'a123', 'rua x', '2134648579', '151.782.487-75');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadlugar`
--

CREATE TABLE `cadlugar` (
  `id` int(11) NOT NULL,
  `namelugar` varchar(100) NOT NULL,
  `infolugar` varchar(255) NOT NULL,
  `addresslugar` varchar(100) NOT NULL,
  `tellugar` varchar(100) NOT NULL,
  `emaillug` varchar(100) NOT NULL,
  `coordenadas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadlugar`
--

INSERT INTO `cadlugar` (`id`, `namelugar`, `infolugar`, `addresslugar`, `tellugar`, `emaillug`, `coordenadas`) VALUES
(2, 'Serviço de Psicologia Aplicada - Santa Úrsula', 'É oferecido atendimento em psicoterapia individual para crianças, adolescentes, adultos, idosos e casal. Os interessados devem dirigir-se ao Prédio I, 4º andar para preenchimento de ficha de inscrição. O horário de funcionamento é de segunda à sexta-feira', 'Rua Fernando Ferrari, 75 - Botafogo\r\n(próximo ao Palácio Guanabara)', '(21) 3400-4351 - Ramal 210', '', '-22.941139,-43.182963'),
(3, 'Serviço de Psicologia Aplicada da Universidade Estácio de Sá – Campus Norteshopping ', '', 'Av. Dom Helder Câmara, 5080 – Norte Shopping\r\n\r\n', '(21) 2583 7116', '', '-22.887145, -43.283078'),
(4, 'Serviço de Psicologia Aplicada (SPA) da Universidade Estácio de Sá – Campus João Uchôa', 'O serviço é aberto à comunidade, através de psicoterapia individual e em grupo para diferentes faixas de idade, como também atendimento à família. Também há pronto atendimento através do Serviço de Plantão Psicológico.\r\n\r\nGratuito.', 'Rua do Bispo, 83 – Rio Comprido', '(21) 4003-6767 / (21) 2583 7116', '', '-22.924685, -43.211797'),
(5, 'Instituto de Psiquiatria da UFRJ', 'O ambulatório abre 6 vagas para avaliação em saúde mental/psiquiatria por semana, sendo distribuídas em 2 na segunda-feira, 2 na terça-feira e 2 na quarta-feira.\r\n\r\nOs interessados devem chegar toda segunda-feira (exceto feriados) às 08h e procurar a rece', 'Av. Venceslau Brás, 71 – fundos – Botafogo', '(21) 3938 5535', 'https://www.ipub.ufrj.br/', '-22.953858, -43.175268'),
(6, 'Serviço de Psicologia Aplicada – UERJ', 'As inscrições acontecem todos os meses. Os interessados devem comparecer à secretaria das 8h às 20h30, preencher a ficha e aguardar. O atendimento é realizado por estagiários.\r\n\r\nO valor a ser cobrado varia de acordo com a renda familiar da pessoa. Até 01', 'Rua São Francisco Xavier, 524 – 10° andar – Maracanã', '(21) 2334-0033 / (21)2334-0688', '', '-22.911177, -43.236132'),
(7, 'Serviço de Psicologia Aplicada – Universidade Veiga de Almeida  ', 'Os interessados devem comparecer pessoalmente ao local, preencher uma ficha e aguardar na fila de espera.\r\n\r\nA consulta custa de R$ 2 a R$ 25.\r\n\r\nOs interessados devem comparecer pessoalmente ao local, preencher uma ficha e aguardar na fila de espera.\r\n\r\n', 'Rua Ibituruna, 108 – Vila Universitária – casa 4 – Maracanã', '(21) 2574-8898', '', '-22.992554, -43.367681'),
(8, 'Sociedade Brasileira de Psicanálise do Rio de Janeiro ', 'Os atendimentos são individuais e realizados por profissionais da SBPRJ em seus consultórios após inscrição, pagamento de taxa e entrevista de triagem (adultos, crianças a partir de 3 anos e adolescentes). As inscrições para o atendimento na Clínica Socia', 'Rua David Campista, 80 – Humaitá', '(21) 2537-1333 ou (21) 2537-1115', 'https://www.sbprj.org.br/', '-22.954053, -43.198020'),
(9, 'Serviço de Psicologia Aplicada – Universidade Veiga de Almeida  ', 'Os interessados devem comparecer pessoalmente ao local, preencher uma ficha e aguardar na fila de espera.\r\n\r\nA consulta custa de R$ 2 a R$ 25.\r\n\r\nOs interessados devem comparecer pessoalmente ao local, preencher uma ficha e aguardar na fila de espera.\r\n\r\n', 'Rua Ibituruna, 108 – Vila Universitária – casa 4 – Maracanã', '(21) 2574-8898', '', '-22.992554, -43.367681'),
(10, 'Sociedade Brasileira de Psicanálise do Rio de Janeiro ', 'Os atendimentos são individuais e realizados por profissionais da SBPRJ em seus consultórios após inscrição, pagamento de taxa e entrevista de triagem (adultos, crianças a partir de 3 anos e adolescentes). As inscrições para o atendimento na Clínica Socia', 'Rua David Campista, 80 – Humaitá', '(21) 2537-1333 ou (21) 2537-1115', 'https://www.sbprj.org.br/', '-22.954053, -43.198020');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadprof`
--

CREATE TABLE `cadprof` (
  `id` int(11) NOT NULL,
  `nomeprof` varchar(100) NOT NULL,
  `emailprof` varchar(100) NOT NULL,
  `crp` varchar(100) NOT NULL,
  `telefoneprof` varchar(100) NOT NULL,
  `lugar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadprof`
--

INSERT INTO `cadprof` (`id`, `nomeprof`, `emailprof`, `crp`, `telefoneprof`, `lugar`) VALUES
(1, 'matheus', 'm@gmail.com', '11111111', '27573836', 'x');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `email`, `mensagem`) VALUES
(1, 'matheus', 'matheusmoura@gmail.com', 'teste do teste do teste'),
(2, 'ALISSON JUNIOR OLIVEIRA FERREIRA', 'alisson.ferreira012@hotmail.com', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `id_cadlugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `id_cadlugar`) VALUES
(1, 'Dr. Matheus', 2),
(2, 'Dr. Carlos', 9),
(5, 'clinica sao luiz', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario_prof`
--

CREATE TABLE `horario_prof` (
  `id_horario` int(11) NOT NULL,
  `data_horario` datetime DEFAULT NULL,
  `id_prof` int(11) DEFAULT NULL,
  `disponivel` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `horario_prof`
--

INSERT INTO `horario_prof` (`id_horario`, `data_horario`, `id_prof`, `disponivel`) VALUES
(1, '2020-01-24 12:00:00', 1, 'Y');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `hora_solicacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_horario` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `hora_solicacao`, `id_horario`, `id_usuario`) VALUES
(1, '2020-01-22 14:28:59', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `restrito`
--

CREATE TABLE `restrito` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `restrito`
--

INSERT INTO `restrito` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'matheus', 'm1@gmail.com', 'm123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cadlugar`
--
ALTER TABLE `cadlugar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cadprof`
--
ALTER TABLE `cadprof`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `id_cadlugar` (`id_cadlugar`);

--
-- Índices para tabela `horario_prof`
--
ALTER TABLE `horario_prof`
  ADD PRIMARY KEY (`id_horario`),
  ADD KEY `id_prof` (`id_prof`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_horario` (`id_horario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `restrito`
--
ALTER TABLE `restrito`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cadlugar`
--
ALTER TABLE `cadlugar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cadprof`
--
ALTER TABLE `cadprof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `horario_prof`
--
ALTER TABLE `horario_prof`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `restrito`
--
ALTER TABLE `restrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`id_cadlugar`) REFERENCES `cadlugar` (`id`);

--
-- Limitadores para a tabela `horario_prof`
--
ALTER TABLE `horario_prof`
  ADD CONSTRAINT `horario_prof_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `cadprof` (`id`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_horario`) REFERENCES `horario_prof` (`id_horario`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
