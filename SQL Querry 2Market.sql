CREATE TABLE marketing_data_CLEAN (
	ID BIGSERIAL PRIMARY KEY,
	Age INTEGER,
	Education VARCHAR(20),
	Marital_Status VARCHAR(30),
	Income INTEGER,
	Kidhome INTEGER,
	Teenhome INTEGER,
	Dt_Customer DATE,
	Recency INTEGER,
	AmtLiquor INTEGER,
	AmtVegetables INTEGER,
	AmtNon_Vegetables INTEGER,
	AmtFish INTEGER,
	AmtChocolates INTEGER,
	AmtCommodities INTEGER,
	NumDeals INTEGER,
	NumWebBuy INTEGER,
	NumWalkinPur INTEGER,
	NumVisits INTEGER,
	Response INTEGER,
	Complain INTEGER,
	Country VARCHAR(10),
	Lead_conversions INTEGER);

SELECT *
FROM marketing_data_CLEAN;

CREATE TABLE ad_data (
	ID BIGSERIAL PRIMARY KEY,
	Bulkmail_ad INTEGER,
	Twiter_ad INTEGER,
	Instagram_ad INTEGER,
	Facebook_ad INTEGER,
	Brochure_ad INTEGER);
)

SELECT *
FROM ad_data;

SELECT "country", 
       SUM("amtliquor" + "amtvegetables" + "amtnon_vegetables" + "amtfish" + "amtchocolates" + "amtcommodities") AS "TtlAmt"
FROM public."marketing_data_clean"
GROUP BY "country";



SELECT "country", 
       SUM("amtliquor") AS "TtlLiquor", 
       SUM("amtvegetables") AS "TtlVeg", 
       SUM("amtnon_vegetables") AS "TtlNoNVeg", 
       SUM("amtfish") AS "TtlFish", 
       SUM("amtchocolates") AS "TtlChoc", 
       SUM("amtcommodities") AS "TtlCommodities"
FROM public."marketing_data_clean"
GROUP BY "country";

SELECT "marital_status", 
       SUM("amtliquor") AS "TtlLiquor", 
       SUM("amtvegetables") AS "TtlVeg", 
       SUM("amtnon_vegetables") AS "TtlNoNVeg", 
       SUM("amtfish") AS "TtlFish", 
       SUM("amtchocolates") AS "TtlChoc", 
       SUM("amtcommodities") AS "TtlCommodities"
FROM public."marketing_data_clean"
GROUP BY "marital_status";

SELECT "kidhome", 
       SUM("amtliquor") AS "TtlLiquor", 
       SUM("amtvegetables") AS "TtlVeg", 
       SUM("amtnon_vegetables") AS "TtlNoNVeg", 
       SUM("amtfish") AS "TtlFish", 
       SUM("amtchocolates") AS "TtlChoc", 
       SUM("amtcommodities") AS "TtlCommodities"
FROM public."marketing_data_clean"
GROUP BY "kidhome";


SELECT "teenhome", 
       SUM("amtliquor") AS "TtlLiquor", 
       SUM("amtvegetables") AS "TtlVeg", 
       SUM("amtnon_vegetables") AS "TtlNoNVeg", 
       SUM("amtfish") AS "TtlFish", 
       SUM("amtchocolates") AS "TtlChoc", 
       SUM("amtcommodities") AS "TtlCommodities"
FROM public."marketing_data_clean"
GROUP BY "teenhome";

