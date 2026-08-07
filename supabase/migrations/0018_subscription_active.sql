-- Пауза доступа клиента при неоплаченной подписке.
-- subscription_active = false ⇒ гостевая страница/меню показывает
-- заглушку вместо контента, пока владелец кабинета halo не включит обратно.

alter table public.venues
  add column if not exists subscription_active boolean not null default true;

alter table public.venues
  add column if not exists subscription_note text;
