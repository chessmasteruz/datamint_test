create table coins
(
    id     serial
        constraint coins_pk
            primary key,
    name   varchar not null,
    symbol varchar
);

alter table coins
    owner to postgres;

create unique index coins_name_uindex
    on coins (name);

INSERT INTO public.coins (id, name, symbol) VALUES (1, 'bitcoin', 'btc');
INSERT INTO public.coins (id, name, symbol) VALUES (2, 'project-galaxy', 'gal');
INSERT INTO public.coins (id, name, symbol) VALUES (3, 'ethereum', 'eth');
INSERT INTO public.coins (id, name, symbol) VALUES (4, 'binancecoin', 'bnb');
INSERT INTO public.coins (id, name, symbol) VALUES (5, 'pancakeswap-token', 'cake');
INSERT INTO public.coins (id, name, symbol) VALUES (6, 'matic-network', 'matic');
INSERT INTO public.coins (id, name, symbol) VALUES (7, 'polkastarter', 'pols');
INSERT INTO public.coins (id, name, symbol) VALUES (8, 'sushi', 'sushi');
INSERT INTO public.coins (id, name, symbol) VALUES (10, 'the-open-network', 'ton');
INSERT INTO public.coins (id, name, symbol) VALUES (11, 'froyo-games', 'froyo');
INSERT INTO public.coins (id, name, symbol) VALUES (9, 'usd', 'usd+');
