-- Copyright (c) 2016-2018  Timescale, Inc. All Rights Reserved.
--
-- This file is licensed under the Apache License,
-- see LICENSE-APACHE at the top level directory.

-- Secondary devices table to test foreign keys in "two_Partitions"
CREATE TABLE devices (
    id TEXT PRIMARY KEY,
    floor INTEGER
);

INSERT INTO devices(id,floor) VALUES
('dev1', 1),
('dev2', 2),
('dev3', 3);

-- Setup "two_Partitions" to use foreign key constraints
ALTER TABLE  "two_Partitions" ADD COLUMN device_id_2 TEXT NOT NULL;

ALTER TABLE "two_Partitions" ADD CONSTRAINT two_Partitions_device_id_2_fkey
FOREIGN KEY (device_id_2) REFERENCES devices(id);
