-- CMS V6 Final Database
create table if not exists profiles(
id uuid primary key,
username text,
role text default 'user',
level integer default 1,
experience integer default 0
);

create table if not exists contents(
id uuid primary key default gen_random_uuid(),
title text,
description text,
type text,
tags text[],
status text default 'pending',
views integer default 0
);

create table if not exists comments(
id uuid primary key default gen_random_uuid(),
content_id uuid,
user_id uuid,
content text
);
