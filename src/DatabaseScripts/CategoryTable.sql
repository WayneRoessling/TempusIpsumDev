-- Table: tempusipsum."Category"

-- DROP TABLE tempusipsum."Category";

CREATE TABLE tempusipsum."Category"
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    value character(32)[] COLLATE pg_catalog."default",
    label character(32)[] COLLATE pg_catalog."default",
    color character(32)[] COLLATE pg_catalog."default",
    CONSTRAINT "category id pk" PRIMARY KEY (id),
    CONSTRAINT "Unique Category Label" UNIQUE (label, value)
)

TABLESPACE pg_default;

ALTER TABLE tempusipsum."Category"
    OWNER to postgres;

COMMENT ON COLUMN tempusipsum."Category".id
    IS 'unique identifier';

COMMENT ON COLUMN tempusipsum."Category".value
    IS 'Category value';

COMMENT ON COLUMN tempusipsum."Category".label
    IS 'Display Value';

COMMENT ON COLUMN tempusipsum."Category".color
    IS 'Category Color';