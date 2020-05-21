-- Table: tempusipsum."Course"

-- DROP TABLE tempusipsum."Course";

CREATE TABLE tempusipsum."Course"
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    title character(32)[] COLLATE pg_catalog."default",
    slug character(32)[] COLLATE pg_catalog."default",
    description character(240)[] COLLATE pg_catalog."default",
    category bigint,
    length bigint,
    "totalSteps" bigint,
    "activeSteps" bigint,
    updated date,
    CONSTRAINT "course id pk" PRIMARY KEY (id),
    CONSTRAINT "Course Category id fk" FOREIGN KEY (category)
        REFERENCES tempusipsum."Category" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE tempusipsum."Course"
    OWNER to postgres;

COMMENT ON COLUMN tempusipsum."Course".category
    IS 'foreign key to Category.id';
-- Index: fki_Foriegn Category

-- DROP INDEX tempusipsum."fki_Foriegn Category";

CREATE INDEX "fki_Foriegn Category"
    ON tempusipsum."Course" USING btree
    (category ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: on update

-- DROP TRIGGER "on update" ON tempusipsum."Course";

CREATE TRIGGER "on update"
    AFTER INSERT OR UPDATE OF title, slug, description, category, length, "totalSteps", "activeSteps"
    ON tempusipsum."Course"
    FOR EACH ROW
    EXECUTE PROCEDURE tempusipsum."On Update Course"();