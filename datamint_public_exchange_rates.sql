create table exchange_rates
(
    id        integer   default nextval('rate_id_seq'::regclass) not null
        constraint rate_pk
            primary key,
    coin_id   integer                                            not null
        constraint rate_coins__fk
            references coins
            on update cascade on delete cascade,
    usd       double precision                                   not null,
    dttm      timestamp default CURRENT_TIMESTAMP                not null,
    update_id integer                                            not null
        constraint exchange_rates_updates__fk
            references updates
);

alter table exchange_rates
    owner to postgres;

create index exchange_rates_dttm_index
    on exchange_rates (dttm);

create index exchange_rates_update_id_index
    on exchange_rates (update_id);

INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (218, 1, 19145.5, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (219, 2, 2.73, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (220, 3, 1027.3, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (221, 4, 210.95, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (222, 5, 2.93, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (223, 6, 0.444397, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (224, 7, 0.469945, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (225, 8, 0.971449, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (226, 10, 1.071, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (227, 11, 0.02288967, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (228, 9, 1.001, '2022-06-30 20:07:18.499772', 2);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (229, 1, 19190.14, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (230, 2, 2.74, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (231, 3, 1028.87, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (232, 4, 211.86, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (233, 5, 2.94, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (234, 6, 0.444955, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (235, 7, 0.470515, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (236, 8, 0.97159, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (237, 10, 1.078, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (238, 11, 0.02292352, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (239, 9, 1.002, '2022-06-30 20:12:22.512372', 3);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (240, 1, 19176.26, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (241, 2, 2.73, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (242, 3, 1028.59, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (243, 4, 211.92, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (244, 5, 2.94, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (245, 6, 0.445293, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (246, 7, 0.470662, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (247, 8, 0.971529, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (248, 10, 1.079, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (249, 11, 0.02291254, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (250, 9, 1.003, '2022-06-30 20:17:26.090145', 4);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (251, 1, 19170.55, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (252, 2, 2.72, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (253, 3, 1027.71, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (254, 4, 211.61, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (255, 5, 2.94, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (256, 6, 0.444092, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (257, 7, 0.470496, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (258, 8, 0.968859, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (259, 10, 1.081, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (260, 11, 0.0229119, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (261, 9, 1.002, '2022-06-30 20:22:31.635868', 5);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (262, 1, 19176.04, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (263, 2, 2.72, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (264, 3, 1027.92, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (265, 4, 211.42, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (266, 5, 2.94, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (267, 6, 0.444307, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (268, 7, 0.471075, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (269, 8, 0.970441, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (270, 10, 1.08, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (271, 11, 0.02292017, '2022-06-30 20:25:16.889008', 6);
INSERT INTO public.exchange_rates (id, coin_id, usd, dttm, update_id) VALUES (272, 9, 1.002, '2022-06-30 20:25:16.889008', 6);
