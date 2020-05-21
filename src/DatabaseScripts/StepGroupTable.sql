-- Table: tempusipsum."StepGroup"

-- DROP TABLE tempusipsum."StepGroup";

CREATE TABLE tempusipsum."StepGroup"
(
    id bigint NOT NULL,
    title character(32)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "StepGroup id pk" PRIMARY KEY (id),
    CONSTRAINT "title unique" UNIQUE (title)
)

TABLESPACE pg_default;

ALTER TABLE tempusipsum."StepGroup"
    OWNER to postgres;