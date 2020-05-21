-- SCHEMA: tempusipsum

-- DROP SCHEMA tempusipsum ;

CREATE SCHEMA tempusipsum
    AUTHORIZATION postgres;

COMMENT ON SCHEMA tempusipsum
    IS 'standard public schema';

GRANT ALL ON SCHEMA tempusipsum TO PUBLIC;

GRANT ALL ON SCHEMA tempusipsum TO postgres;