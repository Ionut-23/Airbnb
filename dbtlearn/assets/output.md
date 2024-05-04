```mermaid


---

title: Sample ERD

---
erDiagram
"MODEL.DBTLEARN.DIM_HOSTS_CLEANSED" {
number host_id
text host_name
text is_superhost
timestamp_ntz created_at
timestamp_ntz updated_at
}
"MODEL.DBTLEARN.DIM_LISTINGS_CLEANSED" {
number listing_id
text listing_name
text room_type
number minimum_nights
number host_id
number price
timestamp_ntz created_at
timestamp_ntz updated_at
}
"MODEL.DBTLEARN.DIM_LISTINGS_W_HOSTS" {
number listing_id
text listing_name
text room_type
number minimum_nights
number price
number host_id
text host_name
text host_is_superhost
timestamp_ntz created_at
timestamp_ntz updated_at
}
"MODEL.DBTLEARN.FCT_REVIEWS" {
text review_id
number listing_id
timestamp_ntz review_date
text reviewer_name
text review_text
text review_sentiment
}
"MODEL.DBTLEARN.MART_FULLMOON_REVIEWS" {
text review_id
number listing_id
timestamp_ntz review_date
text reviewer_name
text review_text
text review_sentiment
text is_full_moon
}

"MODEL.DBTLEARN.DIM_LISTINGS_CLEANSED" }|--|| "MODEL.DBTLEARN.DIM_HOSTS_CLEANSED": host_id
"MODEL.DBTLEARN.FCT_REVIEWS" }|--|| "MODEL.DBTLEARN.DIM_LISTINGS_CLEANSED": listing_id
```
