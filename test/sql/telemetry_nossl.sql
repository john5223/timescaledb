\c single :ROLE_SUPERUSER
CREATE OR REPLACE FUNCTION _timescaledb_internal.test_telemetry() RETURNS VOID
    AS :MODULE_PATHNAME, 'test_telemetry' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;
\c single :ROLE_DEFAULT_PERM_USER
SELECT _timescaledb_internal.test_telemetry();