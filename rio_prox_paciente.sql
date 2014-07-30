-- Table: rio_prox_paciente

-- DROP TABLE rio_prox_paciente;

CREATE TABLE rio_prox_paciente
(
  cod_rio integer NOT NULL,
  reg_hc_paciente character(8) NOT NULL,
  CONSTRAINT rio_prox_paciente_pkey PRIMARY KEY (cod_rio, reg_hc_paciente),
  CONSTRAINT rio_prox_paciente_cod_rio_fkey FOREIGN KEY (cod_rio)
      REFERENCES rio (cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT rio_prox_paciente_reg_hc_paciente_fkey FOREIGN KEY (reg_hc_paciente)
      REFERENCES paciente (reg_hc) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE rio_prox_paciente OWNER TO postgres;
