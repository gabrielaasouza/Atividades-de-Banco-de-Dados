# 📘 Atividades-de-Banco-de-Dados
Aqui você encontrará atividades propostas para o estudo de Banco de Dados. Elas foram feitas utilizando o MySQL Workbench.
Decidi coloca-las em um único repositório para poder acompanhar meu desemvolvimento na matéria conforme as realizo.

<!-- * [1. E o Oscar vai para... ?](##-🔹E-o-Oscar-vai-para...-?) -->

## 🔹E o Oscar vai para... ?
<div align="center">
<img src='https://github.com/gabrielaasouza/Atividades-de-Banco-de-Dados/blob/main/Imagens/oscars.png' width="30%"/>
</div>
<br>
Prêmios têm sim o seu valor, mas que eles não são o único indicador de sucesso. É claro que é sempre bom ser reconhecido pelo nosso trabalho e ter um troféu ou uma placa para pendurar na parede, mas o mais importante mesmo é a satisfação pessoal que sentimos quando fazemos algo que amamos e que acreditamos ser importante. Então, sim, prêmios importam, mas não devemos deixá-los ser o único fator que determina o nosso sucesso e a nossa felicidade.
Aqui você irá estudar enquanto trabalha com dados sobre os premiados do Oscar.

<h3>1. Quantas vezes Natalie Portman foi indicada ao Oscar?</h3>
Natalie Portman foi indicada ao Oscar três vezes.
<br>
<code>SELECT COUNT(*) from `movies` WHERE name LIKE "%Natalie Portman%";</code>

<h3>2. Quantos Orcars Natelie Portman ganhou?</h3>
Natalie Portman ganhou um Oscar.
<br>
<code>SELECT COUNT(*) from `movies` WHERE name LIKE "%Natalie Portman%" AND winner = 'True';</code>

<h3>3. Amy Adams já ganhou algum Oscar?</h3>
Amy Adams nunca ganhou um Oscar.
<br>
<code>SELECT COUNT(*) from `movies` WHERE name LIKE "%Amy Adams%" AND winner = 'True';</code>

<h3 >4. A série de filmes Toy Story ganhou um Oscar em quais anos?</h3>
A série Toy Story ganhou o Oscar em dois anos: 2011 e 2020.
<br>
<code>SELECT year_ceremony from `movies` WHERE film LIKE "%Toy Story%" AND winner = 'True';</code>

<h3>5. Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?</h3>
Melhor filme tem mais Oscars, com 74 contra 49 de melhor ator. <br>
<code>SELECT COUNT(category) from movies WHERE category = 'actor' AND winner = '1';</code><br>
<code>SELECT COUNT(category) from movies WHERE category = 'best picture' AND winner = '1';</code><br>
<code>SELECT COUNT(category) from movies WHERE category = 'outstanding picture' AND winner = '1';</code><br>
<code>SELECT COUNT(category) from movies WHERE category = 'outstanding production' AND winner = '1';</code><br>
<code>SELECT COUNT(category) from movies WHERE category = 'outstanding motion picture' AND winner = '1';</code><br>

<h3>6. O primeiro Oscar para melhor Atriz foi para quem? Em que ano?</h3>
Janet Gaynor foi a primeira atriz a ganhar o Oscar de melhor Atriz, em 1928.
<br>
<code>SELECT * from movies WHERE category = 'actress' AND winner = 'True';</code>

<h3>7. Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0. </h3>
<br>
<code>UPDATE movies SET winner = 0 WHERE winner = 'False';</code><br>
<code>UPDATE movies SET winner = 1 WHERE winner = 'True';</code>

<h3>8. Em qual edição do Oscar "Crash" ganhou o prêmio principal? </h3>
Na edicação de 2006 do Oscar.
<br>
<code>SELECT * from movies WHERE film LIKE "%Crash%" AND winner = 'True';</code>

<h3>9. Bom... dê um Oscar para um filme que merece muito, mas não ganhou. </h3>
Whisper of the Heart. Shizuku e Seiji, nossos queridos do romances.
<br>
<code>USE movies_data;</code><br>
<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code> <br>
<code>VALUES ('2002', '2003', '75', 'ANIMATED FEATURE FILM', 'Yoshifumi Kondō', 'Whisper of the Heart', 'True');</code><br>
<code>SELECT * from `movies` WHERE 'film' LIKE 'Whisper of the Heart';</code>

<h3>10. O filme Central do Brasil aparece no Oscar? </h3>
Sim, ele concorreu no Oscar de 1999.
<br>
<code>SELECT * from `movies` WHERE name LIKE "%Brazil%";</code>

<h3>11. Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem.</h3>
Vamos premiar os injustiçados: Toc Toc; O Castelo Animado; Barbie e as Doze Princesas Bailarinas.
<br>
<code>USE movies_data;</code><br>
<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code> <br>
<code>VALUES ('2018', '2018', '90', 'WRITING (Original Motion Picture Story)', 'Vicente Villanueva', 'Toc Toc', 'True');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code> <br>
<code>VALUES ('2005', '2006', '78', 'ANIMATED FEATURE FILM', 'Hayao Miyazaki', 'O Castelo Animado', 'True');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code><br>
<code>VALUES ('2006', '2007', '79', 'ANIMATED FEATURE FILM', 'Greg Richardson, Terry Klassen', 'Barbie e as Doze Princesas Bailarinas', 'True');</code>

<h3>12. Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.</h3>
<br>
<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code> <br>
<code>VALUES ('2018', '2018', '90', 'BEST COMEDY MOVIE', 'Vicente Villanueva', 'Toc Toc', 'True');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code> <br>
<code>VALUES ('2005', '2006', '78', 'BEST FILM EVER', 'Hayao Miyazaki', 'O Castelo Animado', 'True');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code><br>
<code>VALUES ('2006', '2007', '79', 'BEST FILM EVER', 'Greg Richardson, Terry Klassen', 'Barbie e as Doze Princesas Bailarinas', 'True');</code>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code> <br>
<code>VALUES ('2002', '2003', '75', 'BEST FILM EVER', 'Yoshifumi Kondō', 'Whisper of the Heart', 'True');</code>

<h3>13. Qual foi o primeiro ano a ter um prêmio do Oscar?</h3>
1928 foi o primeiro ano a ter um prêmio do Oscar.
<br>
<code>SELECT * from movies;</code>

<h3>14. Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?</h3>
Em 2003, o melhor filme foi Chicago, Adrien Brody ganhou o prêmio de Melhor Ator e Nicole Kidman o de Melhor Atriz.
<h4> Melhor filme</h4>
<code>SELECT * FROM movies where year_ceremony like '2003' and category like '%BEST PICTURE%' and winner = 1;</code>

<h4>Melhor Atriz</h4>
<code>SELECT * FROM movies where year_ceremony like '%2003%' and category like '%ACTRESS%' and winner = 1;</code>

<h4>Melhor diretor</h4>
<code>SELECT * FROM movies where year_ceremony like '%2003%' and category like '%DIRECTING%' and winner = 1;</code>

<h3>15. Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.</h3> 
<br>
<code>USE movies_data;</code>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code><br>
<code>VALUES ('2005', '2006', '79', 'ACTRESS IN A SUPPORTING ROLE', 'Zhang Ziyi', 'Memórias de uma Gueixa', 'False');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code><br>
<code>VALUES ('2006', '2007', '80', 'ACTRESS IN A SUPPORTING ROLE', 'Rinko Kikuchi', 'Babel', 'False');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code><br>
<code>VALUES ('2018', '2019', '91', 'ACTRESS IN A SUPPORTING ROLE', 'Yalitza Aparicio', 'Roma', 'False');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code><br>
<code>VALUES ('2003', '2004', '76', 'ACTRESS IN A SUPPORTING ROLE', 'Shohreh Aghdashloo', 'Casa de Areia e Névoa', 'False');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code><br>
<code>VALUES ('2004', '2005', '77', 'ACTRESS IN A SUPPORTING ROLE', 'Catalina Sandino Moreno', 'Maria Cheia de Graça', 'False');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code><br>
<code>VALUES ('2010', '2011', '83', 'ACTRESS IN A SUPPORTING ROLE', 'Hailee Steinfeld', 'Bravura Indômita', 'False');</code><br>

<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code><br>
<code>VALUES ('2003', '2004', '75', 'ACTRESS IN A SUPPORTING ROLE', 'Keisha Castle-Hughes', 'A Encantadora de Baleias', 'False')</code>

<h3>16. Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece?</h3>
Eziládia, ela deixa a minha vida mais colorida. Ela merece o prêmio de melhor pessoa, mas hoje vamos dar o de Melhor Atriz.
<br>
<code>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)</code> <br>
<code>VALUES ('2023', '2024', '96', 'ACTRESS', 'Eziládia Araújo', 'Everything Everywhere All at Once', '1');</code><br>

<br>
<div align="center">
<img src='https://github.com/gabrielaasouza/Atividades-de-Banco-de-Dados/blob/main/Imagens/Oscar-2023.jpg' width="50%"/>
</div>


