-- Table: paciente

-- DROP TABLE paciente;

CREATE TABLE paciente
(
  reg_hc character(8) NOT NULL,
  rua character varying(40),
  numero integer,
  cidade_leish integer,
  cidade_resid integer,
  idade integer,
  sexo character(1),
  tipo_moradia character(1),
  forma_clinica character varying(10),
  reg_afet character varying(50),
  prof character varying(10),
  ano_diagnostico integer,
  dado_espacial geometry(Point,32632),
  CONSTRAINT paciente_pkey PRIMARY KEY (reg_hc),
  CONSTRAINT paciente_cidade_leish_fkey FOREIGN KEY (cidade_leish)
      REFERENCES cidade (cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT paciente_cidade_resid_fkey FOREIGN KEY (cidade_resid)
      REFERENCES cidade (cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE paciente OWNER TO postgres;
