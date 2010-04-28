BEGIN;
COPY toasty (bigdeal) FROM STDIN;
E"2009-04-13 17:54:05 ERROR  : ERROR:  column m does not exist\
\
2009-04-13 18:00:54 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:00:56 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:00:57 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:01:06 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:03:33 ERROR  : ERROR:  relation pg_autovacuum does not exist\
LINE 1: SELECT * FROM pg_autovacuum WHERE vacrelid=25732::oid\
                      ^\
\
2009-04-13 18:03:38 ERROR  : ERROR:  relation pg_autovacuum does not exist\
LINE 1: SELECT * FROM pg_autovacuum WHERE vacrelid=25732::oid\
                      ^\
\
2009-04-13 18:05:27 ERROR  : ERROR:  value too long for type character(1)\
\
2009-04-13 18:05:30 ERROR  : ERROR:  value too long for type character(1)\
\
2009-04-13 18:08:34 ERROR  : can't open file 'proposals_with_tags.csv' (error 13: Permission denied)\
2009-04-13 18:08:36 ERROR  : Failed to open file proposals_with_tags.csv.\
2009-04-13 22:21:00 ERROR  : ERROR:  duplicate key value violates unique constraint idx_proposal_voter\
\
2009-04-13 22:21:00 ERROR  : ERROR:  duplicate key value violates unique constraint idx_proposal_voter\
\
2009-04-13 22:21:01 ERROR  : ERROR:  duplicate key value violates unique constraint idx_proposal_voter\
\
2009-04-14 10:28:17 ERROR  : ERROR:  relation pg_autovacuum does not exist\
LINE 1: SELECT * FROM pg_autovacuum WHERE vacrelid=25785::oid\
                      ^\
\
2009-04-14 17:17:53 ERROR  : ERROR:  relation proposal_sum_relevance does not exist\
LINE 1: ...rom textcat_all( tags.name || '; ')) as tags from proposal_s...\
                                                             ^\
2009-04-14 19:19:01 ERROR  : ERROR:  syntax error at or near null\
LINE 2: ...ce.id LEFT JOIN tags on tag_id = tags.id and total not null \
                                                                  ^\
2009-04-14 19:19:15 ERROR  : ERROR:  syntax error at or near null\
LINE 3: WHERE total not null \
                        ^\
2009-04-14 19:19:16 ERROR  : ERROR:  syntax error at or near null\
LINE 3: WHERE total not null \
                        ^\
2009-04-14 19:21:09 ERROR  : ERROR:  syntax error at or near trim\
LINE 2: trim(trailing '; ' from textcat_all(users.email || '; ')) as...\
        ^\
2009-04-14 19:22:56 ERROR  : ERROR:  invalid reference to FROM-clause entry for table users\
LINE 2: trim(trailing '; ' from textcat_all(users.email || '; ')) as...\
                                            ^\
HINT:  Perhaps you meant to reference the table alias u.\
2009-04-14 19:26:02 ERROR  : ERROR:  more than one row returned by a subquery used as an expression\
2009-04-14 19:36:11 ERROR  : ERROR:  column u.first_name must appear in the GROUP BY clause or be used in an aggregate function\
LINE 1: select p.title, u.first_name || u.last_name, u.email\
                        ^\
2009-04-14 19:42:05 ERROR  : ERROR:  syntax error at or near 'First Name'\
LINE 1: select u.first_name as 'First Name', u.last_name as 'Last Na...\
                               ^\
2009-04-14 19:42:25 ERROR  : ERROR:  syntax error at or near 'Last Name'\
LINE 1: ...lect u.first_name as First Name, u.last_name as 'Last Name...\
                                                             ^\
2009-04-14 19:42:33 ERROR  : ERROR:  syntax error at or near 'First Name'\
LINE 1: select u.first_name as 'First Name', u.last_name as 'Last Na...\
                               ^\
2009-04-14 19:42:38 ERROR  : ERROR:  syntax error at or near 'FirstName'\
LINE 1: select u.first_name as 'FirstName', u.last_name as 'LastName...\
                               ^\
2009-04-14 19:43:01 ERROR  : ERROR:  column u.title does not exist\
LINE 1: ...name as FirstName, u.last_name as LastName, u.email, u.title\
                                                                ^\
2009-04-18 12:39:40 ERROR  : ERROR:  syntax error at or near JOI\
LINE 1: ....name || '; ')) as tags from proposal_sum_relevance LEFT JOI\
                                                                    ^\
2009-04-18 12:39:46 ERROR  : ERROR:  syntax error at or near sion_type\
LINE 2: sion_type, track, relevance, interestingness, total;\
        ^\
2009-04-18 13:45:30 ERROR  : ERROR:  column reference title is ambiguous\
LINE 5: group by proposal_sum_relevance.id, title, session_type, tra...\
                                            ^\
2009-04-18 13:46:17 ERROR  : ERROR:  invalid reference to FROM-clause entry for table proposal_sum_relevance\
LINE 2: LEFT JOIN proposals p ON proposal_sum_relevance.id = p.id\
                                 ^\
HINT:  Perhaps you meant to reference the table alias ps.\
2009-04-18 13:46:26 ERROR  : ERROR:  column p.status must appear in the GROUP BY clause or be used in an aggregate function\
2009-04-18 13:48:01 ERROR  : ERROR:  column reference id is ambiguous\
LINE 5: where id != 0\
              ^\
2009-04-19 08:21:30 ERROR  : ERROR:  invalid reference to FROM-clause entry for table proposals_users\
LINE 3: LEFT JOIN proposals_users pu ON p.id = proposals_users.propo...\
                                               ^\
HINT:  Perhaps you meant to reference the table alias pu.\
2009-04-19 08:21:48 ERROR  : ERROR:  column reference email is ambiguous\
LINE 1: select first_name,last_name,email,title from proposals p\
                                    ^\
2009-04-19 08:22:04 ERROR  : ERROR:  column reference title is ambiguous\
LINE 1: select first_name,last_name,u.email,title from proposals p\
                                            ^\
2009-04-22 07:34:38 ERROR  : ERROR:  syntax error at or near WHERE\
LINE 7: WHERE title like '%Linux%'\
        ^\
2009-04-22 07:34:44 ERROR  : ERROR:  column reference title is ambiguous\
LINE 7: AND title like '%Linux%'\
            ^\
2009-04-22 08:30:42 ERROR  : ERROR:  column reference title is ambiguous\
LINE 8: AND title like '%Documentation%'\
            ^\
2009-04-23 09:07:22 ERROR  : ERROR:  syntax error at or near from\
LINE 2:  from proposals p\
         ^\
2009-04-23 09:07:27 ERROR  : ERROR:  syntax error at or near from\
LINE 2:  from proposals p\
         ^\
2009-04-23 09:07:36 ERROR  : ERROR:  syntax error at or near )\
LINE 9: );\
2009-04-13 18:00:54 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:00:56 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:00:57 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:01:06 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:03:33 ERROR  : ERROR:  relation pg_autovacuum does not exist\
LINE 1: SELECT * FROM pg_autovacuum WHERE vacrelid=25732::oid\
                      ^\
\
2009-04-13 18:03:38 ERROR  : ERROR:  relation pg_autovacuum does not exist\
LINE 1: SELECT * FROM pg_autovacuum WHERE vacrelid=25732::oid\
                      ^\
\
2009-04-13 18:05:27 ERROR  : ERROR:  value too long for type character(1)\
\
2009-04-13 18:05:30 ERROR  : ERROR:  value too long for type character(1)\
\
2009-04-13 18:08:34 ERROR  : can't open file 'proposals_with_tags.csv' (error 13: Permission denied)\
2009-04-13 18:08:36 ERROR  : Failed to open file proposals_with_tags.csv.\
2009-04-13 22:21:00 ERROR  : ERROR:  duplicate key value violates unique constraint idx_proposal_voter\
\
2009-04-13 22:21:00 ERROR  : ERROR:  duplicate key value violates unique constraint idx_proposal_voter\
\
2009-04-13 22:21:01 ERROR  : ERROR:  duplicate key value violates unique constraint idx_proposal_voter\
\
2009-04-14 10:28:17 ERROR  : ERROR:  relation pg_autovacuum does not exist\
LINE 1: SELECT * FROM pg_autovacuum WHERE vacrelid=25785::oid\
                      ^\
\
2009-04-14 17:17:53 ERROR  : ERROR:  relation proposal_sum_relevance does not exist\
LINE 1: ...rom textcat_all( tags.name || '; ')) as tags from proposal_s...\
                                                             ^\
2009-04-14 19:19:01 ERROR  : ERROR:  syntax error at or near null\
LINE 2: ...ce.id LEFT JOIN tags on tag_id = tags.id and total not null \
                                                                  ^\
2009-04-14 19:19:15 ERROR  : ERROR:  syntax error at or near null\
LINE 3: WHERE total not null \
                        ^\
2009-04-14 19:19:16 ERROR  : ERROR:  syntax error at or near null\
LINE 3: WHERE total not null \
                        ^\
2009-04-14 19:21:09 ERROR  : ERROR:  syntax error at or near trim\
LINE 2: trim(trailing '; ' from textcat_all(users.email || '; ')) as...\
        ^\
2009-04-14 19:22:56 ERROR  : ERROR:  invalid reference to FROM-clause entry for table users\
LINE 2: trim(trailing '; ' from textcat_all(users.email || '; ')) as...\
                                            ^\
HINT:  Perhaps you meant to reference the table alias u.\
2009-04-14 19:26:02 ERROR  : ERROR:  more than one row returned by a subquery used as an expression\
2009-04-14 19:36:11 ERROR  : ERROR:  column u.first_name must appear in the GROUP BY clause or be used in an aggregate function\
LINE 1: select p.title, u.first_name || u.last_name, u.email\
                        ^\
2009-04-14 19:42:05 ERROR  : ERROR:  syntax error at or near 'First Name'\
LINE 1: select u.first_name as 'First Name', u.last_name as 'Last Na...\
                               ^\
2009-04-14 19:42:25 ERROR  : ERROR:  syntax error at or near 'Last Name'\
LINE 1: ...lect u.first_name as First Name, u.last_name as 'Last Name...\
                                                             ^\
2009-04-14 19:42:33 ERROR  : ERROR:  syntax error at or near 'First Name'\
LINE 1: select u.first_name as 'First Name', u.last_name as 'Last Na...\
                               ^\
2009-04-14 19:42:38 ERROR  : ERROR:  syntax error at or near 'FirstName'\
LINE 1: select u.first_name as 'FirstName', u.last_name as 'LastName...\
                               ^\
2009-04-14 19:43:01 ERROR  : ERROR:  column u.title does not exist\
LINE 1: ...name as FirstName, u.last_name as LastName, u.email, u.title\
                                                                ^\
2009-04-18 12:39:40 ERROR  : ERROR:  syntax error at or near JOI\
LINE 1: ....name || '; ')) as tags from proposal_sum_relevance LEFT JOI\
                                                                    ^\
2009-04-18 12:39:46 ERROR  : ERROR:  syntax error at or near sion_type\
LINE 2: sion_type, track, relevance, interestingness, total;\
        ^\
2009-04-18 13:45:30 ERROR  : ERROR:  column reference title is ambiguous\
LINE 5: group by proposal_sum_relevance.id, title, session_type, tra...\
                                            ^\
2009-04-18 13:46:17 ERROR  : ERROR:  invalid reference to FROM-clause entry for table proposal_sum_relevance\
LINE 2: LEFT JOIN proposals p ON proposal_sum_relevance.id = p.id\
                                 ^\
HINT:  Perhaps you meant to reference the table alias ps.\
2009-04-18 13:46:26 ERROR  : ERROR:  column p.status must appear in the GROUP BY clause or be used in an aggregate function\
2009-04-18 13:48:01 ERROR  : ERROR:  column reference id is ambiguous\
LINE 5: where id != 0\
              ^\
2009-04-19 08:21:30 ERROR  : ERROR:  invalid reference to FROM-clause entry for table proposals_users\
LINE 3: LEFT JOIN proposals_users pu ON p.id = proposals_users.propo...\
                                               ^\
HINT:  Perhaps you meant to reference the table alias pu.\
2009-04-19 08:21:48 ERROR  : ERROR:  column reference email is ambiguous\
2009-04-13 18:00:54 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:00:56 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:00:57 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:01:06 ERROR  : ERROR:  invalid input syntax for integer: m\
LINE 1: INSERT INTO public.users(id) VALUES ('m'::integer)\
                                             ^\
\
2009-04-13 18:03:33 ERROR  : ERROR:  relation pg_autovacuum does not exist\
LINE 1: SELECT * FROM pg_autovacuum WHERE vacrelid=25732::oid\
                      ^\
\
2009-04-13 18:03:38 ERROR  : ERROR:  relation pg_autovacuum does not exist\
LINE 1: SELECT * FROM pg_autovacuum WHERE vacrelid=25732::oid\
                      ^\
\
2009-04-13 18:05:27 ERROR  : ERROR:  value too long for type character(1)\
\
2009-04-13 18:05:30 ERROR  : ERROR:  value too long for type character(1)\
\
2009-04-13 18:08:34 ERROR  : can't open file 'proposals_with_tags.csv' (error 13: Permission denied)\
2009-04-13 18:08:36 ERROR  : Failed to open file proposals_with_tags.csv.\
2009-04-13 22:21:00 ERROR  : ERROR:  duplicate key value violates unique constraint idx_proposal_voter\
\
2009-04-13 22:21:00 ERROR  : ERROR:  duplicate key value violates unique constraint idx_proposal_voter\
\
2009-04-13 22:21:01 ERROR  : ERROR:  duplicate key value violates unique constraint idx_proposal_voter\
\
2009-04-14 10:28:17 ERROR  : ERROR:  relation pg_autovacuum does not exist\
LINE 1: SELECT * FROM pg_autovacuum WHERE vacrelid=25785::oid\
                      ^\
\
2009-04-14 17:17:53 ERROR  : ERROR:  relation proposal_sum_relevance does not exist\
LINE 1: ...rom textcat_all( tags.name || '; ')) as tags from proposal_s...\
                                                             ^\
2009-04-14 19:19:01 ERROR  : ERROR:  syntax error at or near null\
LINE 2: ...ce.id LEFT JOIN tags on tag_id = tags.id and total not null \
                                                                  ^\
2009-04-14 19:19:15 ERROR  : ERROR:  syntax error at or near null\
LINE 3: WHERE total not null \
                        ^\
2009-04-14 19:19:16 ERROR  : ERROR:  syntax error at or near null\
LINE 3: WHERE total not null \
                        ^\
2009-04-14 19:21:09 ERROR  : ERROR:  syntax error at or near trim\
LINE 2: trim(trailing '; ' from textcat_all(users.email || '; ')) as...\
        ^\
2009-04-14 19:22:56 ERROR  : ERROR:  invalid reference to FROM-clause entry for table users\
LINE 2: trim(trailing '; ' from textcat_all(users.email || '; ')) as...\
                                            ^\
HINT:  Perhaps you meant to reference the table alias u.\
2009-04-14 19:26:02 ERROR  : ERROR:  more than one row returned by a subquery used as an expression\
2009-04-14 19:36:11 ERROR  : ERROR:  column u.first_name must appear in the GROUP BY clause or be used in an aggregate function\
LINE 1: select p.title, u.first_name || u.last_name, u.email\
                        ^\
2009-04-14 19:42:05 ERROR  : ERROR:  syntax error at or near 'First Name'\
LINE 1: select u.first_name as 'First Name', u.last_name as 'Last Na...\
                               ^\
2009-04-14 19:42:25 ERROR  : ERROR:  syntax error at or near 'Last Name'\
LINE 1: ...lect u.first_name as First Name, u.last_name as 'Last Name...\
                                                             ^\
2009-04-14 19:42:33 ERROR  : ERROR:  syntax error at or near 'First Name'\
LINE 1: select u.first_name as 'First Name', u.last_name as 'Last Na...\
                               ^\
2009-04-14 19:42:38 ERROR  : ERROR:  syntax error at or near 'FirstName'\
LINE 1: select u.first_name as 'FirstName', u.last_name as 'LastName...\
                               ^\
2009-04-14 19:43:01 ERROR  : ERROR:  column u.title does not exist\
LINE 1: ...name as FirstName, u.last_name as LastName, u.email, u.title\
                                                                ^\
2009-04-18 12:39:40 ERROR  : ERROR:  syntax error at or near JOI\
LINE 1: ....name || '; ')) as tags from proposal_sum_relevance LEFT JOI\
                                                                    ^\
2009-04-18 12:39:46 ERROR  : ERROR:  syntax error at or near sion_type\
LINE 2: sion_type, track, relevance, interestingness, total;\
        ^\
2009-04-18 13:45:30 ERROR  : ERROR:  column reference title is ambiguous\
LINE 5: group by proposal_sum_relevance.id, title, session_type, tra...\
                                            ^\
2009-04-18 13:46:17 ERROR  : ERROR:  invalid reference to FROM-clause entry for table proposal_sum_relevance\
LINE 2: LEFT JOIN proposals p ON proposal_sum_relevance.id = p.id\
                                 ^\
HINT:  Perhaps you meant to reference the table alias ps.\
2009-04-18 13:46:26 ERROR  : ERROR:  column p.status must appear in the GROUP BY clause or be used in an aggregate function\
2009-04-18 13:48:01 ERROR  : ERROR:  column reference id is ambiguous\
LINE 5: where id != 0\
              ^\
2009-04-19 08:21:30 ERROR  : ERROR:  invalid reference to FROM-clause entry for table proposals_users\
LINE 3: LEFT JOIN proposals_users pu ON p.id = proposals_users.propo...\
                                               ^\
HINT:  Perhaps you meant to reference the table alias pu.\
2009-04-19 08:21:48 ERROR  : ERROR:  column reference email is ambiguous\
        ^"
\.
-- ROLLBACK;
COMMIT;
