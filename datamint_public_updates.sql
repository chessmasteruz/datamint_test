create table updates
(
    id serial
        constraint updates_pk
            primary key
);

alter table updates
    owner to postgres;

INSERT INTO public.updates (id) VALUES (2);
INSERT INTO public.updates (id) VALUES (3);
INSERT INTO public.updates (id) VALUES (4);
INSERT INTO public.updates (id) VALUES (5);
INSERT INTO public.updates (id) VALUES (6);
