with foo as (
select *
from gtlab.sgs_geosites_ta_penetration
left join (select id poi_id, poi_n_reviews, dmo_id from gtlab.sk_pois_activities_tripadvisor_0723_details) foo
using(poi_id)
left join (select distinct(poi_id), 1 rev_in_gtlab  from gtlab.sk_ta_geosites_reviews_transformed) revgtlab
using(poi_id)
left join (select distinct(poi_id), 1 rev_indb from karim_ta_gt_reviews_transformed) karim
using(poi_id)
)
select sum(poi_n_reviews) from foo
--where poi_n_reviews is not null
--and rev_in_gtlab is null and rev_indb is not null
--and rev_in_gtlab is null and rev_indb is null
where poi_id in ('g799614-d8549004','g8649014-d17380245','g799614-d8549004','g3175023-d2719150','g5288165-d10158815','g982822-d8549787')


insert into gtlab.sk_ta_geosites_reviews (poi_id,reviewer_name,reviewer_origin,reviewer_n_ratings,review_rating,review_written_day,review_written_month,review_written_year,visit_month,visit_year,review_title,visit_group_type,review_clean,review_rand_unique_id,py_langid_title_review,py_langid_review,py_langdetect_title_review,py_langdetect_review,review_en,review_title_en,py_langdetect_review_str,sent1_title_polarity,sent1_title_subjectivity,sent1_review_polarity,sent1_review_subjectivity,sent2_title_neg,sent2_title_neu,sent2_title_pos,sent2_title_compound,sent2_review_neg,sent2_review_neu,sent2_review_pos,sent2_review_compound,sent3_title_neg,sent3_title_neu,sent3_title_pos,sent3_title_compound,sent3_review_neg,sent3_review_neu,sent3_review_pos,sent3_review_compound,sent4_title_polarity,sent4_title_subjectivity,sent4_review_polarity,sent4_review_subjectivity,sent5_review_polarity,sent5_title_polarity)
select poi_id,reviewer_name,reviewer_origin,reviewer_n_ratings,review_rating,review_written_day,review_written_month,review_written_year,visit_month,visit_year,review_title,visit_group_type,review_clean,review_rand_unique_id,py_langid_title_review,py_langid_review,py_langdetect_title_review,py_langdetect_review,review_en,review_title_en,py_langdetect_review_str,sent1_title_polarity,sent1_title_subjectivity,sent1_review_polarity,sent1_review_subjectivity,sent2_title_neg,sent2_title_neu,sent2_title_pos,sent2_title_compound,sent2_review_neg,sent2_review_neu,sent2_review_pos,sent2_review_compound,sent3_title_neg,sent3_title_neu,sent3_title_pos,sent3_title_compound,sent3_review_neg,sent3_review_neu,sent3_review_pos,sent3_review_compound,sent4_title_polarity,sent4_title_subjectivity,sent4_review_polarity,sent4_review_subjectivity,sent5_review_polarity,sent5_title_polarity
from karim_ta_gt_reviews_t_clean where poi_id in ('g799614-d8549004','g8649014-d17380245','g799614-d8549004','g3175023-d2719150','g5288165-d10158815','g982822-d8549787')

select count(*) from karim_ta_gt_reviews_transformed where poi_id in ('g799614-d8549004','g8649014-d17380245','g799614-d8549004','g3175023-d2719150','g5288165-d10158815','g982822-d8549787')


select * from karim_ta_gt_reviews_t_clean where poi_id in ('g799614-d8549004','g8649014-d17380245','g799614-d8549004','g3175023-d2719150','g5288165-d10158815','g982822-d8549787')


select * from information_schema.columns where table_name::text = 'sk_ta_geosites_reviews'
