-- Table: estado

-- DROP TABLE estado;

CREATE TABLE estado
(
  cod serial NOT NULL,
  sigla character(2),
  nome character varying(30),
  dado_espacial geometry(Polygon,4326),
  CONSTRAINT estado_pkey PRIMARY KEY (cod)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE estado OWNER TO postgres;
