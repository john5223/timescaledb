/*
 * Copyright (c) 2018  Timescale, Inc. All Rights Reserved.
 *
 * This file is licensed under the Timescale License,
 * see LICENSE-TIMESCALE at the top of the tsl directory.
 */

#ifndef TIMESCALEDB_BGW_POLICY_DROP_CHUNKS_API_H
#define TIMESCALEDB_BGW_POLICY_DROP_CHUNKS_API_H

/* User-facing API functions */
extern Datum drop_chunks_add_policy(PG_FUNCTION_ARGS);
extern Datum drop_chunks_remove_policy(PG_FUNCTION_ARGS);
#endif							/* TIMESCALEDB_BGW_POLICY_DROP_CHUNKS_API_H */