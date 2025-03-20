-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2025 at 08:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_recipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `image` varchar(100) NOT NULL,
  `ingredients` varchar(1000) NOT NULL,
  `instructions` varchar(1000) NOT NULL,
  `video_url` varchar(100) NOT NULL,
  `suggestions` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `image`, `ingredients`, `instructions`, `video_url`, `suggestions`) VALUES
(1, 'Idli and Dosa', 'images/Idli and Dosa.jpg', '2 cups rice,\r\n½ cup urad dal (black gram),\r\n1 tsp fenugreek seeds,\r\nSalt (to taste),\r\nWater (as needed)', 'Soak: Soak rice, urad dal, and fenugreek seeds separately for 4-6 hours.\r\nGrind: Grind urad dal to a fluffy batter and rice to a slightly coarse batter.\r\nFerment: Mix both batters, add salt, and ferment overnight (8-12 hours).\r\nFor Idly: Pour batter into greased idly molds and steam for 10-12 minutes.\r\nFor Dosa: Spread a ladle of batter on a hot tawa, drizzle oil, and cook until golden brown.\r\nServe: Enjoy hot with chutney & sambar. Serves 3-4 people. 😋', 'https://youtu.be/ztjOkK7Zmhw?si=kk_6XRP2znHwaJna', ''),
(2, 'Idiyappam', 'images/idiyappam.jpg', '2 cups rice flour,\r\n1½ cups hot water,\r\n½ tsp salt,\r\n1 tsp oil', 'Mix: Add salt and oil to hot water, then mix with rice flour to form a soft dough.\r\nPress: Fill the dough into an idiyappam press and squeeze onto greased idly plates.\r\nSteam: Steam for 8-10 minutes until soft and cooked.\r\nServe: Enjoy with coconut milk, kurma, or sugar. Serves 3-4 people. 😋', 'https://youtu.be/P49Y6vekgME?si=SqTiBL43eiomdUrm', ''),
(3, 'Poori', 'images/Poori.jpg', '2 cups wheat flour,\r\n½ tsp salt,\r\n1 tbsp oil/ghee,\r\nWater (as needed),\r\nOil (for deep frying)', 'Knead: Mix flour, salt, and oil. Add water gradually and knead into a firm dough. Rest for 10 mins.\r\nRoll: Divide into small balls and roll into small circles.\r\nFry: Heat oil and deep fry each poori until golden and puffy.\r\nServe: Enjoy hot with potato masala. Serves 3-4 people. 😋', 'https://youtu.be/fUUsqORwxUI?si=qHKOE9xgL_GREdRp', ''),
(4, 'Ven-Pongal and Vada', 'images/Ven-Pongal.jpg', 'Ven Pongal,\r\n1 cup raw rice,\r\n½ cup moong dal,\r\n3 cups water,\r\n1 tsp black pepper,\r\n1 tsp cumin seeds,\r\n1 tbsp ghee,\r\n1 tbsp cashews,\r\n1 tsp grated ginger,\r\nCurry leaves & salt (to taste),\r\nVada,\r\n1 cup urad dal (soaked 4 hrs),\r\n1 tsp black pepper,\r\n1 tsp cumin seeds,\r\n1 tbsp chopped green chilies,\r\n1 tbsp chopped ginger,\r\nFew curry leaves,\r\nSalt (to taste),\r\nOil (for frying)', 'Cook: Pressure cook rice and moong dal with water for 3 whistles.\r\nTemper: Heat ghee, fry cashews, pepper, cumin, ginger, and curry leaves.\r\nMix: Add tempering to cooked rice-dal, mix well.\r\nServe: Enjoy hot with coconut chutney & sambar. Serves 3-4 people.\r\nGrind: Drain urad dal and grind to a fluffy batter. Add spices & mix well.\r\nShape: Wet hands, shape batter into vadas with a hole in the center.\r\nFry: Deep fry in hot oil until golden brown.\r\nServe: Enjoy crispy vadas with coconut chutney. Serves 3-4 people. 😋', 'https://youtu.be/8adariAJHJQ?si=rmY5v2wXMEbNXmaG', ''),
(5, 'Puttu', 'images/Puttu.jpeg', '2 cups rice flour,\r\n½ cup grated coconut,\r\n½ tsp salt,\r\nWater (as needed)', 'Mix: Sprinkle water over rice flour with salt, mix until crumbly.\r\nLayer: In a puttu maker, layer flour mixture and grated coconut.\r\nSteam: Steam for 10-12 minutes until soft and cooked.\r\nServe: Enjoy with banana, sugar, or kadala curry. Serves 3-4 people. 😋', 'https://youtu.be/Isu2GuDYw7E?si=S8XHMRdvqonPenr9', ''),
(6, 'Chapati Kuruma', 'images/chappathi.jpg', 'Chapati,\r\n2 cups wheat flour,\r\n½ tsp salt,\r\n¾ cup water,\r\n1 tbsp oil,\r\nKurma,\r\n1 tbsp oil,\r\n1 bay leaf,\r\n1-inch cinnamon,\r\n2 cloves,\r\n1 onion (chopped),\r\n1 tomato (chopped),\r\n1 tsp ginger-garlic paste,\r\n½ tsp turmeric powder,\r\n1 tsp chili powder,\r\n1 tsp garam masala,\r\n1 cup mixed vegetables,\r\n½ cup coconut paste,\r\n1 tbsp cashew paste,\r\n1 cup water,\r\nSalt (to taste),\r\nCoriander leaves', 'Knead: Mix wheat flour, salt, water, and oil into a soft dough. Rest for 20 mins.\r\nRoll: Divide into small balls and roll into thin circles.\r\nCook: Heat a tawa, cook chapati on both sides until golden brown.\r\nServe: Enjoy warm with kurma. Serves 3-4 people.\r\nSauté: Heat oil, add bay leaf, cinnamon, cloves, and onion. Sauté until golden.\r\nCook: Add tomato, ginger-garlic paste, spices, and cook until mushy.\r\nSimmer: Add vegetables, coconut paste, cashew paste, and water. Cook until thick.\r\nServe: Garnish with coriander and enjoy with chapati. Serves 3-4 people. 😋', 'https://youtu.be/xEQz5DUjAYc?si=2XdDh6KA8Lws_8GM', ''),
(7, 'Appam', 'images/Appam.jpg', '1 cup raw rice,\r\n¼ cup cooked rice,\r\n¼ cup grated coconut,\r\n½ tsp salt,\r\n½ tsp sugar,\r\n½ tsp yeast,\r\n1 cup water', 'Grind: Soak raw rice for 4 hours, then grind with cooked rice, coconut, and water into a smooth batter.\r\nFerment: Add yeast, sugar, and salt. Let it ferment overnight.\r\nCook: Pour batter onto a hot appam pan, swirl to spread, cover, and cook until edges crisp.\r\nServe: Enjoy with coconut milk or kurma. Serves 3-4 people. 😋', 'https://youtu.be/XF5zLP57rw0?si=xCYfJJTJUtbJQpP1', ''),
(8, 'Kara Paniyaram', 'images/Kara Paniyaram.jpg', '1 cup idli/dosa batter,\r\n1 onion (finely chopped),\r\n1 green chili (chopped),\r\n1 tsp ginger (grated),\r\n1 tbsp grated coconut,\r\n½ tsp mustard seeds,\r\n½ tsp cumin seeds,\r\nFew curry leaves,\r\n1 tbsp coriander leaves,\r\n1 tbsp oil,\r\nSalt (to taste)', 'Temper: Heat oil, splutter mustard seeds, cumin, curry leaves, and add to batter.\r\nMix: Add onions, chilies, ginger, coconut, coriander, and salt. Mix well.\r\nCook: Pour batter into a greased paniyaram pan, cook until golden on both sides.\r\nServe: Enjoy hot with coconut chutney. Serves 3-4 people. 😋', 'https://youtu.be/zJ4KcIM2Ey8?si=kQe5F9vuxI40lvfz', ''),
(9, 'Rava Upma', 'images/RavaUpma.jpg', '1 cup rava (semolina),\r\n2 cups water,\r\n1 onion (chopped),\r\n1 green chili (chopped),\r\n1 tsp ginger (grated),\r\n1 tsp mustard seeds,\r\n½ tsp cumin seeds,\r\nFew curry leaves,\r\n1 tbsp oil,\r\n1 tbsp ghee,\r\n1 tbsp chopped coriander,\r\nSalt (to taste)', 'Roast: Dry roast rava until aromatic, set aside.\r\nTemper: Heat oil, splutter mustard, cumin, and curry leaves. Add onions, chilies, and ginger.\r\nCook: Pour water, add salt, and bring to a boil. Slowly add rava while stirring.\r\nFinish: Add ghee, mix well, and garnish with coriander.\r\nServe: Enjoy hot with coconut chutney. Serves 3-4 people. 😋', 'https://youtu.be/cAoYsLXUKGI?si=dCgTr2zQ6GmOkrHT', ''),
(10, 'Curd Rice', 'images/curd-rice-1656941144_9090ca2d96a42ce99db2.webp', '1 cup cooked rice,\r\n1 cup curd,\r\n¼ cup milk,\r\n1 green chili (chopped),\r\n1 tsp ginger (grated),\r\n1 tsp mustard seeds,\r\n½ tsp cumin seeds,\r\nFew curry leaves,\r\n1 tbsp coriander leaves,\r\n1 tbsp pomegranate seeds,\r\n1 tbsp oil,\r\nSalt (to taste)', 'Mash: Mash cooked rice, mix with curd, milk, and salt.\r\nTemper: Heat oil, splutter mustard, cumin, curry leaves, green chili, and ginger.\r\nMix: Add tempering to rice, mix well, and garnish with coriander and pomegranate.\r\nServe: Enjoy chilled or at room temperature. Serves 3-4 people. 😋', 'https://youtu.be/VFpzansM-XM?si=l4bw9ndivIvc3TOl', ''),
(11, 'Sambar Rice', 'images/sambar_rice_desktop_main_image_519x620.webp', '1 cup cooked rice,\r\n½ cup toor dal (cooked),\r\n1 onion (chopped),\r\n1 tomato (chopped),\r\n½ cup mixed vegetables,\r\n1 tamarind small lemon-sized (soaked in water),\r\n1 tsp mustard seeds,\r\n½ tsp cumin seeds,\r\n1 dried red chili,\r\nFew curry leaves,\r\n1 tbsp sambar powder,\r\n½ tsp turmeric powder,\r\n1 tbsp coriander leaves,\r\n1 tbsp ghee,\r\n1 tbsp oil,\r\nSalt (to taste)', 'Cook: Pressure cook toor dal until soft and mash well.\r\nSauté: Heat oil, splutter mustard, cumin, red chili, and curry leaves. Add onions, tomatoes, and vegetables.\r\nSimmer: Add tamarind extract, sambar powder, turmeric, salt, and cooked dal. Simmer for 10 minutes.\r\nMix: Add cooked rice, mix well, and finish with ghee and coriander leaves.\r\nServe: Enjoy hot with papad and pickle. Serves 3-4 people. 😋', 'https://youtu.be/NQpnf7M5K7Y?si=re_JftoYtk5m46YA', ''),
(12, 'Puliyodarai Rice', 'images/puliyogare.jpg', '2 cups cooked rice,\r\n1 lemon-sized tamarind (soaked in water),\r\n2 dried red chilies,\r\n1 tsp mustard seeds,\r\n1 tsp cumin seeds,\r\n1 tbsp chana dal,\r\n1 tbsp urad dal,\r\n2 tbsp peanuts,\r\nFew curry leaves,\r\n½ tsp turmeric powder,\r\n1 tbsp sesame seeds powder,\r\n1 tsp jaggery,\r\n1 tbsp oil,\r\nSalt (to taste)', 'Extract: Squeeze tamarind to get thick pulp, set aside.\r\nTemper: Heat oil, splutter mustard, cumin, red chilies, dals, peanuts, and curry leaves.\r\nCook: Add tamarind pulp, turmeric, salt, jaggery, and simmer until thick.\r\nMix: Add cooked rice, sesame powder, and mix well.\r\nServe: Enjoy with papad or curd. Serves 3-4 people. 😋', 'https://youtu.be/We8Kdc0cWGA?si=Denaig5uPhA3SjgR', ''),
(13, 'Ulundu Rice', 'images/ulundu-sadam.jpg', '1 cup raw rice,\r\n¼ cup split urad dal,\r\n2 cups water,\r\n½ cup coconut (grated),\r\n1 tsp mustard seeds,\r\n1 tsp cumin seeds,\r\nFew curry leaves,\r\n1 dried red chili,\r\n1 tbsp ghee,\r\n1 tbsp oil,\r\nSalt (to taste)', 'Cook: Pressure cook rice and urad dal with water until soft.\r\nTemper: Heat oil, splutter mustard, cumin, red chili, and curry leaves.\r\nMix: Add grated coconut, tempering to cooked rice, and mix well.\r\nServe: Enjoy warm with moong dal kootu or chutney. Serves 3-4 people. 😋', 'https://youtu.be/m93_nUQVCU8?si=L25taUQ8J0vEQCqp', ''),
(14, 'Coconut-Rice', 'images/coconut-rice.jpg', '2 cups cooked rice,\r\n1 cup grated coconut,\r\n1 tsp mustard seeds,\r\n1 tsp cumin seeds,\r\n1 tbsp chana dal,\r\n1 tbsp urad dal,\r\n2 green chilies (chopped),\r\nFew curry leaves,\r\n1 tbsp cashews,\r\n1 tbsp ghee,\r\n1 tbsp oil,\r\nSalt (to taste)', 'Temper: Heat oil and ghee, splutter mustard, cumin, dals, green chilies, cashews, and curry leaves.\r\nSauté: Add grated coconut, sauté for a minute.\r\nMix: Add cooked rice, salt, and mix well.\r\nServe: Enjoy with pickle or papad. Serves 3-4 people. 😋', 'https://youtu.be/Ry4BUn2Ku_g?si=ihk9IDVmcj-fOSQ_', ''),
(15, 'Urundai Kuzhambu', 'images/paruppu-urundai-kuzhambu2.webp', '½ cup toor dal,\r\n2 dried red chilies,\r\n1 tsp fennel seeds,\r\n1 tbsp grated coconut,\r\nFew curry leaves,\r\n1 tbsp coriander leaves,\r\nSalt (to taste)', '1 small lemon-sized tamarind (soaked in water),\r\n1 onion (chopped),\r\n1 tomato (chopped),\r\n1 tsp mustard seeds,\r\n1 tsp cumin seeds,\r\n1 tbsp sambar powder,\r\n½ tsp turmeric powder,\r\nFew curry leaves,\r\n1 tbsp oil,\r\nSalt (to taste)', 'https://youtu.be/gQqFi060QTk?si=y07Fy8Q4kUgOF1Jn', ''),
(16, 'Puli Kuzhambu', 'images/puli-kuzhambu-1.jpg', '1 lemon-sized tamarind (soaked in water),\r\n1 onion (chopped),\r\n1 tomato (chopped),\r\n4 garlic cloves,\r\n1 tsp mustard seeds,\r\n1 tsp cumin seeds,\r\n1 dried red chili,\r\nFew curry leaves,\r\n1 tbsp sambar powder,\r\n½ tsp turmeric powder,\r\n1 tbsp sesame oil,\r\nSalt (to taste)', 'Extract: Squeeze tamarind to get thick pulp, set aside.\r\nTemper: Heat oil, splutter mustard, cumin, red chili, and curry leaves. Add garlic and onions, sauté until golden.\r\nSimmer: Add tomatoes, sambar powder, turmeric, salt, and tamarind extract. Cook for 10 minutes.\r\nServe: Enjoy hot with steamed rice. Serves 3-4 people. 😋', 'https://youtu.be/v2rYhaKP1Sc?si=Nw6JIvHjYCJt9xN0', ''),
(17, 'Vathakuzhambu', 'images/vathakuzhambu-1656939760_74aac2d0b5655154a824.webp', '1 lemon-sized tamarind (soaked in water),\r\n10 small shallots,\r\n4 garlic cloves,\r\n1 tsp mustard seeds,\r\n1 tsp fenugreek seeds,\r\n1 dried red chili,\r\nFew curry leaves,\r\n1 tbsp sambar powder,\r\n½ tsp turmeric powder,\r\n1 tbsp rice flour (optional, for thickness),\r\n2 tbsp sesame oil,\r\nSalt (to taste)', 'Extract: Squeeze tamarind to get thick pulp, set aside.\r\nTemper: Heat oil, splutter mustard, fenugreek, red chili, and curry leaves. Add shallots and garlic, sauté until golden.\r\nSimmer: Add tamarind extract, sambar powder, turmeric, salt, and cook until thick. If needed, add rice flour mixed with water for thickness.\r\nServe: Enjoy hot with steamed rice and appalam. Serves 3-4 people. 😋', 'https://youtu.be/JgH5UvCNhX8?si=ZHIMfrKpuHrOg80w', ''),
(18, 'Tirunelveli Sodhi', 'images/Sodhi.jpg', '1 cup mixed vegetables (carrot, beans, potato),\r\n1 onion (sliced),\r\n1 green chili (slit),\r\n1-inch ginger (chopped),\r\n1 cup coconut milk (thick),\r\n1 cup coconut milk (thin),\r\n½ cup moong dal (cooked),\r\n1 tsp mustard seeds,\r\nFew curry leaves,\r\n1 tbsp lemon juice,\r\n1 tbsp coconut oil,\r\nSalt (to taste)', 'Cook: Boil vegetables with thin coconut milk, green chili, and ginger until soft.\r\nMix: Add cooked moong dal, salt, and thick coconut milk. Simmer on low heat.\r\nTemper: Heat coconut oil, splutter mustard seeds and curry leaves, then add to sodhi.\r\nFinish: Turn off heat, add lemon juice, and mix well.\r\nServe: Enjoy warm with idiyappam or rice. Serves 3-4 people. 😋', 'https://youtu.be/sosT0JyAhiw?si=4qiLNQzoxNTXzDIA', ''),
(19, 'Pepper Rasam', 'images/Pepper-rasam-Rice.jpg', '1 small lemon-sized tamarind (soaked in water),\r\n1 tsp black pepper (coarsely ground),\r\n1 tsp cumin seeds (coarsely ground),\r\n1 tomato (chopped),\r\n3 garlic cloves (crushed),\r\n1 tsp mustard seeds,\r\n½ tsp turmeric powder,\r\nFew curry leaves,\r\n1 tbsp coriander leaves,\r\n1 tbsp ghee,\r\n3 cups water,\r\nSalt (to taste)', 'Extract: Squeeze tamarind to get a thin pulp, set aside.\r\nSimmer: In a pot, add tamarind pulp, tomato, turmeric, garlic, pepper, cumin, salt, and water. Simmer for 5 minutes.\r\nTemper: Heat ghee, splutter mustard seeds and curry leaves, then add to rasam.\r\nFinish: Garnish with coriander leaves and serve hot.\r\nServe: Enjoy with rice or as a soup. Serves 3-4 people. 😋', 'https://youtu.be/EhFJcQwxWf0?si=H4wUwz2TQr8AxPad', ''),
(20, 'Veg Biriyani', 'images/istockphoto-179085494-612x612.jpg', '1 cup basmati rice,\r\n1½ cups water,\r\n½ cup mixed vegetables (carrot beans peas potato),\r\n1 onion (sliced),\r\n1 tomato (chopped),\r\n1 tbsp ginger-garlic paste,\r\n1 green chili (slit),\r\n1 bay leaf,\r\n1-inch cinnamon,\r\n2 cloves,\r\n1 cardamom,\r\n½ tsp turmeric powder,\r\n1 tsp chili powder,\r\n1 tsp garam masala,\r\n½ cup curd,\r\n1 tbsp ghee,\r\n1 tbsp oil,\r\n1 tbsp mint leaves,\r\n1 tbsp coriander leaves,\r\nSalt (to taste)', 'Sauté: Heat oil and ghee, add bay leaf, cinnamon, cloves, cardamom, onions, and sauté until golden.\r\nCook Spices: Add ginger-garlic paste, green chili, tomatoes, and all spice powders. Cook until mushy.\r\nMix: Add vegetables, curd, mint, coriander, and sauté for 2 minutes.\r\nCook Rice: Add washed basmati rice, water, and salt. Cook covered until rice is fluffy.\r\nServe: Enjoy hot with raita. Serves 3-4 people. 😋', 'https://youtu.be/X4f6bv-Modg?si=aUcqlCyR3sMC_0Sp', ''),
(21, 'TN Meals', 'images/meals.jpg', 'Steamed Rice,\r\nSambar,\r\nRasam,\r\nPoriyal (Vegetable Stir-fry),\r\nKootu (Lentil-Vegetable Curry),\r\nCurd,\r\nPickle,\r\nAppalam,\r\nGhee (optional)', 'Cook Rice: Steam rice until soft and fluffy.\r\nPrepare Sambar: Cook toor dal, tamarind, vegetables, and sambar powder. Simmer well.\r\nPrepare Rasam: Boil tamarind water, tomatoes, and spices. Temper with mustard and curry leaves.\r\nMake Poriyal: Sauté chopped vegetables with mustard, coconut, and chilies.\r\nPrepare Kootu: Cook vegetables with dal and coconut paste.\r\nServe: Arrange all dishes on a banana leaf or plate. Enjoy with ghee and appalam. Serves 4-5 people. 😋', 'https://youtu.be/jZVChH4811M?si=KczsO2FDZvUcM6n6', ''),
(22, 'Milk Payasam', 'images/semiya-payasam.jpg', '½ cup raw rice,\r\n4 cups milk,\r\n½ cup sugar,\r\n2 tbsp condensed milk (optional),\r\n1 tbsp ghee,\r\n10 cashews,\r\n10 raisins,\r\n½ tsp cardamom powder,\r\nFew saffron strands (optional)', 'Cook Rice: Boil milk, add washed rice, and cook on low heat until soft.\r\nSweeten: Add sugar, condensed milk, and mix well. Simmer until thick.\r\nTemper: Heat ghee, fry cashews and raisins, then add to payasam.\r\nFinish: Add cardamom powder and saffron. Stir well.\r\nServe: Enjoy warm or chilled. Serves 3-4 people. 😋', 'https://youtu.be/kyt5fCDiY50?si=ew8QgGJziXHm-f-t', ''),
(23, 'Achu Murukku', 'images/Achu Murukku.jpeg', '1 cup rice flour,\r\n¼ cup maida (all-purpose flour),\r\n¼ cup sugar,\r\n½ cup coconut milk,\r\n1 egg (optional),\r\n½ tsp cardamom powder,\r\n1 tsp sesame seeds,\r\n1 pinch salt,\r\nOil (for deep frying)', 'Prepare Batter: Mix rice flour, maida, sugar, cardamom, sesame seeds, salt, egg (if using), and coconut milk. Make a smooth batter.\r\nHeat Oil: Heat oil and dip the achu murukku mold in it for a few seconds.\r\nFry Murukku: Dip the hot mold into the batter, then immediately place it in the oil. Shake gently to release the murukku.\r\nCrisp & Drain: Fry until golden brown, remove, and drain excess oil.\r\nServe: Enjoy crispy achu murukku with tea. Serves 3-4 people. 😋', 'https://youtu.be/llClL1grpmA?si=IkUemHTFK8A5GqUy', ''),
(24, 'Athirasam', 'images/athirasam.jpg', '1 cup raw rice,\r\n¾ cup jaggery,\r\n¼ cup water,\r\n½ tsp cardamom powder,\r\n1 tbsp ghee,\r\nOil (for deep frying)', 'Prepare Rice Flour: Soak rice for 2 hours, drain, and grind into fine flour.\r\nMake Jaggery Syrup: Heat jaggery with water until it reaches a soft ball consistency.\r\nMix Dough: Add jaggery syrup to rice flour, mix well, and rest for 8 hours.\r\nShape & Fry: Take small portions, flatten into discs, and deep-fry in oil until golden brown.\r\nServe: Enjoy soft and chewy athirasam. Serves 3-4 people. 😋', 'https://youtu.be/qPe-X1SJGlg?si=CQ451QRMBAcf4b55', ''),
(25, 'Nei-Urundai', 'images/Nei-urundai.jpg', '1 cup roasted gram dal (pottukadalai),\r\n¾ cup powdered sugar,\r\n½ tsp cardamom powder,\r\n¼ cup ghee (melted)', 'Grind: Powder roasted gram dal finely and sieve it.\r\nMix: Add powdered sugar and cardamom powder to the flour.\r\nBind: Pour warm melted ghee gradually and mix well.\r\nShape: Form small ladoos by pressing the mixture tightly.\r\nServe: Enjoy soft nei urundai. Serves 3-4 people. 😋', 'https://youtu.be/AMFKT6_NrwY?si=Q7CW_7IUpDY10tJ1', ''),
(26, 'Sweet Paniyaram', 'images/Sweet Panniyaram.jpg', '1 cup raw rice,\r\n½ cup jaggery,\r\n¼ cup grated coconut,\r\n½ tsp cardamom powder,\r\n1 ripe banana (mashed),\r\n1 pinch salt,\r\n½ tsp baking soda (optional),\r\n1 tbsp ghee,\r\nOil (for frying)', 'Prepare Batter: Soak rice for 2 hours, grind into a smooth batter with jaggery, coconut, banana, cardamom, and salt. Rest for 30 minutes.\r\nHeat Pan: Grease a paniyaram pan with ghee and heat.\r\nCook Paniyaram: Pour batter into the molds, cook on low flame until golden brown on both sides.\r\nServe: Enjoy warm as a snack. Serves 3-4 people. 😋', 'https://youtu.be/-NHMOP6bO8w?si=3JjuMhD-i3KAlTh8', ''),
(27, 'Rava-Ladoo', 'images/Rava-ladoo.jpg', '1 cup rava (semolina),\r\n¾ cup powdered sugar,\r\n¼ cup ghee,\r\n2 tbsp grated coconut,\r\n10 cashews,\r\n10 raisins,\r\n½ tsp cardamom powder,\r\n2 tbsp warm milk (if needed)', 'Roast Rava: Heat 1 tbsp ghee, roast rava on low flame until aromatic.\r\nMix: Add powdered sugar, cardamom powder, grated coconut, cashews, and raisins.\r\nBind: Pour warm ghee gradually and mix well. Add a little milk if needed.\r\nShape: Form small ladoos while the mixture is warm.\r\nServe: Enjoy soft rava ladoos. Serves 3-4 people. 😋', 'https://youtu.be/v85cIhXhrys?si=SFpcZKe0psSeZrUS', ''),
(28, 'Mixture', 'images/mixture.jpg', '1 cup kara boondi,\r\n1 cup sev,\r\n½ cup roasted peanuts,\r\n½ cup fried cashews,\r\n½ cup aval (poha),\r\n1 tsp red chili powder,\r\n½ tsp turmeric powder,\r\nFew curry leaves,\r\n1 tbsp powdered sugar,\r\nSalt (to taste),\r\n1 tbsp ghee', 'Fry Poha & Curry Leaves: Heat ghee, fry poha until crisp. Add curry leaves and fry.\r\nMix: In a bowl, combine kara boondi, sev, fried nuts, and poha.\r\nSeason: Add chili powder, turmeric, powdered sugar, and salt. Mix well.\r\nServe: Enjoy crunchy mixture as a snack. Serves 3-4 people. 😋', 'https://youtu.be/DvNCm4DXr1g?si=iDB2pd3Gs5bXYZFo', ''),
(29, 'Murukku', 'images/murukku.jpg', '2 cups rice flour,\r\n½ cup urad dal flour,\r\n1 tsp sesame seeds,\r\n1 tsp cumin seeds,\r\n1 tbsp butter,\r\n½ tsp asafoetida,\r\nSalt (to taste),\r\nWater (as needed),\r\nOil (for deep frying)', 'Prepare Dough: Mix rice flour, urad dal flour, sesame seeds, cumin, butter, asafoetida, and salt. Add water gradually to make a soft dough.\r\nShape Murukku: Fill dough into a murukku press and shape spirals onto a greased plate.\r\nFry: Heat oil and deep-fry murukku until golden brown and crispy.\r\nServe: Enjoy crunchy murukku with tea. Serves 3-4 people. 😋', 'https://youtu.be/Xnp50GCLYQ8?si=ed6hOPkASNSprtnL', ''),
(30, 'Karasev', 'images/Karasev.jpg', '1 cup besan (gram flour),\r\n¼ cup rice flour,\r\n1 tsp black pepper (crushed),\r\n½ tsp red chili powder,\r\n1 pinch asafoetida,\r\n1 tbsp butter,\r\nSalt (to taste),\r\nWater (as needed),\r\nOil (for deep frying)', 'Prepare Dough: Mix besan, rice flour, black pepper, chili powder, asafoetida, butter, and salt. Add water to make a soft dough.\r\nShape Sev: Use a kara sev grater or a large-holed sieve to press dough into hot oil.\r\nFry: Deep-fry on medium flame until golden and crispy.\r\nServe: Enjoy spicy kara sev as a snack. Serves 3-4 people. 😋', 'https://youtu.be/vub4GPYXE1w?si=vu042dId64FXg-66', ''),
(31, 'Seeval', 'images/Seeval.jpg', '1 cup besan (gram flour),\r\n½ cup rice flour,\r\n1 tsp red chili powder,\r\n½ tsp turmeric powder,\r\n½ tsp cumin seeds,\r\n1 tbsp butter,\r\n1 pinch asafoetida,\r\nSalt (to taste),\r\nWater (as needed),\r\nOil (for deep frying)', 'Prepare Dough: Mix besan, rice flour, chili powder, turmeric, cumin, asafoetida, butter, and salt. Add water to form a soft dough.\r\nShape Seeval: Use a ribbon pakoda press to squeeze dough into hot oil.\r\nFry: Deep-fry on medium heat until crispy and golden brown.\r\nServe: Enjoy crunchy seeval with tea. Serves 3-4 people. 😋', 'https://youtu.be/84f8gp9Rxw0?si=XkSu_PGyw0Y5POi6', ''),
(32, 'Onion-Pakoda', 'images/onion-pakoda.jpg', '2 onions (sliced),\r\n1 cup besan (gram flour),\r\n¼ cup rice flour,\r\n1 tsp red chili powder,\r\n½ tsp turmeric powder,\r\n½ tsp cumin seeds,\r\n1 pinch asafoetida,\r\nFew curry leaves (chopped),\r\n1 tbsp hot oil,\r\nSalt (to taste),\r\nWater (as needed),\r\nOil (for deep frying)', 'Prepare Mixture: Mix onions, besan, rice flour, chili powder, turmeric, cumin, asafoetida, curry leaves, and salt. Add hot oil and mix well.\r\nBind: Sprinkle little water and mix to form a coarse mixture (not a thick batter).\r\nFry: Heat oil and drop small portions of the mixture into it. Fry until golden and crispy.\r\nServe: Enjoy hot onion pakoda with tea. Serves 3-4 people. 😋', 'https://youtu.be/0Y-YZS_Ecdo?si=oKUlK7xb9plTpSJz', ''),
(33, 'Banana-chips', 'images/Banana-chips.jpeg', '2 raw bananas,\r\n½ tsp turmeric powder,\r\n½ tsp salt,\r\nWater (as needed),\r\nOil (for deep frying)', 'Peel & Slice: Peel raw bananas and slice them thinly using a slicer.\r\nSoak: Mix turmeric powder and salt in water. Soak banana slices for 5 minutes. Drain and pat dry.\r\nFry: Heat oil, drop banana slices in batches, and fry on medium flame until crisp.\r\nServe: Enjoy crunchy banana chips. Serves 3-4 people. 😋', 'https://youtu.be/_7CqPPkEwsQ?si=bYWdlEIlFmR2Sd3b', '');

-- --------------------------------------------------------

--
-- Table structure for table `userrecipes`
--

CREATE TABLE `userrecipes` (
  `id` int(11) NOT NULL,
  `rcname` varchar(18) NOT NULL,
  `rcdes` varchar(100) NOT NULL,
  `rcing` varchar(100) NOT NULL,
  `rcins` varchar(100) NOT NULL,
  `ddd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userrecipes`
--

INSERT INTO `userrecipes` (`id`, `rcname`, `rcdes`, `rcing`, `rcins`, `ddd`) VALUES
(2, 'Water', 'good', 'Water', 'Drink', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userrecipes`
--
ALTER TABLE `userrecipes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `userrecipes`
--
ALTER TABLE `userrecipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
