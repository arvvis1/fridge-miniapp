create table if not exists public.fridge_inventory (
 telegram_user_id bigint primary key,
 items jsonb not null default '[]'::jsonb,
 updated_at timestamptz not null default now()
);
alter table public.fridge_inventory enable row level security;
-- Do not create client policies. Access is server-side only.

