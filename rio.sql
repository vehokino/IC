-- Table: rio

-- DROP TABLE rio;

CREATE TABLE rio
(
  cod serial NOT NULL,
  nome character varying(40),
  cidade integer,
  dado_espacial geometry(MultiLineString,4326),
  CONSTRAINT rio_pkey PRIMARY KEY (cod),
  CONSTRAINT rio_cidade_fkey FOREIGN KEY (cidade)
      REFERENCES cidade (cod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE rio OWNER TO postgres;
