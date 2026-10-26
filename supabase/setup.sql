-- 神崎サンガサウナ 管理システム：データベースの準備（Supabase の SQL Editor で1回だけ実行）
create table if not exists public.sanga_records (
  kind text not null,
  id text not null,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  updated_by text,
  primary key (kind, id)
);
alter table public.sanga_records enable row level security;
drop policy if exists "store read" on public.sanga_records;
drop policy if exists "store insert" on public.sanga_records;
drop policy if exists "store update" on public.sanga_records;
drop policy if exists "store delete" on public.sanga_records;
create policy "store read"   on public.sanga_records for select to authenticated using (true);
create policy "store insert" on public.sanga_records for insert to authenticated with check (true);
create policy "store update" on public.sanga_records for update to authenticated using (true) with check (true);
create policy "store delete" on public.sanga_records for delete to authenticated using (true);
alter table public.sanga_records replica identity full;
do $$ begin
  alter publication supabase_realtime add table public.sanga_records;
exception when duplicate_object then null; end $$;
