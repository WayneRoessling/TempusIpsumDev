-- Table: tempusipsum."Step"

-- DROP TABLE tempusipsum."Step";

CREATE TABLE tempusipsum."Step"
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    title character(32)[] COLLATE pg_catalog."default",
    content character(500)[] COLLATE pg_catalog."default",
    "stepGroup" bigint NOT NULL,
    CONSTRAINT "step id pk" PRIMARY KEY (id),
    CONSTRAINT "Step Group FK" FOREIGN KEY ("stepGroup")
        REFERENCES tempusipsum."StepGroup" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE tempusipsum."Step"
    OWNER to postgres;
-- Index: fki_Step Group FK

-- DROP INDEX tempusipsum."fki_Step Group FK";

CREATE INDEX "fki_Step Group FK"
    ON tempusipsum."Step" USING btree
    ("stepGroup" ASC NULLS LAST)
    TABLESPACE pg_default;