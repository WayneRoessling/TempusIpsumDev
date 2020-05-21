-- FUNCTION: tempusipsum."On Update Course"()

-- DROP FUNCTION tempusipsum."On Update Course"();

CREATE FUNCTION tempusipsum."On Update Course"()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$BEGIN
	UPDATE Category c set c.updated = now();
END;$BODY$;

ALTER FUNCTION tempusipsum."On Update Course"()
    OWNER TO postgres;
