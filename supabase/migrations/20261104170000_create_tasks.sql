-- Her kullanıcının görevleri; RLS sayesinde yalnızca sahibi erişebilir.
create table public.tasks (
  id         uuid primary key default gen_random_uuid(),
  user_id    uuid not null default auth.uid() references auth.users (id) on delete cascade,
  text       text not null check (char_length(text) between 1 and 2000),
  done       boolean not null default false,
  position   double precision not null default 0,
  created_at timestamptz not null default now()
);

create index tasks_user_position_idx on public.tasks (user_id, position);

alter table public.tasks enable row level security;

revoke all on public.tasks from anon;
grant select, insert, update, delete on public.tasks to authenticated;

create policy "Görevler yalnızca sahibine açık"
  on public.tasks
  for all
  to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);
