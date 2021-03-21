/*
 * Reorder the columns in the following SQL table so that the resulting table minimizes disk usage.
 * You do not need to compute the total disk usage per row.
 */

-- REORDERED TABLE --
CREATE TABLE project (
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    author_id BIGINT NOT NULL,
    id SERIAL PRIMARY KEY,
    target_id INTEGER NOT NULL,
    project_id INTEGER NOT NULL UNIQUE,
    action SMALLINT NOT NULL,
    target_type VARCHAR(2) NOT NULL,
    title VARCHAR(256),
    data TEXT
);


/* ORIGINAL PROMPT 
-- select typname,typalign,typlen from pg_type where typname ilike 'int%';
CREATE TABLE project(
    -- int4, 4  
    id SERIAL PRIMARY KEY,
    -- varchar, -1 
    target_type VARCHAR(2) NOT NULL,
    -- int4, 4 
    target_id INTEGER NOT NULL,
    -- varchar, -1 
    title VARCHAR(256),
    -- text, -1 
    data TEXT,
    -- int4, 4 
    project_id INTEGER NOT NULL UNIQUE,
    -- timestamptz, 8 
    created_at TIMESTAMPTZ,
    -- timestamptz, 8
    updated_at TIMESTAMPTZ,
    -- int2, 2 
    action SMALLINT NOT NULL,
    -- int8, 8 
    author_id BIGINT NOT NULL
);
*/

