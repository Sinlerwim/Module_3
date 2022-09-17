INSERT INTO public.studentsgroup(id, name)
VALUES ('23bd07d5-ae68-493e-933d-aeacb63ac2bb', 'PR-117');
INSERT INTO public.studentsgroup(id, name)
VALUES ('e3bd5b3b-a382-4c26-95e9-f3388c0e0083', 'PR-216');
INSERT INTO public.studentsgroup(id, name)
VALUES ('f137feed-ef12-4511-bcff-a70e2e199cf5', 'PR-315');
INSERT INTO public.student(id, age, firstname, lastname, admissiondate, studentsgroup_id)
VALUES ('d756b8c3-8882-44cf-bc7c-dc5f1712b4cb', '17', 'Hryhorii', 'Zaharchuk',
        '2017-08-27', '23bd07d5-ae68-493e-933d-aeacb63ac2bb');
INSERT INTO public.student(id, age, firstname, lastname, admissiondate, studentsgroup_id)
VALUES ('62bd3c9a-edeb-4f22-9dd8-626831ba72c9', '17', 'Oleg', 'Kuzmenko',
        '2017-08-24', '23bd07d5-ae68-493e-933d-aeacb63ac2bb');
INSERT INTO public.student(id, age, firstname, lastname, admissiondate, studentsgroup_id)
VALUES ('777c3d16-62d6-4261-83c0-adb841b5fae7', '18', 'Oksana', 'Tinkaluk',
        '2017-08-24', '23bd07d5-ae68-493e-933d-aeacb63ac2bb');
INSERT INTO public.student(id, age, firstname, lastname, admissiondate, studentsgroup_id)
VALUES ('01c9f819-2bbd-4b63-8bbc-fa4a8324c24b', '18', 'Evhenii', 'Panadiy',
        '2016-08-26', 'e3bd5b3b-a382-4c26-95e9-f3388c0e0083');
INSERT INTO public.student(id, age, firstname, lastname, admissiondate, studentsgroup_id)
VALUES ('302a6a0b-bf4e-4b21-beef-128031d2f5e3', '18', 'Yana', 'Kuzmeniuk',
        '2016-08-26', 'e3bd5b3b-a382-4c26-95e9-f3388c0e0083');
INSERT INTO public.student(id, age, firstname, lastname, admissiondate, studentsgroup_id)
VALUES ('598d515a-628e-4da3-a2ca-6704f606f4e1', '19', 'Mykolai', 'Taraschuk',
        '2016-08-26', 'e3bd5b3b-a382-4c26-95e9-f3388c0e0083');
INSERT INTO public.student(id, age, firstname, lastname, admissiondate, studentsgroup_id)
VALUES ('4e36890b-c321-45c1-a4bf-5914ddbd7744', '19', 'Fedir', 'Tkachenko',
        '2015-08-26', 'f137feed-ef12-4511-bcff-a70e2e199cf5');
INSERT INTO public.student(id, age, firstname, lastname, admissiondate, studentsgroup_id)
VALUES ('93eea4e7-0d57-4e51-9a6f-08d148b42ce4', '19', 'Maksim', 'Savchenko',
        '2015-08-26', 'f137feed-ef12-4511-bcff-a70e2e199cf5');
INSERT INTO public.student(id, age, firstname, lastname, admissiondate, studentsgroup_id)
VALUES ('947e5a97-7d87-4aeb-b678-53fa1a2a9d6a', '20', 'Eva', 'Shekeryak',
        '2015-08-26', 'f137feed-ef12-4511-bcff-a70e2e199cf5');
