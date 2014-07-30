-- Table: cidade

-- DROP TABLE cidade;

CREATE TABLE cidade
(
  cod serial NOT NULL,
  nome character varying(40),
  cod_estado integer,
  dado_espacial geometry(Polygon,4326),
  CONSTRAINT cidade_pkey PRIMARY KEY (cod),
  CONSTRAINT cidade_cod_estado_fkey FOREIGN KEY (cod_estado)
      REFERENCES estado (cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cidade OWNER TO postgres;
