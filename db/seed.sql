\c impactify_app

INSERT INTO users (first_name, last_name, user_name, email, events_created, favorite_events, favorite_news, donations_made, password_hash, user_keywords)
VALUES
  ('John', 'Doe', 'johndoe', 'johnnydoe@gmail.com', 5, 10, 8, 3, 'password123', '{"activism", "politics", "social justice"}'),
  ('Jane', 'Smith', 'janesmith', 'janiesmithhh@gmail.com', 3, 7, 5, 2, 'password456', '{"community", "equality", "environment"}'),
  ('Alice', 'Johnson', 'alicej', 'allicee@gmail.com', 8, 12, 15, 5, 'password789', '{"human rights", "climate change", "volunteer"}');

-- events should have some related keywords
INSERT INTO events (user_id, event_title, event_date, event_time, lat, lng, event_location, event_details, event_photo, is_virtual, donation_id, mobilize_id, rsvp)
VALUES
(1, 'Climate Change Awareness Rally', '2023-04-22', '12:00:00', 40.7128, -74.0060, 'Central Park, New York', 'Join us for a rally to raise awareness about climate change and its impact on our planet.', 'https://cdn.who.int/media/images/librariesprovider2/default-album/site-banner-images/activities/raising-awareness-on-climate-change-and-health.tmb-479v.jpg?sfvrsn=f5505825_1%20479w', false, 1, 12345, true),
(2, 'Community Cleanup Day', '2023-05-15', '09:00:00', 40.6782, -73.9442, 'Brooklyn Bridge Park, Brooklyn', 'Help keep our community clean by participating in our annual cleanup day.', 'https://www.thecleanearthproject.com/cdn/shop/articles/20190511_140228_600x.jpg?v=1558385294', false, 2, 67890, true),
(3, 'Voter Registration Drive', '2023-06-30', '10:00:00', 40.7306, -73.9352, 'Union Square, New York', 'Join us to register voters and promote civic engagement in our community.', 'data:image/jpeg;base64,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', true, 3, 24680, true);


INSERT INTO donations (user_id, event_id, donation_amount, currency_code, donation_keyword, donation_description)
VALUES
(1, 1, 3, 'USD', 'Climate Change', 'Support efforts to combat climate change and promote sustainability.'),
(2, 2, 50, 'EUR', 'Racial Equality', 'Contribute to initiatives working towards achieving racial equality and social justice.'),
(3, 3, 100, 'USD', 'Affordable Housing', 'Help fund programs aimed at providing affordable housing for low-income families.');
INSERT INTO news (user_id, news_title, donation_id, news_content, news_url, news_image, keywords)
VALUES
(1, 'Gaza has become a ''death zone'', warns UN health chief', 101, '“Gaza has become a death zone,” Tedros Adhanom Ghebreyesus, WHO Director-General told correspondents at a press briefing in Geneva.\n\nMuch of the territory has been destroyed. More than 29,000 people are dead; many more are missing, presumed dead; and many, many more are injured.\n\nAcross the war-ravaged Gaza Strip, severe malnutrition has shot up dramatically since the start of the war on 7 October, from under one per cent of the population, to over 15 per cent in some areas.\n\n“This figure will rise the longer the war goes on and supplies [are] interrupted,” Tedros said, expressing deep concern that agencies such as the World Food Programme (WFP) are unable to access the north. WFP suspended its aid deliveries there due to lack of security for both humanitarian personnel and those seeking assistance.\n\nMedical charity attacked The war has taken a severe toll on aid workers, with hundreds reported killed. A Médecins Sans Frontières (MSF) shelter was shelled Tuesday night (local time), injuring staff and killing members of their family. UN Emergency Relief Coordinator, Martin Griffiths, said he was appalled by the attack, adding that he stood with them in their grief.\n\n“Humanitarians are putting their lives on the line. Like all civilians, they must be protected,” he added, in a post on X, formerly Twitter. ‘What world do we live in’ WHO chief Tedros reiterated the grave risks for humanitarians and the need to ensure they are protected. “What type of world do we live when people cannot get food and water, and when people who cannot even walk are unable to receive care?”, he lamented. “What type of world do we live in when health workers are at risk of being bombed as they carry out their life saving work [and] hospitals must close because there is no more power or medicines to help save patients?” Tweet URL He underscored the need for an immediate ceasefire.', 'https://news.un.org/en/story/2024/02/1146792', 'https://global.unitednations.entermediadb.net/assets/mediadb/services/module/asset/downloads/preset/Libraries/Production%20Library/21-02-2024_WHO_Gaza.jpg/image1170x530cropped.jpg', '["Palestine", "war", "global issue", "humanitarian"]'),

(2, 'Ukraine: 2024 starts with ''loss, pain, and anguish'' amid intense Russian strikes', 102, 'In a statement on Tuesday, UN Humanitarian Coordinator Denise Brown strongly condemned the assaults targeting mostly cities.\n\n“For the people of Ukraine, the new year started with loss, pain, and anguish. For the third day in a row, vast aerial assaults by the Russian Federation have caused death – including several children - and destruction of homes”, Ms. Brown stated.\n\nShe emphasized that the situation is particularly alarming as many parts of the capital, Kyiv, have been left without electricity or water, which is particularly dangerous as temperatures are forecast to drop to -20 degrees Celsius later this week.\n\nViolation of humanitarian law Ms. Brown on Tuesday once again reminded the Russian Federation that ‘indiscriminate attacks against civilians and civilian infrastructure are strictly forbidden under international humanitarian law’.', 'https://news.un.org/en/story/2024/01/1145232', 'https://global.unitednations.entermediadb.net/assets/mediadb/services/module/asset/downloads/preset/Collections/Embargoed/29-12-2023-Ukraine-Odesa2.jpg/image770x420cropped.jpg', '["Ukraine", "war", "global issue", "humanitarian"]'),

(3, 'The Climate Impact of War', 103, 'Israel-Palestine War The escalating conflict in Palestine has now put the spotlight on emissions and environmental damages resulting from war.\n\nThanks to the press and social media, the damage is more evident now than ever, as people from around the world witness, in real-time, the wide-scale destruction caused by modern-day warfare.\n\nLike all others, this war directly consumed large amounts of fossil fuel, leading to excessive carbon emissions and environmental pollutants.\n\nAn earlier report from the Euro-Med Human Rights Monitor says around 25,000 tonnes of munitions were dropped on Gaza in the first few weeks of the war. The carbon emissions from this would be equivalent to the annual energy use of approximately 2,300 homes or the annual greenhouse gas emissions from about 4,600 passenger vehicles.\n\nIndirect pollution from the war includes the carbon emissions that will be released during the rebuilding of Gaza. Producing concrete leaves a large carbon footprint, and it was estimated that 5.8 million tonnes of carbon emissions would be released from the production of construction materials and the construction activities itself.\n\nPrior to the outbreak of war, Gaza had one of the world’s highest densities of solar rooftop installations. However, the current war has destroyed these solar systems, with 17 of the 29 largest rooftop solar installations either completely destroyed or displaying significant external damage.\n\nThis sets back the region’s climate change efforts and its environmental governance. At COP 28, where Palestine held', 'https://www.theguardian.com/commentisfree/2024/jan/09/emission-from-war-military-gaza-ukraine-climate-change', 'https://i.guim.co.uk/img/media/0c734ee173e5a443cbc5540508956516f6e7a69b/0_199_3000_1800/master/3000.jpg?width=620&dpr=2&s=none', '["Climate", "war", "global issue", "humanitarian"]');