INSERT INTO public.subject(id, name)
VALUES ('be3cd2da-10de-4118-b5fc-eeccc51fafea','Ukrainian language');
INSERT INTO public.subject(id, name)
VALUES ('5cd9768f-cb81-4862-b558-09b2ea089c11','Math analysis');
INSERT INTO public.subject(id, name)
VALUES ('e79d77b1-81e9-426b-8fa3-2aaa1e62fe31','History');
INSERT INTO public.subject(id, name)
VALUES ('452daee7-628d-4e3a-87a9-320491ccbfff','Data bases');
INSERT INTO public.teacher(id, age, firstname, lastname, subject_id)
VALUES ('fa9f5f41-488a-45c1-bb69-9cf1f33311e0','28','Valeria','Gotych',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.teacher(id, age, firstname, lastname, subject_id)
VALUES ('2d51b9e3-04f5-42f7-a618-c6f668c6cc15','32','Vadim','Savchuk',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.teacher(id, age, firstname, lastname, subject_id)
VALUES ('f3194275-0563-4978-90ce-664a6afdaa40','38','Viktoria','Gavrylchuk',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.teacher(id, age, firstname, lastname, subject_id)
VALUES ('6a37f4a5-851d-485e-846d-96ac876ce673','29','Matviy','Polischuk',
        '452daee7-628d-4e3a-87a9-320491ccbfff');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('9faaefd0-a829-4450-b743-8f940a84542c','1','d756b8c3-8882-44cf-bc7c-dc5f1712b4cb',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('716e5747-814c-403e-8265-4df0a7f615dd','2','d756b8c3-8882-44cf-bc7c-dc5f1712b4cb',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('ba765059-6c9c-4673-9628-b6e247869f1a','2','d756b8c3-8882-44cf-bc7c-dc5f1712b4cb',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('ce67cc17-c35d-4986-be60-c3c06ad732a9','3','d756b8c3-8882-44cf-bc7c-dc5f1712b4cb',
        '452daee7-628d-4e3a-87a9-320491ccbfff');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('35021828-e5f3-463b-9ae8-e0c82982df97','1','62bd3c9a-edeb-4f22-9dd8-626831ba72c9',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('e703e0af-d408-4886-bcd1-10487ef298e9','2','62bd3c9a-edeb-4f22-9dd8-626831ba72c9',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('0fe74e8e-2c45-4023-9f62-3d7a6fc87a9a','2','62bd3c9a-edeb-4f22-9dd8-626831ba72c9',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('128c8590-2345-4a75-9874-52076b137e05','3','62bd3c9a-edeb-4f22-9dd8-626831ba72c9',
        '452daee7-628d-4e3a-87a9-320491ccbfff');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('7d05cc27-a1de-4b9b-a26d-4040efbe10c7','3','777c3d16-62d6-4261-83c0-adb841b5fae7',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('c56309c7-8ffc-4c29-8649-5a4bd808abc5','4','777c3d16-62d6-4261-83c0-adb841b5fae7',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('96cbbd07-9569-4ed4-9b92-98c6a945276f','4','777c3d16-62d6-4261-83c0-adb841b5fae7',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('8d2132b3-b498-4e74-8abe-2c886e85b179','3','777c3d16-62d6-4261-83c0-adb841b5fae7',
        '452daee7-628d-4e3a-87a9-320491ccbfff');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('c37e2180-0b2c-4b2d-a623-0aefdc3dfe00','4','01c9f819-2bbd-4b63-8bbc-fa4a8324c24b',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('15a08789-b5c8-4795-9fc9-4a1918c348bd','3','01c9f819-2bbd-4b63-8bbc-fa4a8324c24b',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('d40d1069-dedb-4a1a-a5f5-5846c3f55eb3','4','01c9f819-2bbd-4b63-8bbc-fa4a8324c24b',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('ca1c067a-a8ec-47c4-92c0-fe842d73a268','3','01c9f819-2bbd-4b63-8bbc-fa4a8324c24b',
        '452daee7-628d-4e3a-87a9-320491ccbfff');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('6cabaa15-5252-47cf-8e6f-e8981aa9dc77','2','302a6a0b-bf4e-4b21-beef-128031d2f5e3',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('66ce8394-d18f-41bb-8eab-4829e2f1d798','3','302a6a0b-bf4e-4b21-beef-128031d2f5e3',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('86433497-2315-4b47-94a0-0040c384409c','4','302a6a0b-bf4e-4b21-beef-128031d2f5e3',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('99944b33-7eed-4a9a-a89b-0654a2d0bf4a','1','302a6a0b-bf4e-4b21-beef-128031d2f5e3',
        '452daee7-628d-4e3a-87a9-320491ccbfff');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('07f44440-5ed4-4b9f-81f6-afc695c717f7','1','598d515a-628e-4da3-a2ca-6704f606f4e1',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('aabd6b93-2376-422e-836c-4ca262d2b4ba','2','598d515a-628e-4da3-a2ca-6704f606f4e1',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('9910c0d5-8e3b-40e0-ba30-962350d9e882','4','598d515a-628e-4da3-a2ca-6704f606f4e1',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('337ef1d1-f455-4442-b0b9-7b3c9096a3a3','2','598d515a-628e-4da3-a2ca-6704f606f4e1',
        '452daee7-628d-4e3a-87a9-320491ccbfff');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('9f9820c3-ae39-4cf6-b20a-758cafc63ba6','2','4e36890b-c321-45c1-a4bf-5914ddbd7744',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('879e8aab-f448-499a-8bcc-748c9b43c397','1','4e36890b-c321-45c1-a4bf-5914ddbd7744',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('a37e6af6-c659-4ca3-87c7-9fd03d3feb78','3','4e36890b-c321-45c1-a4bf-5914ddbd7744',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('a6665504-ead1-4af2-a002-fa65a1aba694','1','4e36890b-c321-45c1-a4bf-5914ddbd7744',
        '452daee7-628d-4e3a-87a9-320491ccbfff');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('72f385f3-f860-4588-b16f-26a3f336d460','4','93eea4e7-0d57-4e51-9a6f-08d148b42ce4',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('da208e42-257a-4176-b599-bb2af0e27afd','1','93eea4e7-0d57-4e51-9a6f-08d148b42ce4',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('f0b74846-9322-4015-bf07-78aa16f9fa4b','4','93eea4e7-0d57-4e51-9a6f-08d148b42ce4',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('c4d46341-a0fa-45f7-8823-f70da7090820','4','93eea4e7-0d57-4e51-9a6f-08d148b42ce4',
        '452daee7-628d-4e3a-87a9-320491ccbfff');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('71931d57-a007-4135-9c2a-5e48a5ddf03a','4','947e5a97-7d87-4aeb-b678-53fa1a2a9d6a',
        'be3cd2da-10de-4118-b5fc-eeccc51fafea');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('3e0640e4-afdb-4234-a01c-3258fc0017bc','1','947e5a97-7d87-4aeb-b678-53fa1a2a9d6a',
        '5cd9768f-cb81-4862-b558-09b2ea089c11');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('e9c56c3c-13bc-478c-8d7e-86b8204ecae0','4','947e5a97-7d87-4aeb-b678-53fa1a2a9d6a',
        'e79d77b1-81e9-426b-8fa3-2aaa1e62fe31');
INSERT INTO public.grade(id, value, student_id, subject_id)
VALUES ('a22a35b1-c2fc-47a5-8c97-015c4c7592d5','2','947e5a97-7d87-4aeb-b678-53fa1a2a9d6a',
        '452daee7-628d-4e3a-87a9-320491ccbfff');

