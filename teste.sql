
    /*
-- SCRIPT PARA CRIAÇÃO DO BANCO DE DADOS CLINICA_MEDICA
-- Dialeto: MySQL (comentários para PostgreSQL)
-- Data: 12 de Setembro de 2025
*/

-- Tabela Clinica: Armazena os dados das clínicas.
CREATE TABLE Clinica (
    CNPJ VARCHAR(14) PRIMARY KEY,
    Razao VARCHAR(255) NOT NULL
);

-- Tabela Medico: Armazena os dados dos médicos.
CREATE TABLE Medico (
    CRM VARCHAR(15) PRIMARY KEY,
    Nome_Medico VARCHAR(255) NOT NULL,
    Especialidade VARCHAR(100) NOT NULL
);

-- Tabela Paciente: Armazena os dados dos pacientes.
-- Cod_Paciente será gerado automaticamente pelo banco de dados.
CREATE TABLE Paciente (
    Cod_Paciente INTEGER PRIMARY KEY AUTO_INCREMENT, -- No PostgreSQL, usar: SERIAL PRIMARY KEY
    Nome VARCHAR(255) NOT NULL,
    Data_Nasc DATE NOT NULL
);

-- Tabela Exame: Armazena os tipos e resultados de exames.
-- Cod_Exame será gerado automaticamente.
CREATE TABLE Exame (
    Cod_Exame INTEGER PRIMARY KEY AUTO_INCREMENT, -- No PostgreSQL, usar: SERIAL PRIMARY KEY
    Tipo VARCHAR(100) NOT NULL,
    Resultado TEXT
);

-- Tabela Consulta_Atendimento: Tabela central que registra o evento da consulta/atendimento.
-- Cod_Atendimento será gerado automaticamente.
CREATE TABLE Consulta_Atendimento (
    Cod_Atendimento INTEGER PRIMARY KEY AUTO_INCREMENT, -- No PostgreSQL, usar: SERIAL PRIMARY KEY
    Data DATE NOT NULL,
    Horario TIME NOT NULL,
    Diagnostico TEXT,
    Prescricao TEXT,
    fk_Clinica_CNPJ VARCHAR(14) NOT NULL,
    
    FOREIGN KEY (fk_Clinica_CNPJ) REFERENCES Clinica(CNPJ) ON DELETE RESTRICT
);

-- Tabela Clinica_Medico: Tabela de junção para relacionamento N:N entre Clínica e Médico.
CREATE TABLE Clinica_Medico (
    fk_Clinica_CNPJ VARCHAR(14),
    fk_Medico_CRM VARCHAR(15),
    
    PRIMARY KEY (fk_Clinica_CNPJ, fk_Medico_CRM),
    FOREIGN KEY (fk_Clinica_CNPJ) REFERENCES Clinica(CNPJ) ON DELETE CASCADE,
    FOREIGN KEY (fk_Medico_CRM) REFERENCES Medico(CRM) ON DELETE CASCADE
);

-- Tabela Clinica_Paciente: Tabela de junção para relacionamento N:N entre Clínica e Paciente.
-- Permite que um paciente seja registrado em mais de uma clínica.
CREATE TABLE Clinica_Paciente (
    fk_Clinica_CNPJ VARCHAR(14),
    fk_Paciente_Cod_Paciente INTEGER,

    PRIMARY KEY (fk_Clinica_CNPJ, fk_Paciente_Cod_Paciente),
    FOREIGN KEY (fk_Clinica_CNPJ) REFERENCES Clinica(CNPJ) ON DELETE CASCADE,
    FOREIGN KEY (fk_Paciente_Cod_Paciente) REFERENCES Paciente(Cod_Paciente) ON DELETE CASCADE
);


-- Tabela Paciente_Consulta: Tabela de junção para relacionamento N:N entre Paciente e Consulta.
CREATE TABLE Paciente_Consulta (
    fk_Paciente_Cod_Paciente INTEGER,
    fk_Cod_Atendimento INTEGER,
    
    PRIMARY KEY (fk_Paciente_Cod_Paciente, fk_Cod_Atendimento),
    FOREIGN KEY (fk_Paciente_Cod_Paciente) REFERENCES Paciente(Cod_Paciente) ON DELETE CASCADE,
    FOREIGN KEY (fk_Cod_Atendimento) REFERENCES Consulta_Atendimento(Cod_Atendimento) ON DELETE CASCADE
);

-- Tabela Medico_Consulta: Tabela de junção para relacionamento N:N entre Médico e Consulta.
CREATE TABLE Medico_Consulta (
    fk_Medico_CRM VARCHAR(15),
    fk_Cod_Atendimento INTEGER,
    
    PRIMARY KEY (fk_Medico_CRM, fk_Cod_Atendimento),
    FOREIGN KEY (fk_Medico_CRM) REFERENCES Medico(CRM) ON DELETE RESTRICT,
    FOREIGN KEY (fk_Cod_Atendimento) REFERENCES Consulta_Atendimento(Cod_Atendimento) ON DELETE CASCADE
);

-- Tabela Consulta_Exame: Tabela de junção para relacionamento N:N entre Consulta e Exame.
CREATE TABLE Consulta_Exame (
    fk_Cod_Atendimento INTEGER,
    fk_Exame_Cod_Exame INTEGER,
    
    PRIMARY KEY (fk_Cod_Atendimento, fk_Exame_Cod_Exame),
    FOREIGN KEY (fk_Cod_Atendimento) REFERENCES Consulta_Atendimento(Cod_Atendimento) ON DELETE CASCADE,
    FOREIGN KEY (fk_Exame_Cod_Exame) REFERENCES Exame(Cod_Exame) ON DELETE RESTRICT
);
</body>
</html>