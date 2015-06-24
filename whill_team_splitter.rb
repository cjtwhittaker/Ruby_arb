def whill_team_splitter(both_teams, team_a_array, team_b_array)
  both_teams.each do |z|
    team_a_array << z[/(([A-Z]*[a-z]*)(\s[A-Z]+[a-z]+)?)(?<!\sv\s)/]
  end

  both_teams.each do |z|
    team_b_array << z[/(?<=v\s)(([A-Z]*[a-z]*)\s*)*$/]
  end
end

Alexandr Dolgopolov   v   Guillermo Garcia-Lopez
John Isner   v   Feliciano Lopez
Gilles Muller   v   Grigor Dimitrov
Marin Cilic   v   Viktor Troicki
Andy Murray   v   Fernando Verdasco
Jerzy Janowicz   v   Alejandro Falla
Dustin Brown   v   Kei Nishikori
Tommy Robredo   v   Andreas Seppi
Mikhail Kukushkin   v   Gael Monfils
Pierre-Hugues Herbert/Nicolas Mahut   v   Lleyton Hewitt/Thanasi Kokkinakis
A Medina Garrigues/Arantxa Parra-Santonja   v   Simona Halep/Heather Watson
Hao-Ching Chan/Andreja Klepac   v   Timea Babos/Kristina Mladenovic
Andrea Hlavackova/Lucie Hradecka   v   Jocelyn Rae/Anna Smith
Marin Draganja/Henri Kontinen   v   Rohan Bopanna/Florin Mergea
Yuki Bhambri   v   Joshua Milton
Ivan Dodig   v   Alex Bolt
Grega Zemlja   v   Dudi Sela
Horacio Zeballos   v   Tristan Lamasine
Renzo Olivo   v   Gianni Mina
Gleb Sakharov   v   Daniel Munoz-De La Nava
Pablo Carreno-Busta   v   Gianluca Mager
Stefano Travaglia   v   Ruben Ramirez-Hidalgo
Oriol Roca Batalla   v   Jose Hernandez-Fernandez
Marco Cecchinato   v   Gianluca Naso
Evgeny Donskoy   v   Nikola Milojevic
Laurynas Grigelis   v   Ti Chen
Denys Molchanov   v   Duck Hee Lee
Annika Beck   v   Julia Glushko
Paula Kania   v   Anna-Lena Friedsam
Luksika Kumkhum   v   Magda Linette
Kimiko Date-Krumm   v   Denisa Allertova
Chang Liu   v   Erika Sema
Risa Ozaki   v   Vojislava Lukic
Sung Hee Kim   v   Jia-Jing Lu
Lauren Albanese   v   Ya-Hsuan Lee
Nudnida Luangnam   v   Na-Lae Han
Kai-Chen Chang   v   Kristie Ahn
Ji-Hee Choi   v   Xinyun Han
Kyoka Okamura   v   Mi Jeong Kwon
Kourtney J. Keegan   v   Michaela Gordon
Nadja Gilchrist   v   Samantha Crawford
Di Zhao   v   Jiaxi Lu
Jiahui Chen   v   Jia Qi Kang
Yixuan Li   v   Sowjanya Bavisetti
Xinyu Gao   v   Shou Na Mu
Seong-Gook Oh   v   Marcos Giraldi Requena
Liang-Chi Huang   v   Cheng-Peng Hsieh
Chih-Jen Ho   v   Jui-Chen Hung
Yecong He   v   Yu Hsiang Chiu
Mohit Mayur Jayaprakash   v   Vishnu Vardhan
Alexandre Muller   v   Rishab Agarwal
Gustavo Vellbach   v   Antoine Escoffier
Niki Kaliyanda Poonacha   v   Sumit Nagal
Sebastien Boltz   v   Daniel Cukierman
Dekel Bar   v   Tom Jomby
Mor Bulis   v   Edan Leshem
Bar Tzuf Botzer   v   Amir Weintraub
Arata Onozawa   v   Renta Tokuda
Yusuke Takahashi   v   Yuya Kibi
Tetsuro Habusawa   v   Yusuke Watanuki
Jumpei Yamasaki   v   Ben Mclachlan
Hiroyasu Ehara   v   Koichi Sano
Keisuke Numajiri   v   Ju-Hae Moon
Hiromasa Oku   v   Makoto Ochi
Ryota Tanuma   v   Katsuki Nagao
Maxim Dubarenco   v   Ivan Gakhov
Evgeny Elistratov   v   Vladyslav Manafov
Vladimir Uzhylovsky   v   Alexander Perfilov
Alexander Vasilenko   v   Anton Desyatnik
Akira Santillan   v   Toshihide Matsui
Kento Takeuchi   v   Hiroki Kondo
Jung-Woong Na   v   Pruchya Isarow
Christopher Rungkat   v   Shuichi Sekiguchi
Naomi Totka   v   Sabastiani Leon
Lauren Chypyha   v   Alexandra Valenstein
Kristina Smith   v   Wendy Zhang
Cassie Chung   v   Stacey Fung
