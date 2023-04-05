--
-- Class Category as table category
--

CREATE TABLE "category" (
  "id" serial,
  "name" text NOT NULL,
  "menu" json NOT NULL
);

ALTER TABLE ONLY "category"
  ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Class Restaurant as table restaurant
--

CREATE TABLE "restaurant" (
  "id" serial,
  "name" text NOT NULL,
  "created_at" timestamp without time zone NOT NULL,
  "enable_order" boolean NOT NULL,
  "pre_ordering" boolean NOT NULL,
  "welcome_message" text NOT NULL,
  "payement_by_card" boolean NOT NULL,
  "payement_by_orange" boolean NOT NULL,
  "payement_by_moov" boolean NOT NULL,
  "enable_billing" boolean NOT NULL,
  "activate_banner" boolean NOT NULL,
  "banner_url" text NOT NULL
);

ALTER TABLE ONLY "restaurant"
  ADD CONSTRAINT restaurant_pkey PRIMARY KEY (id);


--
-- Class Menu as table menu
--

CREATE TABLE "menu" (
  "id" serial,
  "name" text NOT NULL,
  "notes" text NOT NULL,
  "restaurant_id" integer NOT NULL
);

ALTER TABLE ONLY "menu"
  ADD CONSTRAINT menu_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "menu"
  ADD CONSTRAINT menu_fk_0
    FOREIGN KEY("restaurant_id")
      REFERENCES restaurant(id)
        ON DELETE CASCADE;

