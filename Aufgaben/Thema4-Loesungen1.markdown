1.  **Aufgabe**\

    Laden Sie den Datensatz `affairs`:

    ``` text
    affairs_path <- "https://vincentarelbundock.github.io/Rdatasets/csv/AER/Affairs.csv"
    ```

    ``` text
    affairs <- read_csv(affairs_path)
    ```

    Lesen Sie das *Data Dictionnary*
    [hier](https://vincentarelbundock.github.io/Rdatasets/doc/AER/Affairs.html).

    Wir definieren als "Halodrie" eine Person mit mindestens einer
    Affäre (laut Datensatz).

    Bearbeiten Sie folgende Aufgaben:

    1.  Filtern Sie mal nach Halodries!
    2.  Sortieren Sie (absteigend) nach Anzahl der Affären!
    3.  Wählen Sie die Spalten zu Anzahl der Affären, ob es Kinder in
        der Ehe gibt und die Zufriedenheit mit der Ehe. Dann sortieren
        Sie dann nach Anzahl der Kinder und *danach* nach der Anzahl der
        Affären.
    4.  Berechnen Sie die mittlere Anzahl der Affären!
    5.  Berechnen Sie die mittlere Anzahl der Affären pro Geschlecht und
        aufgeteilt auf Partnerschaften mit bzw. ohne Kinder.
    6.  Geben Sie für jede Person die höhere der zwei Zahlen von
        Religiösität und Ehezufriedenheit aus!
    7.  Berechnen Sie jeweils das Heiratsalter!

    \
    **Lösung**

    Ad 1.

    ``` text
    affairs %>% 
      filter(affairs > 0)
    ```

      ------------------------------------------------------------------------------------------------------------
        ...1   affairs gender      age   yearsmarried children     religiousness   education   occupation   rating
      ------ --------- -------- ------ -------------- ---------- --------------- ----------- ------------ --------
           6         3 male       27.0          1.500 no                       3          18            4        4

          12         3 female     27.0          4.000 yes                      3          17            1        5

          43         7 male       37.0         15.000 yes                      5          18            6        2

          53        12 female     32.0         10.000 yes                      3          17            5        2

          67         1 male       22.0          0.125 no                       4          16            5        5

          79         1 female     22.0          1.500 yes                      2          14            1        5

         122        12 male       37.0         15.000 yes                      4          14            5        2

         126         7 female     22.0          1.500 no                       2          14            3        4

         133         2 male       37.0         15.000 yes                      2          18            6        4

         138         3 female     32.0         15.000 yes                      4          12            3        2

         154         1 female     37.0         15.000 yes                      4          14            4        2

         159         7 female     42.0         15.000 yes                      3          17            1        4

         174        12 female     42.0         15.000 yes                      5           9            4        1

         176        12 male       37.0         10.000 yes                      2          20            6        2

         181        12 female     32.0         15.000 yes                      3          14            1        2

         182         3 male       27.0          4.000 no                       1          18            6        5

         186         7 male       37.0         10.000 yes                      2          18            7        3

         189         7 female     27.0          4.000 no                       3          17            5        5

         204         1 male       42.0         15.000 yes                      4          16            5        5

         215         1 female     47.0         15.000 yes                      5          14            4        5

         232         7 female     27.0          4.000 yes                      3          18            5        4

         233         1 female     27.0          7.000 yes                      5          14            1        4

         252        12 male       27.0          1.500 yes                      3          17            5        4

         253        12 female     27.0          7.000 yes                      4          14            6        2

         274         3 female     42.0         15.000 yes                      4          16            5        4

         275         7 female     27.0         10.000 yes                      4          12            7        3

         287         1 male       27.0          1.500 no                       2          18            5        2

         288         1 male       32.0          4.000 no                       4          20            6        4

         325         1 female     27.0          7.000 yes                      3          14            1        3

         328         3 female     32.0         10.000 yes                      4          14            1        4

         344         3 male       27.0          4.000 yes                      2          18            7        2

         353         1 female     17.5          0.750 no                       5          14            4        5

         354         1 female     32.0         10.000 yes                      4          18            1        5

         367         7 female     32.0          7.000 yes                      2          17            6        4

         369         7 male       37.0         15.000 yes                      2          20            6        4

         390         7 female     37.0         10.000 no                       1          20            5        3

         392        12 female     32.0         10.000 yes                      2          16            5        5

         423         7 male       52.0         15.000 yes                      2          20            6        4

         432         7 female     42.0         15.000 yes                      1          12            1        3

         436         1 male       52.0         15.000 yes                      2          20            6        3

         483         2 male       37.0         15.000 yes                      3          18            6        5

         513        12 female     22.0          4.000 no                       3          12            3        4

         516        12 male       27.0          7.000 yes                      1          18            6        2

         518         1 male       27.0          4.000 yes                      3          18            5        5

         520        12 male       47.0         15.000 yes                      4          17            6        5

         526        12 female     42.0         15.000 yes                      4          12            1        1

         528         7 male       27.0          4.000 no                       3          14            3        4

         553         7 female     32.0          7.000 yes                      4          18            4        5

         576         1 male       32.0          0.417 yes                      3          12            3        4

         611         3 male       47.0         15.000 yes                      5          16            5        4

         625        12 male       37.0         15.000 yes                      2          20            5        4

         635         7 male       22.0          4.000 yes                      2          17            6        4

         646         1 male       27.0          4.000 no                       2          14            4        5

         657         7 female     52.0         15.000 yes                      5          16            1        3

         659         1 male       27.0          4.000 no                       3          14            3        3

         666         1 female     27.0         10.000 yes                      4          16            1        4

         679         1 male       32.0          7.000 yes                      3          14            7        4

         729         7 male       32.0          7.000 yes                      2          18            4        1

         755         3 male       22.0          1.500 no                       1          14            3        2

         758         7 male       22.0          4.000 yes                      3          18            6        4

         770         7 male       42.0         15.000 yes                      4          20            6        4

         786         2 female     57.0         15.000 yes                      1          18            5        4

         797         7 female     32.0          4.000 yes                      3          18            5        2

         811         1 male       27.0          4.000 yes                      1          16            4        4

         834         7 male       32.0          7.000 yes                      4          16            1        4

         858         2 male       57.0         15.000 yes                      1          17            4        4

         885         7 female     42.0         15.000 yes                      4          14            5        2

         893         7 male       37.0         10.000 yes                      1          18            5        3

         927         3 male       42.0         15.000 yes                      3          17            6        1

         928         1 female     52.0         15.000 yes                      3          14            4        4

         933         2 female     27.0          7.000 yes                      3          17            5        3

         951        12 male       32.0          7.000 yes                      2          12            4        2

         968         1 male       22.0          4.000 no                       4          14            2        5

         972         3 male       27.0          7.000 yes                      3          18            6        4

         975        12 female     37.0         15.000 yes                      1          18            5        5

         977         7 female     32.0         15.000 yes                      3          17            1        3

         981         7 female     27.0          7.000 no                       2          17            5        5

         986         1 female     32.0          7.000 yes                      3          17            5        3

        1002         1 male       32.0          1.500 yes                      2          14            2        4

        1007        12 female     42.0         15.000 yes                      4          14            1        2

        1011         7 male       32.0         10.000 yes                      3          14            5        4

        1035         7 male       37.0          4.000 yes                      1          20            6        3

        1050         1 female     27.0          4.000 yes                      2          16            5        3

        1056        12 female     42.0         15.000 yes                      3          14            4        3

        1057         1 male       27.0         10.000 yes                      5          20            6        5

        1075        12 male       37.0         10.000 yes                      2          20            6        2

        1080        12 female     27.0          7.000 yes                      1          14            3        3

        1125         3 female     27.0          7.000 yes                      4          12            1        2

        1131         3 male       32.0         10.000 yes                      2          14            4        4

        1138        12 female     17.5          0.750 yes                      2          12            1        3

        1150        12 female     32.0         15.000 yes                      3          18            5        4

        1163         2 female     22.0          7.000 no                       4          14            4        3

        1169         1 male       32.0          7.000 yes                      4          20            6        5

        1198         7 male       27.0          4.000 yes                      2          18            6        2

        1204         1 female     22.0          1.500 yes                      5          14            5        3

        1218        12 female     32.0         15.000 no                       3          17            5        1

        1230        12 female     42.0         15.000 yes                      2          12            1        2

        1236         7 male       42.0         15.000 yes                      3          20            5        4

        1247        12 male       32.0         10.000 no                       2          18            4        2

        1259        12 female     32.0         15.000 yes                      3           9            1        1

        1294         7 male       57.0         15.000 yes                      5          20            4        5

        1353        12 male       47.0         15.000 yes                      4          20            6        4

        1370         2 female     42.0         15.000 yes                      2          17            6        3

        1427        12 male       37.0         15.000 yes                      3          17            6        3

        1445        12 male       37.0         15.000 yes                      5          17            5        2

        1460         7 male       27.0         10.000 yes                      2          20            6        4

        1480         2 male       37.0         15.000 yes                      2          16            5        4

        1505        12 female     32.0         15.000 yes                      1          14            5        2

        1543         7 male       32.0         10.000 yes                      3          17            6        3

        1548         2 male       37.0         15.000 yes                      4          18            5        1

        1550         7 female     27.0          1.500 no                       2          17            5        5

        1561         3 female     47.0         15.000 yes                      2          17            5        2

        1564        12 male       37.0         15.000 yes                      2          17            5        4

        1573        12 female     27.0          4.000 no                       2          14            5        5

        1575         2 female     27.0         10.000 yes                      4          14            1        5

        1599         1 female     22.0          4.000 yes                      3          16            1        3

        1622        12 male       52.0          7.000 no                       4          16            5        5

        1629         2 female     27.0          4.000 yes                      1          16            3        5

        1664         7 female     37.0         15.000 yes                      2          17            6        4

        1669         2 female     27.0          4.000 no                       1          17            3        1

        1674        12 female     17.5          0.750 yes                      2          12            3        5

        1682         7 female     32.0         15.000 yes                      5          18            5        4

        1685         7 female     22.0          4.000 no                       1          16            3        5

        1697         2 male       32.0          4.000 yes                      4          18            6        4

        1716         1 female     22.0          1.500 yes                      3          18            5        2

        1730         3 female     42.0         15.000 yes                      2          17            5        4

        1731         1 male       32.0          7.000 yes                      4          16            4        4

        1732        12 male       37.0         15.000 no                       3          14            6        2

        1743         1 male       42.0         15.000 yes                      3          16            6        3

        1751         1 male       27.0          4.000 yes                      1          18            5        4

        1757         2 male       37.0         15.000 yes                      4          20            7        3

        1763         7 male       37.0         15.000 yes                      3          20            6        4

        1766         3 male       22.0          1.500 no                       2          12            3        3

        1772         3 male       32.0          4.000 yes                      3          20            6        2

        1776         2 male       32.0         15.000 yes                      5          20            6        5

        1782        12 female     52.0         15.000 yes                      1          18            5        5

        1784        12 male       47.0         15.000 no                       1          18            6        5

        1791         3 female     32.0         15.000 yes                      4          16            4        4

        1831         7 female     32.0         15.000 yes                      3          14            3        2

        1840         7 female     27.0          7.000 yes                      4          16            1        2

        1844        12 male       42.0         15.000 yes                      3          18            6        2

        1856         7 female     42.0         15.000 yes                      2          14            3        2

        1876        12 male       27.0          7.000 yes                      2          17            5        4

        1929         3 male       32.0         10.000 yes                      4          14            4        3

        1935         7 male       47.0         15.000 yes                      3          16            4        2

        1938         1 male       22.0          1.500 yes                      1          12            2        5

        1941         7 female     32.0         10.000 yes                      2          18            5        4

        1954         2 male       32.0         10.000 yes                      2          17            6        5

        1959         2 male       22.0          7.000 yes                      3          18            6        2

        9010         1 female     32.0         15.000 yes                      3          14            1        5
      ------------------------------------------------------------------------------------------------------------

    Ad 2.

    ``` text
    affairs %>% 
      arrange(-affairs)
    ```

      ------------------------------------------------------------------------------------------------------------
        ...1   affairs gender      age   yearsmarried children     religiousness   education   occupation   rating
      ------ --------- -------- ------ -------------- ---------- --------------- ----------- ------------ --------
          53        12 female     32.0         10.000 yes                      3          17            5        2

         122        12 male       37.0         15.000 yes                      4          14            5        2

         174        12 female     42.0         15.000 yes                      5           9            4        1

         176        12 male       37.0         10.000 yes                      2          20            6        2

         181        12 female     32.0         15.000 yes                      3          14            1        2

         252        12 male       27.0          1.500 yes                      3          17            5        4

         253        12 female     27.0          7.000 yes                      4          14            6        2

         392        12 female     32.0         10.000 yes                      2          16            5        5

         513        12 female     22.0          4.000 no                       3          12            3        4

         516        12 male       27.0          7.000 yes                      1          18            6        2

         520        12 male       47.0         15.000 yes                      4          17            6        5

         526        12 female     42.0         15.000 yes                      4          12            1        1

         625        12 male       37.0         15.000 yes                      2          20            5        4

         951        12 male       32.0          7.000 yes                      2          12            4        2

         975        12 female     37.0         15.000 yes                      1          18            5        5

        1007        12 female     42.0         15.000 yes                      4          14            1        2

        1056        12 female     42.0         15.000 yes                      3          14            4        3

        1075        12 male       37.0         10.000 yes                      2          20            6        2

        1080        12 female     27.0          7.000 yes                      1          14            3        3

        1138        12 female     17.5          0.750 yes                      2          12            1        3

        1150        12 female     32.0         15.000 yes                      3          18            5        4

        1218        12 female     32.0         15.000 no                       3          17            5        1

        1230        12 female     42.0         15.000 yes                      2          12            1        2

        1247        12 male       32.0         10.000 no                       2          18            4        2

        1259        12 female     32.0         15.000 yes                      3           9            1        1

        1353        12 male       47.0         15.000 yes                      4          20            6        4

        1427        12 male       37.0         15.000 yes                      3          17            6        3

        1445        12 male       37.0         15.000 yes                      5          17            5        2

        1505        12 female     32.0         15.000 yes                      1          14            5        2

        1564        12 male       37.0         15.000 yes                      2          17            5        4

        1573        12 female     27.0          4.000 no                       2          14            5        5

        1622        12 male       52.0          7.000 no                       4          16            5        5

        1674        12 female     17.5          0.750 yes                      2          12            3        5

        1732        12 male       37.0         15.000 no                       3          14            6        2

        1782        12 female     52.0         15.000 yes                      1          18            5        5

        1784        12 male       47.0         15.000 no                       1          18            6        5

        1844        12 male       42.0         15.000 yes                      3          18            6        2

        1876        12 male       27.0          7.000 yes                      2          17            5        4

          43         7 male       37.0         15.000 yes                      5          18            6        2

         126         7 female     22.0          1.500 no                       2          14            3        4

         159         7 female     42.0         15.000 yes                      3          17            1        4

         186         7 male       37.0         10.000 yes                      2          18            7        3

         189         7 female     27.0          4.000 no                       3          17            5        5

         232         7 female     27.0          4.000 yes                      3          18            5        4

         275         7 female     27.0         10.000 yes                      4          12            7        3

         367         7 female     32.0          7.000 yes                      2          17            6        4

         369         7 male       37.0         15.000 yes                      2          20            6        4

         390         7 female     37.0         10.000 no                       1          20            5        3

         423         7 male       52.0         15.000 yes                      2          20            6        4

         432         7 female     42.0         15.000 yes                      1          12            1        3

         528         7 male       27.0          4.000 no                       3          14            3        4

         553         7 female     32.0          7.000 yes                      4          18            4        5

         635         7 male       22.0          4.000 yes                      2          17            6        4

         657         7 female     52.0         15.000 yes                      5          16            1        3

         729         7 male       32.0          7.000 yes                      2          18            4        1

         758         7 male       22.0          4.000 yes                      3          18            6        4

         770         7 male       42.0         15.000 yes                      4          20            6        4

         797         7 female     32.0          4.000 yes                      3          18            5        2

         834         7 male       32.0          7.000 yes                      4          16            1        4

         885         7 female     42.0         15.000 yes                      4          14            5        2

         893         7 male       37.0         10.000 yes                      1          18            5        3

         977         7 female     32.0         15.000 yes                      3          17            1        3

         981         7 female     27.0          7.000 no                       2          17            5        5

        1011         7 male       32.0         10.000 yes                      3          14            5        4

        1035         7 male       37.0          4.000 yes                      1          20            6        3

        1198         7 male       27.0          4.000 yes                      2          18            6        2

        1236         7 male       42.0         15.000 yes                      3          20            5        4

        1294         7 male       57.0         15.000 yes                      5          20            4        5

        1460         7 male       27.0         10.000 yes                      2          20            6        4

        1543         7 male       32.0         10.000 yes                      3          17            6        3

        1550         7 female     27.0          1.500 no                       2          17            5        5

        1664         7 female     37.0         15.000 yes                      2          17            6        4

        1682         7 female     32.0         15.000 yes                      5          18            5        4

        1685         7 female     22.0          4.000 no                       1          16            3        5

        1763         7 male       37.0         15.000 yes                      3          20            6        4

        1831         7 female     32.0         15.000 yes                      3          14            3        2

        1840         7 female     27.0          7.000 yes                      4          16            1        2

        1856         7 female     42.0         15.000 yes                      2          14            3        2

        1935         7 male       47.0         15.000 yes                      3          16            4        2

        1941         7 female     32.0         10.000 yes                      2          18            5        4

           6         3 male       27.0          1.500 no                       3          18            4        4

          12         3 female     27.0          4.000 yes                      3          17            1        5

         138         3 female     32.0         15.000 yes                      4          12            3        2

         182         3 male       27.0          4.000 no                       1          18            6        5

         274         3 female     42.0         15.000 yes                      4          16            5        4

         328         3 female     32.0         10.000 yes                      4          14            1        4

         344         3 male       27.0          4.000 yes                      2          18            7        2

         611         3 male       47.0         15.000 yes                      5          16            5        4

         755         3 male       22.0          1.500 no                       1          14            3        2

         927         3 male       42.0         15.000 yes                      3          17            6        1

         972         3 male       27.0          7.000 yes                      3          18            6        4

        1125         3 female     27.0          7.000 yes                      4          12            1        2

        1131         3 male       32.0         10.000 yes                      2          14            4        4

        1561         3 female     47.0         15.000 yes                      2          17            5        2

        1730         3 female     42.0         15.000 yes                      2          17            5        4

        1766         3 male       22.0          1.500 no                       2          12            3        3

        1772         3 male       32.0          4.000 yes                      3          20            6        2

        1791         3 female     32.0         15.000 yes                      4          16            4        4

        1929         3 male       32.0         10.000 yes                      4          14            4        3

         133         2 male       37.0         15.000 yes                      2          18            6        4

         483         2 male       37.0         15.000 yes                      3          18            6        5

         786         2 female     57.0         15.000 yes                      1          18            5        4

         858         2 male       57.0         15.000 yes                      1          17            4        4

         933         2 female     27.0          7.000 yes                      3          17            5        3

        1163         2 female     22.0          7.000 no                       4          14            4        3

        1370         2 female     42.0         15.000 yes                      2          17            6        3

        1480         2 male       37.0         15.000 yes                      2          16            5        4

        1548         2 male       37.0         15.000 yes                      4          18            5        1

        1575         2 female     27.0         10.000 yes                      4          14            1        5

        1629         2 female     27.0          4.000 yes                      1          16            3        5

        1669         2 female     27.0          4.000 no                       1          17            3        1

        1697         2 male       32.0          4.000 yes                      4          18            6        4

        1757         2 male       37.0         15.000 yes                      4          20            7        3

        1776         2 male       32.0         15.000 yes                      5          20            6        5

        1954         2 male       32.0         10.000 yes                      2          17            6        5

        1959         2 male       22.0          7.000 yes                      3          18            6        2

          67         1 male       22.0          0.125 no                       4          16            5        5

          79         1 female     22.0          1.500 yes                      2          14            1        5

         154         1 female     37.0         15.000 yes                      4          14            4        2

         204         1 male       42.0         15.000 yes                      4          16            5        5

         215         1 female     47.0         15.000 yes                      5          14            4        5

         233         1 female     27.0          7.000 yes                      5          14            1        4

         287         1 male       27.0          1.500 no                       2          18            5        2

         288         1 male       32.0          4.000 no                       4          20            6        4

         325         1 female     27.0          7.000 yes                      3          14            1        3

         353         1 female     17.5          0.750 no                       5          14            4        5

         354         1 female     32.0         10.000 yes                      4          18            1        5

         436         1 male       52.0         15.000 yes                      2          20            6        3

         518         1 male       27.0          4.000 yes                      3          18            5        5

         576         1 male       32.0          0.417 yes                      3          12            3        4

         646         1 male       27.0          4.000 no                       2          14            4        5

         659         1 male       27.0          4.000 no                       3          14            3        3

         666         1 female     27.0         10.000 yes                      4          16            1        4

         679         1 male       32.0          7.000 yes                      3          14            7        4

         811         1 male       27.0          4.000 yes                      1          16            4        4

         928         1 female     52.0         15.000 yes                      3          14            4        4

         968         1 male       22.0          4.000 no                       4          14            2        5

         986         1 female     32.0          7.000 yes                      3          17            5        3

        1002         1 male       32.0          1.500 yes                      2          14            2        4

        1050         1 female     27.0          4.000 yes                      2          16            5        3

        1057         1 male       27.0         10.000 yes                      5          20            6        5

        1169         1 male       32.0          7.000 yes                      4          20            6        5

        1204         1 female     22.0          1.500 yes                      5          14            5        3

        1599         1 female     22.0          4.000 yes                      3          16            1        3

        1716         1 female     22.0          1.500 yes                      3          18            5        2

        1731         1 male       32.0          7.000 yes                      4          16            4        4

        1743         1 male       42.0         15.000 yes                      3          16            6        3

        1751         1 male       27.0          4.000 yes                      1          18            5        4

        1938         1 male       22.0          1.500 yes                      1          12            2        5

        9010         1 female     32.0         15.000 yes                      3          14            1        5

           4         0 male       37.0         10.000 no                       3          18            7        4

           5         0 female     27.0          4.000 no                       4          14            6        4

          11         0 female     32.0         15.000 yes                      1          12            1        4

          16         0 male       57.0         15.000 yes                      5          18            6        5

          23         0 male       22.0          0.750 no                       2          17            6        3

          29         0 female     32.0          1.500 no                       2          17            5        5

          44         0 female     22.0          0.750 no                       2          12            1        3

          45         0 male       57.0         15.000 yes                      2          14            4        4

          47         0 female     32.0         15.000 yes                      4          16            1        2

          49         0 male       22.0          1.500 no                       4          14            4        5

          50         0 male       37.0         15.000 yes                      2          20            7        2

          55         0 male       27.0          4.000 yes                      4          18            6        4

          64         0 male       47.0         15.000 yes                      5          17            6        4

          80         0 female     22.0          1.500 no                       2          17            5        4

          86         0 female     27.0          4.000 no                       4          14            5        4

          93         0 female     37.0         15.000 yes                      1          17            5        5

         108         0 female     37.0         15.000 yes                      2          18            4        3

         114         0 female     22.0          0.750 no                       3          16            5        4

         115         0 female     22.0          1.500 no                       2          16            5        5

         116         0 female     27.0         10.000 yes                      2          14            1        5

         123         0 female     22.0          1.500 no                       2          16            5        5

         127         0 female     22.0          1.500 no                       2          16            5        5

         129         0 female     27.0         10.000 yes                      4          16            5        4

         134         0 female     32.0         10.000 yes                      3          14            1        5

         137         0 male       37.0          4.000 yes                      2          20            6        4

         139         0 female     22.0          1.500 no                       2          18            5        5

         147         0 female     27.0          7.000 no                       4          16            1        5

         151         0 male       42.0         15.000 yes                      5          20            6        4

         153         0 male       27.0          4.000 yes                      3          16            5        5

         155         0 female     27.0          4.000 yes                      3          17            5        4

         162         0 male       42.0         15.000 yes                      4          20            6        3

         163         0 female     22.0          1.500 no                       3          16            5        5

         165         0 male       27.0          0.417 no                       4          17            6        4

         168         0 female     42.0         15.000 yes                      5          14            5        4

         170         0 male       32.0          4.000 yes                      1          18            6        4

         172         0 female     22.0          1.500 no                       4          16            5        3

         184         0 female     42.0         15.000 yes                      3          12            1        4

         187         0 female     22.0          4.000 no                       4          17            5        5

         192         0 male       22.0          1.500 yes                      1          14            3        5

         194         0 female     22.0          0.750 no                       3          16            1        5

         210         0 male       32.0         10.000 yes                      5          20            6        5

         217         0 male       52.0         15.000 yes                      5          18            6        3

         220         0 female     22.0          0.417 no                       5          14            1        4

         224         0 female     27.0          4.000 yes                      2          18            6        1

         227         0 female     32.0          7.000 yes                      5          17            5        3

         228         0 male       22.0          4.000 no                       3          16            5        5

         239         0 female     27.0          7.000 yes                      4          18            6        5

         241         0 female     42.0         15.000 yes                      2          18            5        4

         245         0 male       27.0          1.500 yes                      4          16            3        5

         249         0 male       42.0         15.000 yes                      2          20            6        4

         262         0 female     22.0          0.750 no                       5          14            3        5

         265         0 male       32.0          7.000 yes                      2          20            6        4

         267         0 male       27.0          4.000 yes                      5          20            6        5

         269         0 male       27.0         10.000 yes                      4          20            6        4

         271         0 male       22.0          4.000 no                       1          18            5        5

         277         0 female     37.0         15.000 yes                      4          14            3        1

         290         0 male       22.0          1.500 yes                      5          16            4        4

         292         0 female     37.0         15.000 yes                      4          17            1        5

         293         0 female     27.0          0.750 no                       4          17            5        4

         295         0 male       32.0         10.000 yes                      4          20            6        4

         299         0 female     47.0         15.000 yes                      5          14            7        2

         320         0 male       37.0         10.000 yes                      3          20            6        4

         321         0 female     22.0          0.750 no                       2          16            5        5

         324         0 male       27.0          4.000 no                       2          18            4        5

         334         0 male       32.0          7.000 no                       4          20            6        4

         351         0 male       42.0         15.000 yes                      2          17            3        5

         355         0 male       37.0         10.000 yes                      4          20            6        4

         361         0 female     47.0         15.000 yes                      3          17            6        5

         362         0 female     22.0          1.500 no                       5          16            5        5

         366         0 female     27.0          1.500 no                       2          16            6        4

         370         0 female     27.0          4.000 no                       3          17            5        5

         374         0 female     32.0         10.000 yes                      5          14            4        5

         378         0 female     22.0          0.125 no                       2          12            5        5

         381         0 male       47.0         15.000 yes                      4          14            4        3

         382         0 male       32.0         15.000 yes                      1          14            5        5

         383         0 male       27.0          7.000 yes                      4          16            5        5

         384         0 female     22.0          1.500 yes                      3          16            5        5

         400         0 male       27.0          4.000 yes                      3          17            6        5

         403         0 female     22.0          1.500 no                       3          16            5        5

         409         0 male       57.0         15.000 yes                      2          14            7        2

         412         0 male       17.5          1.500 yes                      3          18            6        5

         413         0 male       57.0         15.000 yes                      4          20            6        5

         416         0 female     22.0          0.750 no                       2          16            3        4

         418         0 male       42.0          4.000 no                       4          17            3        3

         422         0 female     22.0          1.500 yes                      4          12            1        5

         435         0 female     22.0          0.417 no                       1          17            6        4

         439         0 female     32.0         15.000 yes                      4          17            5        5

         445         0 female     27.0          1.500 no                       3          18            5        2

         447         0 female     22.0          1.500 yes                      3          14            1        5

         448         0 female     37.0         15.000 yes                      3          14            1        4

         449         0 female     32.0         15.000 yes                      4          14            3        4

         478         0 male       37.0         10.000 yes                      2          14            5        3

         482         0 male       37.0         10.000 yes                      4          16            5        4

         486         0 male       57.0         15.000 yes                      5          20            5        3

         489         0 male       27.0          0.417 no                       1          16            3        4

         490         0 female     42.0         15.000 yes                      5          14            1        5

         491         0 male       57.0         15.000 yes                      3          16            6        1

         492         0 male       37.0         10.000 yes                      1          16            6        4

         503         0 male       37.0         15.000 yes                      3          17            5        5

         508         0 male       37.0         15.000 yes                      4          20            6        5

         509         0 female     27.0         10.000 yes                      5          14            1        5

         512         0 male       37.0         10.000 yes                      2          18            6        4

         515         0 female     22.0          0.125 no                       4          12            4        5

         517         0 male       57.0         15.000 yes                      5          20            6        5

         532         0 female     37.0         15.000 yes                      4          18            6        4

         533         0 male       22.0          4.000 yes                      4          14            6        4

         535         0 male       27.0          7.000 yes                      4          18            5        4

         537         0 male       57.0         15.000 yes                      4          20            5        4

         538         0 male       32.0         15.000 yes                      3          14            6        3

         543         0 female     22.0          1.500 no                       2          14            5        4

         547         0 female     32.0          7.000 yes                      4          17            1        5

         550         0 female     37.0         15.000 yes                      4          17            6        5

         558         0 female     32.0          1.500 no                       5          18            5        5

         571         0 male       42.0         10.000 yes                      5          20            7        4

         578         0 female     27.0          7.000 no                       3          16            5        4

         583         0 male       37.0         15.000 no                       4          20            6        5

         586         0 male       37.0         15.000 yes                      4          14            3        2

         594         0 male       32.0         10.000 no                       5          18            6        4

         597         0 female     22.0          0.750 no                       4          16            1        5

         602         0 female     27.0          7.000 yes                      4          12            2        4

         603         0 female     27.0          7.000 yes                      2          16            2        5

         604         0 female     42.0         15.000 yes                      5          18            5        4

         612         0 male       42.0         15.000 yes                      4          17            5        3

         613         0 female     27.0          7.000 yes                      2          16            1        2

         621         0 female     22.0          1.500 no                       3          16            5        5

         627         0 male       37.0         15.000 yes                      5          20            6        5

         630         0 female     22.0          0.125 no                       2          14            4        5

         631         0 male       27.0          1.500 no                       4          16            5        5

         632         0 male       32.0          1.500 no                       2          18            6        5

         639         0 male       27.0          1.500 no                       2          17            6        5

         645         0 female     27.0         10.000 yes                      4          16            1        3

         647         0 male       42.0         15.000 yes                      4          18            6        5

         648         0 female     27.0          1.500 no                       2          16            6        5

         651         0 male       27.0          4.000 no                       2          18            6        3

         655         0 female     32.0         10.000 yes                      3          14            5        3

         667         0 female     32.0         15.000 yes                      3          18            5        4

         670         0 female     22.0          0.750 no                       2          18            6        5

         671         0 female     37.0         15.000 yes                      2          16            1        4

         673         0 male       27.0          4.000 yes                      4          20            5        5

         701         0 male       27.0          4.000 no                       1          20            5        4

         705         0 female     27.0         10.000 yes                      2          12            1        4

         706         0 female     32.0         15.000 yes                      5          18            6        4

         709         0 male       27.0          7.000 yes                      5          12            5        3

         717         0 male       52.0         15.000 yes                      2          18            5        4

         719         0 male       27.0          4.000 no                       3          20            6        3

         723         0 male       37.0          4.000 yes                      1          18            5        4

         724         0 male       27.0          4.000 yes                      4          14            5        4

         726         0 female     52.0         15.000 yes                      5          12            1        3

         734         0 female     57.0         15.000 yes                      4          16            6        4

         735         0 male       27.0          7.000 yes                      1          16            5        4

         736         0 male       37.0          7.000 yes                      4          20            6        3

         737         0 male       22.0          0.750 no                       2          14            4        3

         739         0 male       32.0          4.000 yes                      2          18            5        3

         743         0 male       37.0         15.000 yes                      4          20            6        3

         745         0 male       22.0          0.750 yes                      2          14            4        3

         747         0 male       42.0         15.000 yes                      4          20            6        3

         751         0 female     52.0         15.000 yes                      5          17            1        1

         752         0 female     37.0         15.000 yes                      4          14            1        2

         754         0 male       27.0          7.000 yes                      4          14            5        3

         760         0 male       32.0          4.000 yes                      2          16            5        5

         763         0 female     27.0          4.000 yes                      2          18            6        5

         774         0 female     27.0          4.000 yes                      2          18            5        5

         776         0 male       37.0         15.000 yes                      5          18            6        5

         779         0 female     47.0         15.000 yes                      5          12            5        4

         784         0 female     32.0         10.000 yes                      3          17            1        4

         788         0 female     27.0          1.500 yes                      4          17            1        2

         794         0 female     57.0         15.000 yes                      2          18            5        2

         795         0 female     22.0          1.500 no                       4          14            5        4

         798         0 male       42.0         15.000 yes                      3          14            3        4

         800         0 male       57.0         15.000 yes                      4           9            2        2

         803         0 male       57.0         15.000 yes                      4          20            6        5

         807         0 female     22.0          0.125 no                       4          14            4        5

         812         0 female     32.0         10.000 yes                      4          14            1        5

         820         0 female     42.0         15.000 yes                      3          18            5        4

         823         0 female     27.0          1.500 no                       2          18            6        5

         830         0 male       32.0          0.125 yes                      2          18            5        2

         843         0 female     27.0          4.000 no                       3          16            5        4

         848         0 female     27.0         10.000 yes                      2          16            1        4

         851         0 female     32.0          7.000 yes                      4          16            1        3

         854         0 female     37.0         15.000 yes                      4          14            5        4

         856         0 female     42.0         15.000 yes                      5          17            6        2

         857         0 male       32.0          1.500 yes                      4          14            6        5

         859         0 female     32.0          4.000 yes                      3          17            5        3

         863         0 female     37.0          7.000 no                       4          18            5        5

         865         0 female     22.0          0.417 yes                      3          14            3        5

         867         0 female     27.0          7.000 yes                      4          14            1        5

         870         0 male       27.0          0.750 no                       3          16            5        5

         873         0 male       27.0          4.000 yes                      2          20            5        5

         875         0 male       32.0         10.000 yes                      4          16            4        5

         876         0 male       32.0         15.000 yes                      1          14            5        5

         877         0 male       22.0          0.750 no                       3          17            4        5

         880         0 female     27.0          7.000 yes                      4          17            1        4

         903         0 male       27.0          0.417 yes                      4          20            5        4

         904         0 male       37.0         15.000 yes                      4          20            5        4

         905         0 female     37.0         15.000 yes                      2          14            1        3

         908         0 male       22.0          4.000 yes                      1          18            5        4

         909         0 male       37.0         15.000 yes                      4          17            5        3

         910         0 female     22.0          1.500 no                       2          14            4        5

         912         0 male       52.0         15.000 yes                      4          14            6        2

         914         0 female     22.0          1.500 no                       4          17            5        5

         915         0 male       32.0          4.000 yes                      5          14            3        5

         916         0 male       32.0          4.000 yes                      2          14            3        5

         920         0 female     22.0          1.500 no                       3          16            6        5

         921         0 male       27.0          0.750 no                       2          18            3        3

         925         0 female     22.0          7.000 yes                      2          14            5        2

         926         0 female     27.0          0.750 no                       2          17            5        3

         929         0 female     37.0         15.000 yes                      4          12            1        2

         931         0 female     22.0          1.500 no                       1          14            1        5

         945         0 female     37.0         10.000 no                       2          12            4        4

         947         0 female     37.0         15.000 yes                      4          18            5        3

         949         0 female     42.0         15.000 yes                      3          12            3        3

         950         0 male       22.0          4.000 no                       2          18            5        5

         961         0 male       52.0          7.000 yes                      2          20            6        2

         965         0 male       27.0          0.750 no                       2          17            5        5

         966         0 female     27.0          4.000 no                       2          17            4        5

         967         0 male       42.0          1.500 no                       5          20            6        5

         987         0 male       22.0          1.500 no                       4          17            6        5

         990         0 male       22.0          4.000 no                       4          17            5        3

         992         0 female     22.0          4.000 yes                      1          14            5        4

         995         0 male       37.0         15.000 yes                      5          20            4        5

        1009         0 female     37.0         10.000 yes                      3          16            6        3

        1021         0 male       42.0         15.000 yes                      4          17            6        5

        1026         0 female     47.0         15.000 yes                      4          17            5        5

        1027         0 male       22.0          1.500 no                       4          16            5        4

        1030         0 female     32.0         10.000 yes                      3          12            1        4

        1031         0 female     22.0          7.000 yes                      1          14            3        5

        1034         0 female     32.0         10.000 yes                      4          17            5        4

        1037         0 male       27.0          1.500 yes                      2          16            2        4

        1038         0 male       37.0         15.000 yes                      4          14            5        5

        1039         0 male       42.0          4.000 yes                      3          14            4        5

        1045         0 female     37.0         15.000 yes                      5          14            5        4

        1046         0 female     32.0          7.000 yes                      4          17            5        5

        1054         0 female     42.0         15.000 yes                      4          18            6        5

        1059         0 male       27.0          4.000 no                       4          18            6        4

        1063         0 male       22.0          0.750 no                       4          18            6        5

        1068         0 male       27.0          4.000 yes                      4          14            5        3

        1070         0 female     22.0          0.750 no                       5          18            1        5

        1072         0 female     52.0         15.000 yes                      5           9            5        5

        1073         0 male       32.0         10.000 yes                      3          14            5        5

        1077         0 female     37.0         15.000 yes                      4          16            4        4

        1081         0 male       32.0          7.000 yes                      2          20            5        4

        1083         0 female     42.0         15.000 yes                      3          18            1        4

        1084         0 male       32.0         15.000 yes                      1          16            5        5

        1086         0 male       27.0          4.000 yes                      3          18            5        5

        1087         0 female     32.0         15.000 yes                      4          12            3        4

        1089         0 male       22.0          0.750 yes                      3          14            2        4

        1096         0 female     22.0          1.500 no                       3          16            5        3

        1102         0 female     42.0         15.000 yes                      4          14            3        5

        1103         0 female     52.0         15.000 yes                      3          16            5        4

        1107         0 male       37.0         15.000 yes                      5          20            6        4

        1109         0 female     47.0         15.000 yes                      4          12            2        3

        1115         0 male       57.0         15.000 yes                      2          20            6        4

        1119         0 male       32.0          7.000 yes                      4          17            5        5

        1124         0 female     27.0          7.000 yes                      4          17            1        4

        1126         0 male       22.0          1.500 no                       1          18            6        5

        1128         0 female     22.0          4.000 yes                      3           9            1        4

        1129         0 female     22.0          1.500 no                       2          14            1        5

        1130         0 male       42.0         15.000 yes                      2          20            6        4

        1133         0 male       57.0         15.000 yes                      4           9            2        4

        1140         0 female     27.0          7.000 yes                      2          18            1        5

        1143         0 female     22.0          4.000 yes                      3          14            1        5

        1146         0 male       37.0         15.000 yes                      4          14            5        3

        1153         0 male       32.0          7.000 yes                      1          18            6        4

        1156         0 female     22.0          1.500 no                       2          14            5        5

        1157         0 female     22.0          1.500 yes                      3          12            1        3

        1158         0 male       52.0         15.000 yes                      2          14            5        5

        1160         0 female     37.0         15.000 yes                      2          14            1        1

        1161         0 female     32.0         10.000 yes                      2          14            5        5

        1166         0 male       42.0         15.000 yes                      4          20            4        5

        1177         0 female     27.0          4.000 yes                      3          18            4        5

        1178         0 male       37.0         15.000 yes                      4          20            6        5

        1180         0 male       27.0          1.500 no                       3          18            5        5

        1187         0 female     22.0          0.125 no                       2          16            6        3

        1191         0 male       32.0         10.000 yes                      2          20            6        3

        1195         0 female     27.0          4.000 no                       4          18            5        4

        1207         0 female     27.0          7.000 yes                      2          12            5        1

        1208         0 male       32.0          4.000 yes                      5          18            6        3

        1209         0 female     37.0         15.000 yes                      2          17            5        5

        1211         0 male       47.0         15.000 no                       4          20            6        4

        1215         0 male       27.0          1.500 no                       1          18            5        5

        1221         0 male       37.0         15.000 yes                      4          20            6        4

        1226         0 female     32.0         15.000 yes                      4          18            1        4

        1229         0 female     32.0          7.000 yes                      4          17            5        4

        1231         0 female     42.0         15.000 yes                      3          14            1        3

        1234         0 female     27.0          7.000 yes                      3          16            1        4

        1235         0 male       27.0          1.500 no                       3          16            4        2

        1242         0 male       22.0          1.500 no                       3          16            3        5

        1245         0 male       27.0          4.000 yes                      3          16            4        2

        1260         0 female     27.0          7.000 yes                      3          12            1        2

        1266         0 female     37.0         15.000 yes                      2          18            5        4

        1271         0 female     37.0          7.000 yes                      3          14            4        4

        1273         0 male       22.0          1.500 no                       2          16            5        5

        1276         0 male       37.0         15.000 yes                      5          20            5        4

        1280         0 female     22.0          1.500 no                       4          16            5        3

        1282         0 female     32.0         10.000 yes                      4          16            1        5

        1285         0 male       27.0          4.000 no                       2          17            5        3

        1295         0 female     22.0          0.417 no                       4          14            5        5

        1298         0 female     27.0          4.000 no                       2          18            5        5

        1299         0 male       37.0         15.000 yes                      4          18            5        3

        1304         0 male       37.0         10.000 yes                      5          20            7        4

        1305         0 female     27.0          7.000 yes                      2          14            4        2

        1311         0 male       32.0          4.000 yes                      2          16            5        5

        1314         0 male       32.0          4.000 yes                      2          16            6        4

        1319         0 male       22.0          1.500 no                       3          18            4        5

        1322         0 female     22.0          4.000 yes                      4          14            3        4

        1324         0 female     17.5          0.750 no                       2          18            5        4

        1327         0 male       32.0         10.000 yes                      4          20            4        5

        1328         0 female     32.0          0.750 no                       5          14            3        3

        1330         0 male       37.0         15.000 yes                      4          17            5        3

        1332         0 male       32.0          4.000 no                       3          14            4        5

        1333         0 female     27.0          1.500 no                       2          17            3        2

        1336         0 female     22.0          7.000 yes                      4          14            1        5

        1341         0 male       47.0         15.000 yes                      5          14            6        5

        1344         0 male       27.0          4.000 yes                      1          16            4        4

        1352         0 female     37.0         15.000 yes                      5          14            1        3

        1358         0 male       42.0          4.000 yes                      4          18            5        5

        1359         0 female     32.0          4.000 yes                      2          14            1        5

        1361         0 male       52.0         15.000 yes                      2          14            7        4

        1364         0 female     22.0          1.500 no                       2          16            1        4

        1368         0 male       52.0         15.000 yes                      4          12            2        4

        1384         0 female     22.0          0.417 no                       3          17            1        5

        1390         0 female     22.0          1.500 no                       2          16            5        5

        1393         0 male       27.0          4.000 yes                      4          20            6        4

        1394         0 female     32.0         15.000 yes                      4          14            1        5

        1402         0 female     27.0          1.500 no                       2          16            3        5

        1407         0 male       32.0          4.000 no                       1          20            6        5

        1408         0 male       37.0         15.000 yes                      3          20            6        4

        1412         0 female     32.0         10.000 no                       2          16            6        5

        1413         0 female     32.0         10.000 yes                      5          14            5        5

        1416         0 male       37.0          1.500 yes                      4          18            5        3

        1417         0 male       32.0          1.500 no                       2          18            4        4

        1418         0 female     32.0         10.000 yes                      4          14            1        4

        1419         0 female     47.0         15.000 yes                      4          18            5        4

        1420         0 female     27.0         10.000 yes                      5          12            1        5

        1423         0 male       27.0          4.000 yes                      3          16            4        5

        1424         0 female     37.0         15.000 yes                      4          12            4        2

        1432         0 female     27.0          0.750 no                       4          16            5        5

        1433         0 female     37.0         15.000 yes                      4          16            1        5

        1437         0 female     32.0         15.000 yes                      3          16            1        5

        1438         0 female     27.0         10.000 yes                      2          16            1        5

        1439         0 male       27.0          7.000 no                       2          20            6        5

        1446         0 female     37.0         15.000 yes                      2          14            1        3

        1450         0 male       27.0          1.500 yes                      2          17            4        4

        1451         0 female     22.0          0.750 yes                      2          14            1        5

        1452         0 male       22.0          4.000 yes                      4          14            2        4

        1453         0 male       42.0          0.125 no                       4          17            6        4

        1456         0 male       27.0          1.500 yes                      4          18            6        5

        1464         0 male       27.0          7.000 yes                      3          16            6        3

        1469         0 female     52.0         15.000 yes                      4          14            1        3

        1473         0 male       27.0          1.500 no                       5          20            5        2

        1481         0 female     27.0          1.500 no                       2          16            5        5

        1482         0 female     27.0          1.500 no                       3          17            5        5

        1496         0 male       22.0          0.125 no                       5          16            4        4

        1497         0 female     27.0          4.000 yes                      4          16            1        5

        1504         0 female     27.0          4.000 yes                      4          12            1        5

        1513         0 female     47.0         15.000 yes                      2          14            5        5

        1515         0 female     32.0         15.000 yes                      3          14            5        3

        1534         0 male       42.0          7.000 yes                      2          16            5        5

        1535         0 male       22.0          0.750 no                       4          16            6        4

        1536         0 male       27.0          0.125 no                       3          20            6        5

        1540         0 male       32.0         10.000 yes                      3          20            6        5

        1551         0 female     22.0          0.417 no                       5          14            4        5

        1555         0 female     47.0         15.000 yes                      5          14            1        4

        1557         0 female     32.0         10.000 yes                      3          14            1        5

        1566         0 male       57.0         15.000 yes                      4          17            5        5

        1567         0 male       27.0          4.000 yes                      3          20            6        5

        1576         0 female     32.0          7.000 yes                      4          17            1        5

        1584         0 female     37.0         10.000 yes                      4          16            1        5

        1585         0 female     32.0         10.000 yes                      1          18            1        4

        1590         0 female     22.0          4.000 no                       3          14            1        4

        1594         0 female     27.0          7.000 yes                      4          14            3        2

        1595         0 male       57.0         15.000 yes                      5          18            5        2

        1603         0 male       32.0          7.000 yes                      2          18            5        5

        1608         0 female     27.0          1.500 no                       4          17            1        3

        1609         0 male       22.0          1.500 no                       4          14            5        5

        1615         0 female     22.0          1.500 yes                      4          14            5        4

        1616         0 female     32.0          7.000 yes                      3          16            1        5

        1617         0 female     47.0         15.000 yes                      3          16            5        4

        1620         0 female     22.0          0.750 no                       3          16            1        5

        1621         0 female     22.0          1.500 yes                      2          14            5        5

        1637         0 female     27.0          4.000 yes                      1          16            5        5

        1638         0 male       52.0         15.000 yes                      4          16            5        5

        1650         0 male       32.0         10.000 yes                      4          20            6        5

        1654         0 male       47.0         15.000 yes                      4          16            6        4

        1665         0 female     27.0          7.000 yes                      2          14            1        2

        1670         0 female     22.0          1.500 no                       4          14            4        5

        1671         0 female     32.0         10.000 yes                      2          16            5        4

        1675         0 female     22.0          0.750 no                       2          16            5        4

        1688         0 female     22.0          1.500 no                       2          16            5        5

        1691         0 female     42.0         15.000 yes                      3          18            6        4

        1695         0 female     27.0          7.000 yes                      5          14            4        5

        1698         0 male       42.0         15.000 yes                      4          16            4        4

        1704         0 female     57.0         15.000 yes                      3          18            5        2

        1705         0 male       42.0         15.000 yes                      3          18            6        2

        1711         0 female     32.0          7.000 yes                      2          14            1        2

        1719         0 male       22.0          4.000 no                       5          12            4        5

        1723         0 female     22.0          1.500 no                       1          16            6        5

        1726         0 female     22.0          0.750 no                       1          14            4        5

        1749         0 female     32.0         15.000 yes                      4          12            1        5

        1752         0 male       22.0          1.500 no                       2          18            5        3

        1754         0 male       27.0          4.000 yes                      5          17            2        5

        1758         0 female     27.0          4.000 yes                      4          12            1        5

        1761         0 male       42.0         15.000 yes                      5          18            5        4

        1773         0 male       32.0          1.500 no                       2          20            7        3

        1775         0 male       57.0         15.000 no                       4           9            3        1

        1786         0 male       37.0          7.000 no                       4          18            5        5

        1793         0 male       52.0         15.000 yes                      2          17            5        4

        1799         0 male       47.0         15.000 yes                      4          17            6        5

        1803         0 female     27.0          7.000 no                       2          17            5        4

        1806         0 female     27.0          7.000 yes                      4          14            5        5

        1807         0 female     22.0          4.000 no                       2          14            3        3

        1808         0 male       37.0          7.000 yes                      2          20            6        5

        1814         0 male       27.0          7.000 no                       4          12            4        3

        1815         0 male       42.0         10.000 yes                      4          18            6        4

        1818         0 female     22.0          1.500 no                       3          14            1        5

        1827         0 female     22.0          4.000 yes                      2          14            1        3

        1834         0 female     57.0         15.000 no                       4          20            6        5

        1835         0 male       37.0         15.000 yes                      4          14            4        3

        1843         0 female     27.0          7.000 yes                      3          18            5        5

        1846         0 female     17.5         10.000 no                       4          14            4        5

        1850         0 male       22.0          4.000 yes                      4          16            5        5

        1851         0 female     27.0          4.000 yes                      2          16            1        4

        1854         0 female     37.0         15.000 yes                      2          14            5        1

        1859         0 female     22.0          1.500 no                       5          14            1        4

        1861         0 male       27.0          7.000 yes                      2          20            5        4

        1866         0 male       27.0          4.000 yes                      4          14            5        5

        1873         0 male       22.0          0.125 no                       1          16            3        5

        1875         0 female     27.0          7.000 yes                      4          14            1        4

        1885         0 female     32.0         15.000 yes                      5          16            5        3

        1892         0 male       32.0         10.000 yes                      4          18            5        4

        1895         0 female     32.0         15.000 yes                      2          14            3        4

        1896         0 female     22.0          1.500 no                       3          17            5        5

        1897         0 male       27.0          4.000 yes                      4          17            4        4

        1899         0 female     52.0         15.000 yes                      5          14            1        5

        1904         0 female     27.0          7.000 yes                      2          12            1        2

        1905         0 female     27.0          7.000 yes                      3          12            1        4

        1908         0 female     42.0         15.000 yes                      2          14            1        4

        1916         0 female     42.0         15.000 yes                      4          14            5        4

        1918         0 male       27.0          7.000 yes                      4          14            3        3

        1920         0 male       27.0          7.000 yes                      2          20            6        2

        1930         0 female     42.0         15.000 yes                      3          12            3        3

        1940         0 male       27.0          4.000 yes                      3          16            3        5

        1947         0 female     27.0          7.000 yes                      3          14            1        4

        1949         0 female     22.0          1.500 no                       2          14            4        5

        1951         0 female     27.0          4.000 yes                      4          14            1        4

        1952         0 female     22.0          4.000 no                       4          14            5        5

        1960         0 female     22.0          1.500 no                       2          16            4        5

        9001         0 male       47.0         15.000 no                       4          14            5        4

        9012         0 male       37.0         10.000 yes                      2          18            6        2

        9023         0 male       37.0         15.000 yes                      3          17            5        4

        9029         0 female     27.0          4.000 yes                      2          16            1        4
      ------------------------------------------------------------------------------------------------------------

    Ad 3.

    ``` text
    affairs %>% 
      select(affairs, rating, children) %>% 
      arrange(children, affairs)
    ```

        affairs   rating children
      --------- -------- ----------
              0        4 no
              0        4 no
              0        3 no
              0        5 no
              0        3 no
              0        5 no
              0        4 no
              0        4 no
              0        4 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        4 no
              0        3 no
              0        5 no
              0        5 no
              0        4 no
              0        5 no
              0        5 no
              0        5 no
              0        4 no
              0        5 no
              0        5 no
              0        4 no
              0        5 no
              0        4 no
              0        5 no
              0        5 no
              0        5 no
              0        4 no
              0        3 no
              0        4 no
              0        2 no
              0        4 no
              0        5 no
              0        4 no
              0        5 no
              0        4 no
              0        5 no
              0        4 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        3 no
              0        5 no
              0        4 no
              0        3 no
              0        3 no
              0        4 no
              0        5 no
              0        5 no
              0        4 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        3 no
              0        3 no
              0        5 no
              0        4 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        3 no
              0        4 no
              0        4 no
              0        5 no
              0        5 no
              0        3 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        3 no
              0        4 no
              0        4 no
              0        5 no
              0        2 no
              0        5 no
              0        5 no
              0        3 no
              0        3 no
              0        5 no
              0        5 no
              0        5 no
              0        4 no
              0        3 no
              0        5 no
              0        2 no
              0        4 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        4 no
              0        5 no
              0        5 no
              0        4 no
              0        2 no
              0        5 no
              0        5 no
              0        4 no
              0        4 no
              0        5 no
              0        5 no
              0        4 no
              0        3 no
              0        5 no
              0        5 no
              0        5 no
              0        4 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        3 no
              0        3 no
              0        1 no
              0        5 no
              0        4 no
              0        3 no
              0        3 no
              0        5 no
              0        5 no
              0        5 no
              0        4 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        5 no
              0        4 no
              1        5 no
              1        2 no
              1        4 no
              1        5 no
              1        5 no
              1        3 no
              1        5 no
              2        3 no
              2        1 no
              3        4 no
              3        5 no
              3        2 no
              3        3 no
              7        4 no
              7        5 no
              7        3 no
              7        4 no
              7        5 no
              7        5 no
              7        5 no
             12        4 no
             12        1 no
             12        2 no
             12        5 no
             12        5 no
             12        2 no
             12        5 no
              0        4 yes
              0        5 yes
              0        4 yes
              0        2 yes
              0        2 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        3 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        3 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        3 yes
              0        1 yes
              0        3 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        1 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        2 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        2 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        3 yes
              0        4 yes
              0        3 yes
              0        5 yes
              0        1 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        2 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        3 yes
              0        2 yes
              0        5 yes
              0        3 yes
              0        5 yes
              0        3 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        3 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        3 yes
              0        4 yes
              0        4 yes
              0        3 yes
              0        3 yes
              0        3 yes
              0        3 yes
              0        3 yes
              0        1 yes
              0        2 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        2 yes
              0        2 yes
              0        4 yes
              0        2 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        2 yes
              0        4 yes
              0        3 yes
              0        4 yes
              0        2 yes
              0        5 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        3 yes
              0        4 yes
              0        3 yes
              0        2 yes
              0        5 yes
              0        5 yes
              0        2 yes
              0        2 yes
              0        3 yes
              0        3 yes
              0        2 yes
              0        4 yes
              0        5 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        3 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        3 yes
              0        4 yes
              0        3 yes
              0        5 yes
              0        1 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        3 yes
              0        1 yes
              0        3 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        3 yes
              0        4 yes
              0        2 yes
              0        2 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        3 yes
              0        4 yes
              0        2 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        3 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        2 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        3 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        3 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        2 yes
              0        2 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        2 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        2 yes
              0        2 yes
              0        2 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        3 yes
              0        3 yes
              0        5 yes
              0        5 yes
              0        4 yes
              0        1 yes
              0        4 yes
              0        5 yes
              0        4 yes
              0        3 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        5 yes
              0        2 yes
              0        4 yes
              0        4 yes
              0        4 yes
              0        3 yes
              0        2 yes
              0        3 yes
              0        5 yes
              0        4 yes
              0        4 yes
              0        2 yes
              0        4 yes
              0        4 yes
              1        5 yes
              1        2 yes
              1        5 yes
              1        5 yes
              1        4 yes
              1        3 yes
              1        5 yes
              1        3 yes
              1        5 yes
              1        4 yes
              1        4 yes
              1        4 yes
              1        4 yes
              1        4 yes
              1        3 yes
              1        4 yes
              1        3 yes
              1        5 yes
              1        5 yes
              1        3 yes
              1        3 yes
              1        2 yes
              1        4 yes
              1        3 yes
              1        4 yes
              1        5 yes
              1        5 yes
              2        4 yes
              2        5 yes
              2        4 yes
              2        4 yes
              2        3 yes
              2        3 yes
              2        4 yes
              2        1 yes
              2        5 yes
              2        5 yes
              2        4 yes
              2        3 yes
              2        5 yes
              2        5 yes
              2        2 yes
              3        5 yes
              3        2 yes
              3        4 yes
              3        4 yes
              3        2 yes
              3        4 yes
              3        1 yes
              3        4 yes
              3        2 yes
              3        4 yes
              3        2 yes
              3        4 yes
              3        2 yes
              3        4 yes
              3        3 yes
              7        2 yes
              7        4 yes
              7        3 yes
              7        4 yes
              7        3 yes
              7        4 yes
              7        4 yes
              7        4 yes
              7        3 yes
              7        5 yes
              7        4 yes
              7        3 yes
              7        1 yes
              7        4 yes
              7        4 yes
              7        2 yes
              7        4 yes
              7        2 yes
              7        3 yes
              7        3 yes
              7        4 yes
              7        3 yes
              7        2 yes
              7        4 yes
              7        5 yes
              7        4 yes
              7        3 yes
              7        4 yes
              7        4 yes
              7        4 yes
              7        2 yes
              7        2 yes
              7        2 yes
              7        2 yes
              7        4 yes
             12        2 yes
             12        2 yes
             12        1 yes
             12        2 yes
             12        2 yes
             12        4 yes
             12        2 yes
             12        5 yes
             12        2 yes
             12        5 yes
             12        1 yes
             12        4 yes
             12        2 yes
             12        5 yes
             12        2 yes
             12        3 yes
             12        2 yes
             12        3 yes
             12        3 yes
             12        4 yes
             12        2 yes
             12        1 yes
             12        4 yes
             12        3 yes
             12        2 yes
             12        2 yes
             12        4 yes
             12        5 yes
             12        5 yes
             12        2 yes
             12        4 yes

    Ad 4.

    ``` text
    affairs %>% 
      summarise(affairs_mean = mean(affairs))
    ```

        affairs_mean
      --------------
            1.455907

    Ad 5.

    ``` text
    affairs %>% 
      group_by(gender, children) %>% 
      summarise(affairs_mean = mean(affairs))
    ```

        ## # A tibble: 4 × 3
        ## # Groups:   gender [2]
        ##   gender children affairs_mean
        ##   <chr>  <chr>           <dbl>
        ## 1 female no              0.838
        ## 2 female yes             1.69 
        ## 3 male   no              1.01 
        ## 4 male   yes             1.66

    Ad 6.

    ``` text
    affairs %>% 
      group_by(...1) %>% 
      summarise(max(c(religiousness, rating)))
    ```

        ...1   max(c(religiousness, rating))
      ------ -------------------------------
           4                               4
           5                               4
           6                               4
          11                               4
          12                               5
          16                               5
          23                               3
          29                               5
          43                               5
          44                               3
          45                               4
          47                               4
          49                               5
          50                               2
          53                               3
          55                               4
          64                               5
          67                               5
          79                               5
          80                               4
          86                               4
          93                               5
         108                               3
         114                               4
         115                               5
         116                               5
         122                               4
         123                               5
         126                               4
         127                               5
         129                               4
         133                               4
         134                               5
         137                               4
         138                               4
         139                               5
         147                               5
         151                               5
         153                               5
         154                               4
         155                               4
         159                               4
         162                               4
         163                               5
         165                               4
         168                               5
         170                               4
         172                               4
         174                               5
         176                               2
         181                               3
         182                               5
         184                               4
         186                               3
         187                               5
         189                               5
         192                               5
         194                               5
         204                               5
         210                               5
         215                               5
         217                               5
         220                               5
         224                               2
         227                               5
         228                               5
         232                               4
         233                               5
         239                               5
         241                               4
         245                               5
         249                               4
         252                               4
         253                               4
         262                               5
         265                               4
         267                               5
         269                               4
         271                               5
         274                               4
         275                               4
         277                               4
         287                               2
         288                               4
         290                               5
         292                               5
         293                               4
         295                               4
         299                               5
         320                               4
         321                               5
         324                               5
         325                               3
         328                               4
         334                               4
         344                               2
         351                               5
         353                               5
         354                               5
         355                               4
         361                               5
         362                               5
         366                               4
         367                               4
         369                               4
         370                               5
         374                               5
         378                               5
         381                               4
         382                               5
         383                               5
         384                               5
         390                               3
         392                               5
         400                               5
         403                               5
         409                               2
         412                               5
         413                               5
         416                               4
         418                               4
         422                               5
         423                               4
         432                               3
         435                               4
         436                               3
         439                               5
         445                               3
         447                               5
         448                               4
         449                               4
         478                               3
         482                               4
         483                               5
         486                               5
         489                               4
         490                               5
         491                               3
         492                               4
         503                               5
         508                               5
         509                               5
         512                               4
         513                               4
         515                               5
         516                               2
         517                               5
         518                               5
         520                               5
         526                               4
         528                               4
         532                               4
         533                               4
         535                               4
         537                               4
         538                               3
         543                               4
         547                               5
         550                               5
         553                               5
         558                               5
         571                               5
         576                               4
         578                               4
         583                               5
         586                               4
         594                               5
         597                               5
         602                               4
         603                               5
         604                               5
         611                               5
         612                               4
         613                               2
         621                               5
         625                               4
         627                               5
         630                               5
         631                               5
         632                               5
         635                               4
         639                               5
         645                               4
         646                               5
         647                               5
         648                               5
         651                               3
         655                               3
         657                               5
         659                               3
         666                               4
         667                               4
         670                               5
         671                               4
         673                               5
         679                               4
         701                               4
         705                               4
         706                               5
         709                               5
         717                               4
         719                               3
         723                               4
         724                               4
         726                               5
         729                               2
         734                               4
         735                               4
         736                               4
         737                               3
         739                               3
         743                               4
         745                               3
         747                               4
         751                               5
         752                               4
         754                               4
         755                               2
         758                               4
         760                               5
         763                               5
         770                               4
         774                               5
         776                               5
         779                               5
         784                               4
         786                               4
         788                               4
         794                               2
         795                               4
         797                               3
         798                               4
         800                               4
         803                               5
         807                               5
         811                               4
         812                               5
         820                               4
         823                               5
         830                               2
         834                               4
         843                               4
         848                               4
         851                               4
         854                               4
         856                               5
         857                               5
         858                               4
         859                               3
         863                               5
         865                               5
         867                               5
         870                               5
         873                               5
         875                               5
         876                               5
         877                               5
         880                               4
         885                               4
         893                               3
         903                               4
         904                               4
         905                               3
         908                               4
         909                               4
         910                               5
         912                               4
         914                               5
         915                               5
         916                               5
         920                               5
         921                               3
         925                               2
         926                               3
         927                               3
         928                               4
         929                               4
         931                               5
         933                               3
         945                               4
         947                               4
         949                               3
         950                               5
         951                               2
         961                               2
         965                               5
         966                               5
         967                               5
         968                               5
         972                               4
         975                               5
         977                               3
         981                               5
         986                               3
         987                               5
         990                               4
         992                               4
         995                               5
        1002                               4
        1007                               4
        1009                               3
        1011                               4
        1021                               5
        1026                               5
        1027                               4
        1030                               4
        1031                               5
        1034                               4
        1035                               3
        1037                               4
        1038                               5
        1039                               5
        1045                               5
        1046                               5
        1050                               3
        1054                               5
        1056                               3
        1057                               5
        1059                               4
        1063                               5
        1068                               4
        1070                               5
        1072                               5
        1073                               5
        1075                               2
        1077                               4
        1080                               3
        1081                               4
        1083                               4
        1084                               5
        1086                               5
        1087                               4
        1089                               4
        1096                               3
        1102                               5
        1103                               4
        1107                               5
        1109                               4
        1115                               4
        1119                               5
        1124                               4
        1125                               4
        1126                               5
        1128                               4
        1129                               5
        1130                               4
        1131                               4
        1133                               4
        1138                               3
        1140                               5
        1143                               5
        1146                               4
        1150                               4
        1153                               4
        1156                               5
        1157                               3
        1158                               5
        1160                               2
        1161                               5
        1163                               4
        1166                               5
        1169                               5
        1177                               5
        1178                               5
        1180                               5
        1187                               3
        1191                               3
        1195                               4
        1198                               2
        1204                               5
        1207                               2
        1208                               5
        1209                               5
        1211                               4
        1215                               5
        1218                               3
        1221                               4
        1226                               4
        1229                               4
        1230                               2
        1231                               3
        1234                               4
        1235                               3
        1236                               4
        1242                               5
        1245                               3
        1247                               2
        1259                               3
        1260                               3
        1266                               4
        1271                               4
        1273                               5
        1276                               5
        1280                               4
        1282                               5
        1285                               3
        1294                               5
        1295                               5
        1298                               5
        1299                               4
        1304                               5
        1305                               2
        1311                               5
        1314                               4
        1319                               5
        1322                               4
        1324                               4
        1327                               5
        1328                               5
        1330                               4
        1332                               5
        1333                               2
        1336                               5
        1341                               5
        1344                               4
        1352                               5
        1353                               4
        1358                               5
        1359                               5
        1361                               4
        1364                               4
        1368                               4
        1370                               3
        1384                               5
        1390                               5
        1393                               4
        1394                               5
        1402                               5
        1407                               5
        1408                               4
        1412                               5
        1413                               5
        1416                               4
        1417                               4
        1418                               4
        1419                               4
        1420                               5
        1423                               5
        1424                               4
        1427                               3
        1432                               5
        1433                               5
        1437                               5
        1438                               5
        1439                               5
        1445                               5
        1446                               3
        1450                               4
        1451                               5
        1452                               4
        1453                               4
        1456                               5
        1460                               4
        1464                               3
        1469                               4
        1473                               5
        1480                               4
        1481                               5
        1482                               5
        1496                               5
        1497                               5
        1504                               5
        1505                               2
        1513                               5
        1515                               3
        1534                               5
        1535                               4
        1536                               5
        1540                               5
        1543                               3
        1548                               4
        1550                               5
        1551                               5
        1555                               5
        1557                               5
        1561                               2
        1564                               4
        1566                               5
        1567                               5
        1573                               5
        1575                               5
        1576                               5
        1584                               5
        1585                               4
        1590                               4
        1594                               4
        1595                               5
        1599                               3
        1603                               5
        1608                               4
        1609                               5
        1615                               4
        1616                               5
        1617                               4
        1620                               5
        1621                               5
        1622                               5
        1629                               5
        1637                               5
        1638                               5
        1650                               5
        1654                               4
        1664                               4
        1665                               2
        1669                               1
        1670                               5
        1671                               4
        1674                               5
        1675                               4
        1682                               5
        1685                               5
        1688                               5
        1691                               4
        1695                               5
        1697                               4
        1698                               4
        1704                               3
        1705                               3
        1711                               2
        1716                               3
        1719                               5
        1723                               5
        1726                               5
        1730                               4
        1731                               4
        1732                               3
        1743                               3
        1749                               5
        1751                               4
        1752                               3
        1754                               5
        1757                               4
        1758                               5
        1761                               5
        1763                               4
        1766                               3
        1772                               3
        1773                               3
        1775                               4
        1776                               5
        1782                               5
        1784                               5
        1786                               5
        1791                               4
        1793                               4
        1799                               5
        1803                               4
        1806                               5
        1807                               3
        1808                               5
        1814                               4
        1815                               4
        1818                               5
        1827                               3
        1831                               3
        1834                               5
        1835                               4
        1840                               4
        1843                               5
        1844                               3
        1846                               5
        1850                               5
        1851                               4
        1854                               2
        1856                               2
        1859                               5
        1861                               4
        1866                               5
        1873                               5
        1875                               4
        1876                               4
        1885                               5
        1892                               4
        1895                               4
        1896                               5
        1897                               4
        1899                               5
        1904                               2
        1905                               4
        1908                               4
        1916                               4
        1918                               4
        1920                               2
        1929                               4
        1930                               3
        1935                               3
        1938                               5
        1940                               5
        1941                               4
        1947                               4
        1949                               5
        1951                               4
        1952                               5
        1954                               5
        1959                               3
        1960                               5
        9001                               4
        9010                               5
        9012                               2
        9023                               4
        9029                               4

    Ad 7.

    ``` text
    affairs %>% 
      mutate(heiratsalter = age - yearsmarried)
    ```

      ---------------------------------------------------------------------------------------------------------------------------
        ...1   affairs gender      age   yearsmarried children     religiousness   education   occupation   rating   heiratsalter
      ------ --------- -------- ------ -------------- ---------- --------------- ----------- ------------ -------- --------------
           4         0 male       37.0         10.000 no                       3          18            7        4         27.000

           5         0 female     27.0          4.000 no                       4          14            6        4         23.000

          11         0 female     32.0         15.000 yes                      1          12            1        4         17.000

          16         0 male       57.0         15.000 yes                      5          18            6        5         42.000

          23         0 male       22.0          0.750 no                       2          17            6        3         21.250

          29         0 female     32.0          1.500 no                       2          17            5        5         30.500

          44         0 female     22.0          0.750 no                       2          12            1        3         21.250

          45         0 male       57.0         15.000 yes                      2          14            4        4         42.000

          47         0 female     32.0         15.000 yes                      4          16            1        2         17.000

          49         0 male       22.0          1.500 no                       4          14            4        5         20.500

          50         0 male       37.0         15.000 yes                      2          20            7        2         22.000

          55         0 male       27.0          4.000 yes                      4          18            6        4         23.000

          64         0 male       47.0         15.000 yes                      5          17            6        4         32.000

          80         0 female     22.0          1.500 no                       2          17            5        4         20.500

          86         0 female     27.0          4.000 no                       4          14            5        4         23.000

          93         0 female     37.0         15.000 yes                      1          17            5        5         22.000

         108         0 female     37.0         15.000 yes                      2          18            4        3         22.000

         114         0 female     22.0          0.750 no                       3          16            5        4         21.250

         115         0 female     22.0          1.500 no                       2          16            5        5         20.500

         116         0 female     27.0         10.000 yes                      2          14            1        5         17.000

         123         0 female     22.0          1.500 no                       2          16            5        5         20.500

         127         0 female     22.0          1.500 no                       2          16            5        5         20.500

         129         0 female     27.0         10.000 yes                      4          16            5        4         17.000

         134         0 female     32.0         10.000 yes                      3          14            1        5         22.000

         137         0 male       37.0          4.000 yes                      2          20            6        4         33.000

         139         0 female     22.0          1.500 no                       2          18            5        5         20.500

         147         0 female     27.0          7.000 no                       4          16            1        5         20.000

         151         0 male       42.0         15.000 yes                      5          20            6        4         27.000

         153         0 male       27.0          4.000 yes                      3          16            5        5         23.000

         155         0 female     27.0          4.000 yes                      3          17            5        4         23.000

         162         0 male       42.0         15.000 yes                      4          20            6        3         27.000

         163         0 female     22.0          1.500 no                       3          16            5        5         20.500

         165         0 male       27.0          0.417 no                       4          17            6        4         26.583

         168         0 female     42.0         15.000 yes                      5          14            5        4         27.000

         170         0 male       32.0          4.000 yes                      1          18            6        4         28.000

         172         0 female     22.0          1.500 no                       4          16            5        3         20.500

         184         0 female     42.0         15.000 yes                      3          12            1        4         27.000

         187         0 female     22.0          4.000 no                       4          17            5        5         18.000

         192         0 male       22.0          1.500 yes                      1          14            3        5         20.500

         194         0 female     22.0          0.750 no                       3          16            1        5         21.250

         210         0 male       32.0         10.000 yes                      5          20            6        5         22.000

         217         0 male       52.0         15.000 yes                      5          18            6        3         37.000

         220         0 female     22.0          0.417 no                       5          14            1        4         21.583

         224         0 female     27.0          4.000 yes                      2          18            6        1         23.000

         227         0 female     32.0          7.000 yes                      5          17            5        3         25.000

         228         0 male       22.0          4.000 no                       3          16            5        5         18.000

         239         0 female     27.0          7.000 yes                      4          18            6        5         20.000

         241         0 female     42.0         15.000 yes                      2          18            5        4         27.000

         245         0 male       27.0          1.500 yes                      4          16            3        5         25.500

         249         0 male       42.0         15.000 yes                      2          20            6        4         27.000

         262         0 female     22.0          0.750 no                       5          14            3        5         21.250

         265         0 male       32.0          7.000 yes                      2          20            6        4         25.000

         267         0 male       27.0          4.000 yes                      5          20            6        5         23.000

         269         0 male       27.0         10.000 yes                      4          20            6        4         17.000

         271         0 male       22.0          4.000 no                       1          18            5        5         18.000

         277         0 female     37.0         15.000 yes                      4          14            3        1         22.000

         290         0 male       22.0          1.500 yes                      5          16            4        4         20.500

         292         0 female     37.0         15.000 yes                      4          17            1        5         22.000

         293         0 female     27.0          0.750 no                       4          17            5        4         26.250

         295         0 male       32.0         10.000 yes                      4          20            6        4         22.000

         299         0 female     47.0         15.000 yes                      5          14            7        2         32.000

         320         0 male       37.0         10.000 yes                      3          20            6        4         27.000

         321         0 female     22.0          0.750 no                       2          16            5        5         21.250

         324         0 male       27.0          4.000 no                       2          18            4        5         23.000

         334         0 male       32.0          7.000 no                       4          20            6        4         25.000

         351         0 male       42.0         15.000 yes                      2          17            3        5         27.000

         355         0 male       37.0         10.000 yes                      4          20            6        4         27.000

         361         0 female     47.0         15.000 yes                      3          17            6        5         32.000

         362         0 female     22.0          1.500 no                       5          16            5        5         20.500

         366         0 female     27.0          1.500 no                       2          16            6        4         25.500

         370         0 female     27.0          4.000 no                       3          17            5        5         23.000

         374         0 female     32.0         10.000 yes                      5          14            4        5         22.000

         378         0 female     22.0          0.125 no                       2          12            5        5         21.875

         381         0 male       47.0         15.000 yes                      4          14            4        3         32.000

         382         0 male       32.0         15.000 yes                      1          14            5        5         17.000

         383         0 male       27.0          7.000 yes                      4          16            5        5         20.000

         384         0 female     22.0          1.500 yes                      3          16            5        5         20.500

         400         0 male       27.0          4.000 yes                      3          17            6        5         23.000

         403         0 female     22.0          1.500 no                       3          16            5        5         20.500

         409         0 male       57.0         15.000 yes                      2          14            7        2         42.000

         412         0 male       17.5          1.500 yes                      3          18            6        5         16.000

         413         0 male       57.0         15.000 yes                      4          20            6        5         42.000

         416         0 female     22.0          0.750 no                       2          16            3        4         21.250

         418         0 male       42.0          4.000 no                       4          17            3        3         38.000

         422         0 female     22.0          1.500 yes                      4          12            1        5         20.500

         435         0 female     22.0          0.417 no                       1          17            6        4         21.583

         439         0 female     32.0         15.000 yes                      4          17            5        5         17.000

         445         0 female     27.0          1.500 no                       3          18            5        2         25.500

         447         0 female     22.0          1.500 yes                      3          14            1        5         20.500

         448         0 female     37.0         15.000 yes                      3          14            1        4         22.000

         449         0 female     32.0         15.000 yes                      4          14            3        4         17.000

         478         0 male       37.0         10.000 yes                      2          14            5        3         27.000

         482         0 male       37.0         10.000 yes                      4          16            5        4         27.000

         486         0 male       57.0         15.000 yes                      5          20            5        3         42.000

         489         0 male       27.0          0.417 no                       1          16            3        4         26.583

         490         0 female     42.0         15.000 yes                      5          14            1        5         27.000

         491         0 male       57.0         15.000 yes                      3          16            6        1         42.000

         492         0 male       37.0         10.000 yes                      1          16            6        4         27.000

         503         0 male       37.0         15.000 yes                      3          17            5        5         22.000

         508         0 male       37.0         15.000 yes                      4          20            6        5         22.000

         509         0 female     27.0         10.000 yes                      5          14            1        5         17.000

         512         0 male       37.0         10.000 yes                      2          18            6        4         27.000

         515         0 female     22.0          0.125 no                       4          12            4        5         21.875

         517         0 male       57.0         15.000 yes                      5          20            6        5         42.000

         532         0 female     37.0         15.000 yes                      4          18            6        4         22.000

         533         0 male       22.0          4.000 yes                      4          14            6        4         18.000

         535         0 male       27.0          7.000 yes                      4          18            5        4         20.000

         537         0 male       57.0         15.000 yes                      4          20            5        4         42.000

         538         0 male       32.0         15.000 yes                      3          14            6        3         17.000

         543         0 female     22.0          1.500 no                       2          14            5        4         20.500

         547         0 female     32.0          7.000 yes                      4          17            1        5         25.000

         550         0 female     37.0         15.000 yes                      4          17            6        5         22.000

         558         0 female     32.0          1.500 no                       5          18            5        5         30.500

         571         0 male       42.0         10.000 yes                      5          20            7        4         32.000

         578         0 female     27.0          7.000 no                       3          16            5        4         20.000

         583         0 male       37.0         15.000 no                       4          20            6        5         22.000

         586         0 male       37.0         15.000 yes                      4          14            3        2         22.000

         594         0 male       32.0         10.000 no                       5          18            6        4         22.000

         597         0 female     22.0          0.750 no                       4          16            1        5         21.250

         602         0 female     27.0          7.000 yes                      4          12            2        4         20.000

         603         0 female     27.0          7.000 yes                      2          16            2        5         20.000

         604         0 female     42.0         15.000 yes                      5          18            5        4         27.000

         612         0 male       42.0         15.000 yes                      4          17            5        3         27.000

         613         0 female     27.0          7.000 yes                      2          16            1        2         20.000

         621         0 female     22.0          1.500 no                       3          16            5        5         20.500

         627         0 male       37.0         15.000 yes                      5          20            6        5         22.000

         630         0 female     22.0          0.125 no                       2          14            4        5         21.875

         631         0 male       27.0          1.500 no                       4          16            5        5         25.500

         632         0 male       32.0          1.500 no                       2          18            6        5         30.500

         639         0 male       27.0          1.500 no                       2          17            6        5         25.500

         645         0 female     27.0         10.000 yes                      4          16            1        3         17.000

         647         0 male       42.0         15.000 yes                      4          18            6        5         27.000

         648         0 female     27.0          1.500 no                       2          16            6        5         25.500

         651         0 male       27.0          4.000 no                       2          18            6        3         23.000

         655         0 female     32.0         10.000 yes                      3          14            5        3         22.000

         667         0 female     32.0         15.000 yes                      3          18            5        4         17.000

         670         0 female     22.0          0.750 no                       2          18            6        5         21.250

         671         0 female     37.0         15.000 yes                      2          16            1        4         22.000

         673         0 male       27.0          4.000 yes                      4          20            5        5         23.000

         701         0 male       27.0          4.000 no                       1          20            5        4         23.000

         705         0 female     27.0         10.000 yes                      2          12            1        4         17.000

         706         0 female     32.0         15.000 yes                      5          18            6        4         17.000

         709         0 male       27.0          7.000 yes                      5          12            5        3         20.000

         717         0 male       52.0         15.000 yes                      2          18            5        4         37.000

         719         0 male       27.0          4.000 no                       3          20            6        3         23.000

         723         0 male       37.0          4.000 yes                      1          18            5        4         33.000

         724         0 male       27.0          4.000 yes                      4          14            5        4         23.000

         726         0 female     52.0         15.000 yes                      5          12            1        3         37.000

         734         0 female     57.0         15.000 yes                      4          16            6        4         42.000

         735         0 male       27.0          7.000 yes                      1          16            5        4         20.000

         736         0 male       37.0          7.000 yes                      4          20            6        3         30.000

         737         0 male       22.0          0.750 no                       2          14            4        3         21.250

         739         0 male       32.0          4.000 yes                      2          18            5        3         28.000

         743         0 male       37.0         15.000 yes                      4          20            6        3         22.000

         745         0 male       22.0          0.750 yes                      2          14            4        3         21.250

         747         0 male       42.0         15.000 yes                      4          20            6        3         27.000

         751         0 female     52.0         15.000 yes                      5          17            1        1         37.000

         752         0 female     37.0         15.000 yes                      4          14            1        2         22.000

         754         0 male       27.0          7.000 yes                      4          14            5        3         20.000

         760         0 male       32.0          4.000 yes                      2          16            5        5         28.000

         763         0 female     27.0          4.000 yes                      2          18            6        5         23.000

         774         0 female     27.0          4.000 yes                      2          18            5        5         23.000

         776         0 male       37.0         15.000 yes                      5          18            6        5         22.000

         779         0 female     47.0         15.000 yes                      5          12            5        4         32.000

         784         0 female     32.0         10.000 yes                      3          17            1        4         22.000

         788         0 female     27.0          1.500 yes                      4          17            1        2         25.500

         794         0 female     57.0         15.000 yes                      2          18            5        2         42.000

         795         0 female     22.0          1.500 no                       4          14            5        4         20.500

         798         0 male       42.0         15.000 yes                      3          14            3        4         27.000

         800         0 male       57.0         15.000 yes                      4           9            2        2         42.000

         803         0 male       57.0         15.000 yes                      4          20            6        5         42.000

         807         0 female     22.0          0.125 no                       4          14            4        5         21.875

         812         0 female     32.0         10.000 yes                      4          14            1        5         22.000

         820         0 female     42.0         15.000 yes                      3          18            5        4         27.000

         823         0 female     27.0          1.500 no                       2          18            6        5         25.500

         830         0 male       32.0          0.125 yes                      2          18            5        2         31.875

         843         0 female     27.0          4.000 no                       3          16            5        4         23.000

         848         0 female     27.0         10.000 yes                      2          16            1        4         17.000

         851         0 female     32.0          7.000 yes                      4          16            1        3         25.000

         854         0 female     37.0         15.000 yes                      4          14            5        4         22.000

         856         0 female     42.0         15.000 yes                      5          17            6        2         27.000

         857         0 male       32.0          1.500 yes                      4          14            6        5         30.500

         859         0 female     32.0          4.000 yes                      3          17            5        3         28.000

         863         0 female     37.0          7.000 no                       4          18            5        5         30.000

         865         0 female     22.0          0.417 yes                      3          14            3        5         21.583

         867         0 female     27.0          7.000 yes                      4          14            1        5         20.000

         870         0 male       27.0          0.750 no                       3          16            5        5         26.250

         873         0 male       27.0          4.000 yes                      2          20            5        5         23.000

         875         0 male       32.0         10.000 yes                      4          16            4        5         22.000

         876         0 male       32.0         15.000 yes                      1          14            5        5         17.000

         877         0 male       22.0          0.750 no                       3          17            4        5         21.250

         880         0 female     27.0          7.000 yes                      4          17            1        4         20.000

         903         0 male       27.0          0.417 yes                      4          20            5        4         26.583

         904         0 male       37.0         15.000 yes                      4          20            5        4         22.000

         905         0 female     37.0         15.000 yes                      2          14            1        3         22.000

         908         0 male       22.0          4.000 yes                      1          18            5        4         18.000

         909         0 male       37.0         15.000 yes                      4          17            5        3         22.000

         910         0 female     22.0          1.500 no                       2          14            4        5         20.500

         912         0 male       52.0         15.000 yes                      4          14            6        2         37.000

         914         0 female     22.0          1.500 no                       4          17            5        5         20.500

         915         0 male       32.0          4.000 yes                      5          14            3        5         28.000

         916         0 male       32.0          4.000 yes                      2          14            3        5         28.000

         920         0 female     22.0          1.500 no                       3          16            6        5         20.500

         921         0 male       27.0          0.750 no                       2          18            3        3         26.250

         925         0 female     22.0          7.000 yes                      2          14            5        2         15.000

         926         0 female     27.0          0.750 no                       2          17            5        3         26.250

         929         0 female     37.0         15.000 yes                      4          12            1        2         22.000

         931         0 female     22.0          1.500 no                       1          14            1        5         20.500

         945         0 female     37.0         10.000 no                       2          12            4        4         27.000

         947         0 female     37.0         15.000 yes                      4          18            5        3         22.000

         949         0 female     42.0         15.000 yes                      3          12            3        3         27.000

         950         0 male       22.0          4.000 no                       2          18            5        5         18.000

         961         0 male       52.0          7.000 yes                      2          20            6        2         45.000

         965         0 male       27.0          0.750 no                       2          17            5        5         26.250

         966         0 female     27.0          4.000 no                       2          17            4        5         23.000

         967         0 male       42.0          1.500 no                       5          20            6        5         40.500

         987         0 male       22.0          1.500 no                       4          17            6        5         20.500

         990         0 male       22.0          4.000 no                       4          17            5        3         18.000

         992         0 female     22.0          4.000 yes                      1          14            5        4         18.000

         995         0 male       37.0         15.000 yes                      5          20            4        5         22.000

        1009         0 female     37.0         10.000 yes                      3          16            6        3         27.000

        1021         0 male       42.0         15.000 yes                      4          17            6        5         27.000

        1026         0 female     47.0         15.000 yes                      4          17            5        5         32.000

        1027         0 male       22.0          1.500 no                       4          16            5        4         20.500

        1030         0 female     32.0         10.000 yes                      3          12            1        4         22.000

        1031         0 female     22.0          7.000 yes                      1          14            3        5         15.000

        1034         0 female     32.0         10.000 yes                      4          17            5        4         22.000

        1037         0 male       27.0          1.500 yes                      2          16            2        4         25.500

        1038         0 male       37.0         15.000 yes                      4          14            5        5         22.000

        1039         0 male       42.0          4.000 yes                      3          14            4        5         38.000

        1045         0 female     37.0         15.000 yes                      5          14            5        4         22.000

        1046         0 female     32.0          7.000 yes                      4          17            5        5         25.000

        1054         0 female     42.0         15.000 yes                      4          18            6        5         27.000

        1059         0 male       27.0          4.000 no                       4          18            6        4         23.000

        1063         0 male       22.0          0.750 no                       4          18            6        5         21.250

        1068         0 male       27.0          4.000 yes                      4          14            5        3         23.000

        1070         0 female     22.0          0.750 no                       5          18            1        5         21.250

        1072         0 female     52.0         15.000 yes                      5           9            5        5         37.000

        1073         0 male       32.0         10.000 yes                      3          14            5        5         22.000

        1077         0 female     37.0         15.000 yes                      4          16            4        4         22.000

        1081         0 male       32.0          7.000 yes                      2          20            5        4         25.000

        1083         0 female     42.0         15.000 yes                      3          18            1        4         27.000

        1084         0 male       32.0         15.000 yes                      1          16            5        5         17.000

        1086         0 male       27.0          4.000 yes                      3          18            5        5         23.000

        1087         0 female     32.0         15.000 yes                      4          12            3        4         17.000

        1089         0 male       22.0          0.750 yes                      3          14            2        4         21.250

        1096         0 female     22.0          1.500 no                       3          16            5        3         20.500

        1102         0 female     42.0         15.000 yes                      4          14            3        5         27.000

        1103         0 female     52.0         15.000 yes                      3          16            5        4         37.000

        1107         0 male       37.0         15.000 yes                      5          20            6        4         22.000

        1109         0 female     47.0         15.000 yes                      4          12            2        3         32.000

        1115         0 male       57.0         15.000 yes                      2          20            6        4         42.000

        1119         0 male       32.0          7.000 yes                      4          17            5        5         25.000

        1124         0 female     27.0          7.000 yes                      4          17            1        4         20.000

        1126         0 male       22.0          1.500 no                       1          18            6        5         20.500

        1128         0 female     22.0          4.000 yes                      3           9            1        4         18.000

        1129         0 female     22.0          1.500 no                       2          14            1        5         20.500

        1130         0 male       42.0         15.000 yes                      2          20            6        4         27.000

        1133         0 male       57.0         15.000 yes                      4           9            2        4         42.000

        1140         0 female     27.0          7.000 yes                      2          18            1        5         20.000

        1143         0 female     22.0          4.000 yes                      3          14            1        5         18.000

        1146         0 male       37.0         15.000 yes                      4          14            5        3         22.000

        1153         0 male       32.0          7.000 yes                      1          18            6        4         25.000

        1156         0 female     22.0          1.500 no                       2          14            5        5         20.500

        1157         0 female     22.0          1.500 yes                      3          12            1        3         20.500

        1158         0 male       52.0         15.000 yes                      2          14            5        5         37.000

        1160         0 female     37.0         15.000 yes                      2          14            1        1         22.000

        1161         0 female     32.0         10.000 yes                      2          14            5        5         22.000

        1166         0 male       42.0         15.000 yes                      4          20            4        5         27.000

        1177         0 female     27.0          4.000 yes                      3          18            4        5         23.000

        1178         0 male       37.0         15.000 yes                      4          20            6        5         22.000

        1180         0 male       27.0          1.500 no                       3          18            5        5         25.500

        1187         0 female     22.0          0.125 no                       2          16            6        3         21.875

        1191         0 male       32.0         10.000 yes                      2          20            6        3         22.000

        1195         0 female     27.0          4.000 no                       4          18            5        4         23.000

        1207         0 female     27.0          7.000 yes                      2          12            5        1         20.000

        1208         0 male       32.0          4.000 yes                      5          18            6        3         28.000

        1209         0 female     37.0         15.000 yes                      2          17            5        5         22.000

        1211         0 male       47.0         15.000 no                       4          20            6        4         32.000

        1215         0 male       27.0          1.500 no                       1          18            5        5         25.500

        1221         0 male       37.0         15.000 yes                      4          20            6        4         22.000

        1226         0 female     32.0         15.000 yes                      4          18            1        4         17.000

        1229         0 female     32.0          7.000 yes                      4          17            5        4         25.000

        1231         0 female     42.0         15.000 yes                      3          14            1        3         27.000

        1234         0 female     27.0          7.000 yes                      3          16            1        4         20.000

        1235         0 male       27.0          1.500 no                       3          16            4        2         25.500

        1242         0 male       22.0          1.500 no                       3          16            3        5         20.500

        1245         0 male       27.0          4.000 yes                      3          16            4        2         23.000

        1260         0 female     27.0          7.000 yes                      3          12            1        2         20.000

        1266         0 female     37.0         15.000 yes                      2          18            5        4         22.000

        1271         0 female     37.0          7.000 yes                      3          14            4        4         30.000

        1273         0 male       22.0          1.500 no                       2          16            5        5         20.500

        1276         0 male       37.0         15.000 yes                      5          20            5        4         22.000

        1280         0 female     22.0          1.500 no                       4          16            5        3         20.500

        1282         0 female     32.0         10.000 yes                      4          16            1        5         22.000

        1285         0 male       27.0          4.000 no                       2          17            5        3         23.000

        1295         0 female     22.0          0.417 no                       4          14            5        5         21.583

        1298         0 female     27.0          4.000 no                       2          18            5        5         23.000

        1299         0 male       37.0         15.000 yes                      4          18            5        3         22.000

        1304         0 male       37.0         10.000 yes                      5          20            7        4         27.000

        1305         0 female     27.0          7.000 yes                      2          14            4        2         20.000

        1311         0 male       32.0          4.000 yes                      2          16            5        5         28.000

        1314         0 male       32.0          4.000 yes                      2          16            6        4         28.000

        1319         0 male       22.0          1.500 no                       3          18            4        5         20.500

        1322         0 female     22.0          4.000 yes                      4          14            3        4         18.000

        1324         0 female     17.5          0.750 no                       2          18            5        4         16.750

        1327         0 male       32.0         10.000 yes                      4          20            4        5         22.000

        1328         0 female     32.0          0.750 no                       5          14            3        3         31.250

        1330         0 male       37.0         15.000 yes                      4          17            5        3         22.000

        1332         0 male       32.0          4.000 no                       3          14            4        5         28.000

        1333         0 female     27.0          1.500 no                       2          17            3        2         25.500

        1336         0 female     22.0          7.000 yes                      4          14            1        5         15.000

        1341         0 male       47.0         15.000 yes                      5          14            6        5         32.000

        1344         0 male       27.0          4.000 yes                      1          16            4        4         23.000

        1352         0 female     37.0         15.000 yes                      5          14            1        3         22.000

        1358         0 male       42.0          4.000 yes                      4          18            5        5         38.000

        1359         0 female     32.0          4.000 yes                      2          14            1        5         28.000

        1361         0 male       52.0         15.000 yes                      2          14            7        4         37.000

        1364         0 female     22.0          1.500 no                       2          16            1        4         20.500

        1368         0 male       52.0         15.000 yes                      4          12            2        4         37.000

        1384         0 female     22.0          0.417 no                       3          17            1        5         21.583

        1390         0 female     22.0          1.500 no                       2          16            5        5         20.500

        1393         0 male       27.0          4.000 yes                      4          20            6        4         23.000

        1394         0 female     32.0         15.000 yes                      4          14            1        5         17.000

        1402         0 female     27.0          1.500 no                       2          16            3        5         25.500

        1407         0 male       32.0          4.000 no                       1          20            6        5         28.000

        1408         0 male       37.0         15.000 yes                      3          20            6        4         22.000

        1412         0 female     32.0         10.000 no                       2          16            6        5         22.000

        1413         0 female     32.0         10.000 yes                      5          14            5        5         22.000

        1416         0 male       37.0          1.500 yes                      4          18            5        3         35.500

        1417         0 male       32.0          1.500 no                       2          18            4        4         30.500

        1418         0 female     32.0         10.000 yes                      4          14            1        4         22.000

        1419         0 female     47.0         15.000 yes                      4          18            5        4         32.000

        1420         0 female     27.0         10.000 yes                      5          12            1        5         17.000

        1423         0 male       27.0          4.000 yes                      3          16            4        5         23.000

        1424         0 female     37.0         15.000 yes                      4          12            4        2         22.000

        1432         0 female     27.0          0.750 no                       4          16            5        5         26.250

        1433         0 female     37.0         15.000 yes                      4          16            1        5         22.000

        1437         0 female     32.0         15.000 yes                      3          16            1        5         17.000

        1438         0 female     27.0         10.000 yes                      2          16            1        5         17.000

        1439         0 male       27.0          7.000 no                       2          20            6        5         20.000

        1446         0 female     37.0         15.000 yes                      2          14            1        3         22.000

        1450         0 male       27.0          1.500 yes                      2          17            4        4         25.500

        1451         0 female     22.0          0.750 yes                      2          14            1        5         21.250

        1452         0 male       22.0          4.000 yes                      4          14            2        4         18.000

        1453         0 male       42.0          0.125 no                       4          17            6        4         41.875

        1456         0 male       27.0          1.500 yes                      4          18            6        5         25.500

        1464         0 male       27.0          7.000 yes                      3          16            6        3         20.000

        1469         0 female     52.0         15.000 yes                      4          14            1        3         37.000

        1473         0 male       27.0          1.500 no                       5          20            5        2         25.500

        1481         0 female     27.0          1.500 no                       2          16            5        5         25.500

        1482         0 female     27.0          1.500 no                       3          17            5        5         25.500

        1496         0 male       22.0          0.125 no                       5          16            4        4         21.875

        1497         0 female     27.0          4.000 yes                      4          16            1        5         23.000

        1504         0 female     27.0          4.000 yes                      4          12            1        5         23.000

        1513         0 female     47.0         15.000 yes                      2          14            5        5         32.000

        1515         0 female     32.0         15.000 yes                      3          14            5        3         17.000

        1534         0 male       42.0          7.000 yes                      2          16            5        5         35.000

        1535         0 male       22.0          0.750 no                       4          16            6        4         21.250

        1536         0 male       27.0          0.125 no                       3          20            6        5         26.875

        1540         0 male       32.0         10.000 yes                      3          20            6        5         22.000

        1551         0 female     22.0          0.417 no                       5          14            4        5         21.583

        1555         0 female     47.0         15.000 yes                      5          14            1        4         32.000

        1557         0 female     32.0         10.000 yes                      3          14            1        5         22.000

        1566         0 male       57.0         15.000 yes                      4          17            5        5         42.000

        1567         0 male       27.0          4.000 yes                      3          20            6        5         23.000

        1576         0 female     32.0          7.000 yes                      4          17            1        5         25.000

        1584         0 female     37.0         10.000 yes                      4          16            1        5         27.000

        1585         0 female     32.0         10.000 yes                      1          18            1        4         22.000

        1590         0 female     22.0          4.000 no                       3          14            1        4         18.000

        1594         0 female     27.0          7.000 yes                      4          14            3        2         20.000

        1595         0 male       57.0         15.000 yes                      5          18            5        2         42.000

        1603         0 male       32.0          7.000 yes                      2          18            5        5         25.000

        1608         0 female     27.0          1.500 no                       4          17            1        3         25.500

        1609         0 male       22.0          1.500 no                       4          14            5        5         20.500

        1615         0 female     22.0          1.500 yes                      4          14            5        4         20.500

        1616         0 female     32.0          7.000 yes                      3          16            1        5         25.000

        1617         0 female     47.0         15.000 yes                      3          16            5        4         32.000

        1620         0 female     22.0          0.750 no                       3          16            1        5         21.250

        1621         0 female     22.0          1.500 yes                      2          14            5        5         20.500

        1637         0 female     27.0          4.000 yes                      1          16            5        5         23.000

        1638         0 male       52.0         15.000 yes                      4          16            5        5         37.000

        1650         0 male       32.0         10.000 yes                      4          20            6        5         22.000

        1654         0 male       47.0         15.000 yes                      4          16            6        4         32.000

        1665         0 female     27.0          7.000 yes                      2          14            1        2         20.000

        1670         0 female     22.0          1.500 no                       4          14            4        5         20.500

        1671         0 female     32.0         10.000 yes                      2          16            5        4         22.000

        1675         0 female     22.0          0.750 no                       2          16            5        4         21.250

        1688         0 female     22.0          1.500 no                       2          16            5        5         20.500

        1691         0 female     42.0         15.000 yes                      3          18            6        4         27.000

        1695         0 female     27.0          7.000 yes                      5          14            4        5         20.000

        1698         0 male       42.0         15.000 yes                      4          16            4        4         27.000

        1704         0 female     57.0         15.000 yes                      3          18            5        2         42.000

        1705         0 male       42.0         15.000 yes                      3          18            6        2         27.000

        1711         0 female     32.0          7.000 yes                      2          14            1        2         25.000

        1719         0 male       22.0          4.000 no                       5          12            4        5         18.000

        1723         0 female     22.0          1.500 no                       1          16            6        5         20.500

        1726         0 female     22.0          0.750 no                       1          14            4        5         21.250

        1749         0 female     32.0         15.000 yes                      4          12            1        5         17.000

        1752         0 male       22.0          1.500 no                       2          18            5        3         20.500

        1754         0 male       27.0          4.000 yes                      5          17            2        5         23.000

        1758         0 female     27.0          4.000 yes                      4          12            1        5         23.000

        1761         0 male       42.0         15.000 yes                      5          18            5        4         27.000

        1773         0 male       32.0          1.500 no                       2          20            7        3         30.500

        1775         0 male       57.0         15.000 no                       4           9            3        1         42.000

        1786         0 male       37.0          7.000 no                       4          18            5        5         30.000

        1793         0 male       52.0         15.000 yes                      2          17            5        4         37.000

        1799         0 male       47.0         15.000 yes                      4          17            6        5         32.000

        1803         0 female     27.0          7.000 no                       2          17            5        4         20.000

        1806         0 female     27.0          7.000 yes                      4          14            5        5         20.000

        1807         0 female     22.0          4.000 no                       2          14            3        3         18.000

        1808         0 male       37.0          7.000 yes                      2          20            6        5         30.000

        1814         0 male       27.0          7.000 no                       4          12            4        3         20.000

        1815         0 male       42.0         10.000 yes                      4          18            6        4         32.000

        1818         0 female     22.0          1.500 no                       3          14            1        5         20.500

        1827         0 female     22.0          4.000 yes                      2          14            1        3         18.000

        1834         0 female     57.0         15.000 no                       4          20            6        5         42.000

        1835         0 male       37.0         15.000 yes                      4          14            4        3         22.000

        1843         0 female     27.0          7.000 yes                      3          18            5        5         20.000

        1846         0 female     17.5         10.000 no                       4          14            4        5          7.500

        1850         0 male       22.0          4.000 yes                      4          16            5        5         18.000

        1851         0 female     27.0          4.000 yes                      2          16            1        4         23.000

        1854         0 female     37.0         15.000 yes                      2          14            5        1         22.000

        1859         0 female     22.0          1.500 no                       5          14            1        4         20.500

        1861         0 male       27.0          7.000 yes                      2          20            5        4         20.000

        1866         0 male       27.0          4.000 yes                      4          14            5        5         23.000

        1873         0 male       22.0          0.125 no                       1          16            3        5         21.875

        1875         0 female     27.0          7.000 yes                      4          14            1        4         20.000

        1885         0 female     32.0         15.000 yes                      5          16            5        3         17.000

        1892         0 male       32.0         10.000 yes                      4          18            5        4         22.000

        1895         0 female     32.0         15.000 yes                      2          14            3        4         17.000

        1896         0 female     22.0          1.500 no                       3          17            5        5         20.500

        1897         0 male       27.0          4.000 yes                      4          17            4        4         23.000

        1899         0 female     52.0         15.000 yes                      5          14            1        5         37.000

        1904         0 female     27.0          7.000 yes                      2          12            1        2         20.000

        1905         0 female     27.0          7.000 yes                      3          12            1        4         20.000

        1908         0 female     42.0         15.000 yes                      2          14            1        4         27.000

        1916         0 female     42.0         15.000 yes                      4          14            5        4         27.000

        1918         0 male       27.0          7.000 yes                      4          14            3        3         20.000

        1920         0 male       27.0          7.000 yes                      2          20            6        2         20.000

        1930         0 female     42.0         15.000 yes                      3          12            3        3         27.000

        1940         0 male       27.0          4.000 yes                      3          16            3        5         23.000

        1947         0 female     27.0          7.000 yes                      3          14            1        4         20.000

        1949         0 female     22.0          1.500 no                       2          14            4        5         20.500

        1951         0 female     27.0          4.000 yes                      4          14            1        4         23.000

        1952         0 female     22.0          4.000 no                       4          14            5        5         18.000

        1960         0 female     22.0          1.500 no                       2          16            4        5         20.500

        9001         0 male       47.0         15.000 no                       4          14            5        4         32.000

        9012         0 male       37.0         10.000 yes                      2          18            6        2         27.000

        9023         0 male       37.0         15.000 yes                      3          17            5        4         22.000

        9029         0 female     27.0          4.000 yes                      2          16            1        4         23.000

           6         3 male       27.0          1.500 no                       3          18            4        4         25.500

          12         3 female     27.0          4.000 yes                      3          17            1        5         23.000

          43         7 male       37.0         15.000 yes                      5          18            6        2         22.000

          53        12 female     32.0         10.000 yes                      3          17            5        2         22.000

          67         1 male       22.0          0.125 no                       4          16            5        5         21.875

          79         1 female     22.0          1.500 yes                      2          14            1        5         20.500

         122        12 male       37.0         15.000 yes                      4          14            5        2         22.000

         126         7 female     22.0          1.500 no                       2          14            3        4         20.500

         133         2 male       37.0         15.000 yes                      2          18            6        4         22.000

         138         3 female     32.0         15.000 yes                      4          12            3        2         17.000

         154         1 female     37.0         15.000 yes                      4          14            4        2         22.000

         159         7 female     42.0         15.000 yes                      3          17            1        4         27.000

         174        12 female     42.0         15.000 yes                      5           9            4        1         27.000

         176        12 male       37.0         10.000 yes                      2          20            6        2         27.000

         181        12 female     32.0         15.000 yes                      3          14            1        2         17.000

         182         3 male       27.0          4.000 no                       1          18            6        5         23.000

         186         7 male       37.0         10.000 yes                      2          18            7        3         27.000

         189         7 female     27.0          4.000 no                       3          17            5        5         23.000

         204         1 male       42.0         15.000 yes                      4          16            5        5         27.000

         215         1 female     47.0         15.000 yes                      5          14            4        5         32.000

         232         7 female     27.0          4.000 yes                      3          18            5        4         23.000

         233         1 female     27.0          7.000 yes                      5          14            1        4         20.000

         252        12 male       27.0          1.500 yes                      3          17            5        4         25.500

         253        12 female     27.0          7.000 yes                      4          14            6        2         20.000

         274         3 female     42.0         15.000 yes                      4          16            5        4         27.000

         275         7 female     27.0         10.000 yes                      4          12            7        3         17.000

         287         1 male       27.0          1.500 no                       2          18            5        2         25.500

         288         1 male       32.0          4.000 no                       4          20            6        4         28.000

         325         1 female     27.0          7.000 yes                      3          14            1        3         20.000

         328         3 female     32.0         10.000 yes                      4          14            1        4         22.000

         344         3 male       27.0          4.000 yes                      2          18            7        2         23.000

         353         1 female     17.5          0.750 no                       5          14            4        5         16.750

         354         1 female     32.0         10.000 yes                      4          18            1        5         22.000

         367         7 female     32.0          7.000 yes                      2          17            6        4         25.000

         369         7 male       37.0         15.000 yes                      2          20            6        4         22.000

         390         7 female     37.0         10.000 no                       1          20            5        3         27.000

         392        12 female     32.0         10.000 yes                      2          16            5        5         22.000

         423         7 male       52.0         15.000 yes                      2          20            6        4         37.000

         432         7 female     42.0         15.000 yes                      1          12            1        3         27.000

         436         1 male       52.0         15.000 yes                      2          20            6        3         37.000

         483         2 male       37.0         15.000 yes                      3          18            6        5         22.000

         513        12 female     22.0          4.000 no                       3          12            3        4         18.000

         516        12 male       27.0          7.000 yes                      1          18            6        2         20.000

         518         1 male       27.0          4.000 yes                      3          18            5        5         23.000

         520        12 male       47.0         15.000 yes                      4          17            6        5         32.000

         526        12 female     42.0         15.000 yes                      4          12            1        1         27.000

         528         7 male       27.0          4.000 no                       3          14            3        4         23.000

         553         7 female     32.0          7.000 yes                      4          18            4        5         25.000

         576         1 male       32.0          0.417 yes                      3          12            3        4         31.583

         611         3 male       47.0         15.000 yes                      5          16            5        4         32.000

         625        12 male       37.0         15.000 yes                      2          20            5        4         22.000

         635         7 male       22.0          4.000 yes                      2          17            6        4         18.000

         646         1 male       27.0          4.000 no                       2          14            4        5         23.000

         657         7 female     52.0         15.000 yes                      5          16            1        3         37.000

         659         1 male       27.0          4.000 no                       3          14            3        3         23.000

         666         1 female     27.0         10.000 yes                      4          16            1        4         17.000

         679         1 male       32.0          7.000 yes                      3          14            7        4         25.000

         729         7 male       32.0          7.000 yes                      2          18            4        1         25.000

         755         3 male       22.0          1.500 no                       1          14            3        2         20.500

         758         7 male       22.0          4.000 yes                      3          18            6        4         18.000

         770         7 male       42.0         15.000 yes                      4          20            6        4         27.000

         786         2 female     57.0         15.000 yes                      1          18            5        4         42.000

         797         7 female     32.0          4.000 yes                      3          18            5        2         28.000

         811         1 male       27.0          4.000 yes                      1          16            4        4         23.000

         834         7 male       32.0          7.000 yes                      4          16            1        4         25.000

         858         2 male       57.0         15.000 yes                      1          17            4        4         42.000

         885         7 female     42.0         15.000 yes                      4          14            5        2         27.000

         893         7 male       37.0         10.000 yes                      1          18            5        3         27.000

         927         3 male       42.0         15.000 yes                      3          17            6        1         27.000

         928         1 female     52.0         15.000 yes                      3          14            4        4         37.000

         933         2 female     27.0          7.000 yes                      3          17            5        3         20.000

         951        12 male       32.0          7.000 yes                      2          12            4        2         25.000

         968         1 male       22.0          4.000 no                       4          14            2        5         18.000

         972         3 male       27.0          7.000 yes                      3          18            6        4         20.000

         975        12 female     37.0         15.000 yes                      1          18            5        5         22.000

         977         7 female     32.0         15.000 yes                      3          17            1        3         17.000

         981         7 female     27.0          7.000 no                       2          17            5        5         20.000

         986         1 female     32.0          7.000 yes                      3          17            5        3         25.000

        1002         1 male       32.0          1.500 yes                      2          14            2        4         30.500

        1007        12 female     42.0         15.000 yes                      4          14            1        2         27.000

        1011         7 male       32.0         10.000 yes                      3          14            5        4         22.000

        1035         7 male       37.0          4.000 yes                      1          20            6        3         33.000

        1050         1 female     27.0          4.000 yes                      2          16            5        3         23.000

        1056        12 female     42.0         15.000 yes                      3          14            4        3         27.000

        1057         1 male       27.0         10.000 yes                      5          20            6        5         17.000

        1075        12 male       37.0         10.000 yes                      2          20            6        2         27.000

        1080        12 female     27.0          7.000 yes                      1          14            3        3         20.000

        1125         3 female     27.0          7.000 yes                      4          12            1        2         20.000

        1131         3 male       32.0         10.000 yes                      2          14            4        4         22.000

        1138        12 female     17.5          0.750 yes                      2          12            1        3         16.750

        1150        12 female     32.0         15.000 yes                      3          18            5        4         17.000

        1163         2 female     22.0          7.000 no                       4          14            4        3         15.000

        1169         1 male       32.0          7.000 yes                      4          20            6        5         25.000

        1198         7 male       27.0          4.000 yes                      2          18            6        2         23.000

        1204         1 female     22.0          1.500 yes                      5          14            5        3         20.500

        1218        12 female     32.0         15.000 no                       3          17            5        1         17.000

        1230        12 female     42.0         15.000 yes                      2          12            1        2         27.000

        1236         7 male       42.0         15.000 yes                      3          20            5        4         27.000

        1247        12 male       32.0         10.000 no                       2          18            4        2         22.000

        1259        12 female     32.0         15.000 yes                      3           9            1        1         17.000

        1294         7 male       57.0         15.000 yes                      5          20            4        5         42.000

        1353        12 male       47.0         15.000 yes                      4          20            6        4         32.000

        1370         2 female     42.0         15.000 yes                      2          17            6        3         27.000

        1427        12 male       37.0         15.000 yes                      3          17            6        3         22.000

        1445        12 male       37.0         15.000 yes                      5          17            5        2         22.000

        1460         7 male       27.0         10.000 yes                      2          20            6        4         17.000

        1480         2 male       37.0         15.000 yes                      2          16            5        4         22.000

        1505        12 female     32.0         15.000 yes                      1          14            5        2         17.000

        1543         7 male       32.0         10.000 yes                      3          17            6        3         22.000

        1548         2 male       37.0         15.000 yes                      4          18            5        1         22.000

        1550         7 female     27.0          1.500 no                       2          17            5        5         25.500

        1561         3 female     47.0         15.000 yes                      2          17            5        2         32.000

        1564        12 male       37.0         15.000 yes                      2          17            5        4         22.000

        1573        12 female     27.0          4.000 no                       2          14            5        5         23.000

        1575         2 female     27.0         10.000 yes                      4          14            1        5         17.000

        1599         1 female     22.0          4.000 yes                      3          16            1        3         18.000

        1622        12 male       52.0          7.000 no                       4          16            5        5         45.000

        1629         2 female     27.0          4.000 yes                      1          16            3        5         23.000

        1664         7 female     37.0         15.000 yes                      2          17            6        4         22.000

        1669         2 female     27.0          4.000 no                       1          17            3        1         23.000

        1674        12 female     17.5          0.750 yes                      2          12            3        5         16.750

        1682         7 female     32.0         15.000 yes                      5          18            5        4         17.000

        1685         7 female     22.0          4.000 no                       1          16            3        5         18.000

        1697         2 male       32.0          4.000 yes                      4          18            6        4         28.000

        1716         1 female     22.0          1.500 yes                      3          18            5        2         20.500

        1730         3 female     42.0         15.000 yes                      2          17            5        4         27.000

        1731         1 male       32.0          7.000 yes                      4          16            4        4         25.000

        1732        12 male       37.0         15.000 no                       3          14            6        2         22.000

        1743         1 male       42.0         15.000 yes                      3          16            6        3         27.000

        1751         1 male       27.0          4.000 yes                      1          18            5        4         23.000

        1757         2 male       37.0         15.000 yes                      4          20            7        3         22.000

        1763         7 male       37.0         15.000 yes                      3          20            6        4         22.000

        1766         3 male       22.0          1.500 no                       2          12            3        3         20.500

        1772         3 male       32.0          4.000 yes                      3          20            6        2         28.000

        1776         2 male       32.0         15.000 yes                      5          20            6        5         17.000

        1782        12 female     52.0         15.000 yes                      1          18            5        5         37.000

        1784        12 male       47.0         15.000 no                       1          18            6        5         32.000

        1791         3 female     32.0         15.000 yes                      4          16            4        4         17.000

        1831         7 female     32.0         15.000 yes                      3          14            3        2         17.000

        1840         7 female     27.0          7.000 yes                      4          16            1        2         20.000

        1844        12 male       42.0         15.000 yes                      3          18            6        2         27.000

        1856         7 female     42.0         15.000 yes                      2          14            3        2         27.000

        1876        12 male       27.0          7.000 yes                      2          17            5        4         20.000

        1929         3 male       32.0         10.000 yes                      4          14            4        3         22.000

        1935         7 male       47.0         15.000 yes                      3          16            4        2         32.000

        1938         1 male       22.0          1.500 yes                      1          12            2        5         20.500

        1941         7 female     32.0         10.000 yes                      2          18            5        4         22.000

        1954         2 male       32.0         10.000 yes                      2          17            6        5         22.000

        1959         2 male       22.0          7.000 yes                      3          18            6        2         15.000

        9010         1 female     32.0         15.000 yes                      3          14            1        5         17.000
      ---------------------------------------------------------------------------------------------------------------------------

2.  **Aufgabe**\

    In dieser Aufgabe geht es um folgenden Originalartikel:

    Erlandsson, A., Nilsson, A., Tinghög, G., & Västfjäll, D. (2018).
    Bullshit-sensitivity predicts prosocial behavior. *PLOS ONE, 13*(7),
    e0201474. https://doi.org/10.1371/journal.pone.0201474

    Den Volltext können Sie über diese URL ansteuern:

    <https://doi.org/10.1371/journal.pone.0201474>

    Welchen Schätzwert für die Korrelation von
    `Ehrenamt (volunteering exeprience)` mit `Profoundness-receptivity`
    finden die Autoren? Geben Sie diesen Wert an!

    *Hinweise*:

    -   Geben Sie Zahlen bitte stets wie folgt ein: `-0,12` bzw.
        `-0.12`, also (ggf.) mit Vorzeichen, ggf. mit führender Null,
        gefolgt ggf. vom korrekten Dezimaltrennzeichen Ihres Systems und
        dann den Wert des Koeffizienten mit zwei Stellen. Andernfalls
        kann die Antwort u.U. nicht als korrekt erkannt werden.

    -   *Tiefen-Empfänglichkeit* ist die Übersetzung für
        *profoundness-receptivity*

    -   *Bullshit-Empfänglichkeit* ist die Übersetzung für
        *bullshit-receptivity*

    \
    **Lösung**

    Für die Korrelation `Ehrenamt (volunteering exeprience)` mit
    `Profoundness-receptivity` finden die Autoren einen Wert von `0.23`.

3.  **Aufgabe**\

    Recherchieren Sie Daten zu der Anzahl von Todesfällen in
    Zusammenhang mit Corona.

    Sie können sich auf diese Daten stützen (sofern noch vorhanden):

    ``` text
    mort_path <- "https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Daten/Fallzahlen_Gesamtuebersicht.xlsx?__blob=publicationFile"
    ```

    Wählen Sie Antwort, die am besten passt.

    a.  Der Verlauf der kummlierten Todesfälle über die Zeit ist
        (zumeist) monoton steigend.
    b.  Der Verlauf der kummlierten Todesfälle über die Zeit ist
        (zumeist) monoton fallend
    c.  Der Verlauf der kummlierten Todesfälle über die Zeit ist
        teilweise steigend, teilweise fallend.
    d.  Der Verlauf der kummlierten Todesfälle über die Zeit ist
        konstant, d.h. weder steigend noch fallend (von minimalen
        Abweichungen abgesehen).
    e.  Der Verlauf der kummlierten Todesfälle über die Zeit ist zuerst
        steigend, danach konstant.

    \
    **Lösung**

    Der oben angegebene Pfad erlaubt leider keine direkten Downloads
    über die ULR. Man kann die Datei zwar herunterladen, aber nicht
    online die Datei per URL auslesen.

    ``` text
    mort_path <- "https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Daten/Fallzahlen_Gesamtuebersicht.xlsx?__blob=publicationFile"

    mort_df <- read_xlsx(mort_path)  # Import eine XLSX-Datei
    ```

    Also gut: Laden wir von Hand herunter und greifen dann auf die Daten
    lokal zu.

    Speichern Sie also die Daten auf Ihrem Computer. Danach importieren
    Sie die Datei in R, z.B. so:

    ``` text
    mort_path <- "/Users/sebastiansaueruser/github-repos/2021-wise/Data/Fallzahlen_Gesamtuebersicht.xlsx"
    mort_path <- "../Data/Fallzahlen_Gesamtuebersicht.xlsx"

    mort_df <- read_xlsx(path = mort_path,
                         skip = 2)  
    ```

        ## Error in read_xlsx(path = mort_path, skip = 2): could not find function "read_xlsx"

    Tipp: Legen Sie die Datendatei immer in den (aktuellen)
    *RStudio-Projektordner*. Und die Rmd-Datei (oder R-Datei) auch! Dann
    brauchen Sie keinen Pfad angeben.

    `skip = 2` heißt: "überspringe die ersten zwei Zeilen, die Tab.
    beginnt erst in Zeile 3".

    Schauen wir mal rein:

    ``` text
    head(mort_df)
    ```

        ## Error in head(mort_df): object 'mort_df' not found

    Scheint geklappt zu haben.

    Alternativ können Sie die Daten jetzt auch vom Server herunterladen,
    den wir für den Unterricht nutzen, dort habe ich die Daten gerade
    gespeichert:

    ``` text
    mort_path <- "https://raw.githubusercontent.com/sebastiansauer/2021-wise/main/Data/mort_df.csv"

    mort_df <- read_csv(mort_path)
    ```

    ``` text
    mort_df %>% 
      ggplot() +
      aes(x = Berichtsdatum, y = Todesfälle) +
      geom_line()
    ```

        ## Warning: Removed 13 row(s) containing missing values (geom_path).

    ![](data:image/png;base64,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JPFH8xLjMkNqbNnFcz/nnBG9efPmZs6cORJudf369RJgidgYKkpACSgBJRAfgZxqgYCmb9++BvcfDI3lrWDw4MEmnj6/+PDq3kpACSiB7CWQcwqEPr2nAzO69+/fL4rD2hyy9xRrzZSAElACySGQcwrEYixatKhd1F8loASUgBLIB4Gcs4Hkg5EeogSUgBJQAmEI5GwLJAyLiKuYO5JqYRgvH0aNuSqUD3G5jAyfpJvS5TJSPpfLCEOXr0XKZ69DO5JIVjj0la33c07NA3HoesqKomBLWrNmjcRhz4oKpakSBAZjour111+fphJkdrbM6+JanDJlisydyuzapK/0jz76qPnmm29kblyspUj9q3WsJdP9nCfw1VdfidsV5wvqeAE/+eQT88svvzheSneLt3PnTvP++++bX3/91d1CZkDJNm3aZNauXRtXSdUGEhcu3VkJKAEloAQsAVUgloT+KgEloASUQFwE1AYSFy7d2Uvgp59+Mng49rp98W7X5dgI4BsNI2s49zaxpZDbe9F1xbWILyed15X/awGGv/32W1x2JFUg+eetRyoBJaAEcpqAdmHl9OnXyisBJaAE8k9AR2Hln13GHUnkxcWLF8uIn1atWkkQLTuXI1Kc+O3bt5s333zTEFq3UaNGpkWLFsEuq3379pn58+cbnFKed955plu3btIVEw4MozvIA5fgHTt2DAbwmj59ugTR8h5TqFAhc/PNN3tXObNMMx+G7777rqlYsaK56KKL5JcC+vHw48ixzF+46667JNRypUqVWBVWInG0OzMiieGs48aNs6uc+/W7DiPVz4+7reCiRYsk/MEVV1xhVx31G+kcZdp1SMX8OObnfo52jXph2vOkLRAvlSxe3rBhg4zvrl+/vmnTpo156KGHzPLly6XGXGx8QuPE49b5z3/+swTh6t27twzxmzRpUpASDylirHTv3t0sW7bMPPHEE8Ft3gWiQI4aNUoCZTVs2NDceeedhvIgRITEG7L9EAkSF/uuyrRp06SuPXr0MKVKlZKww4cPH5biRuIRjSMPx4kTJ5pXX31V+vIj1d2PI8cwhn/o0KGi7COlke71ftehX/38uFMnXnJgSBp+EukcZdp16McxP/dztGvUy9R7nnjzUckBAoFY8HnPP/98sKYvvvhiXuBhI/8Db2x5gTeK4LaePXvmffDBB3mff/55XsBzcXB9IORuXrNmzfICQXHyAq2OvM6dO+cFLjzZHggLnHfJJZfkBYzqwf3twsMPP5w3efJk+zfvqaeeygsE8gr+twuBML95l156aV7gLdGucuo3YGDMGzBgQF4gXn2wXPwPPPh9efhxJCH4B5Sq8PSeh2Am/1nw4xgIk5zXtm1b4dypU6fQQ53573cdRqqfH3cqFngZyvu///u/vMCEzCOus9BKx3rNun4dUi8/jvm5n6Ndo16W3vOkLRCvas3i5auuusoQItcKM8hLlCgho6h4owgXJ/6ss86SbhV7DHHcif7GaKFt27bJMXbUS/ny5eXtGS/HoWL3tevJi9jvXiFg1/jx46XrylVHl3T3PfDAA6ZcuXJSdCb/bdy4UTjaOobj4ceRhMaOHWuYjU7UPz+xedh9vBwJkDZz5kxpXdoy2P1c+o10HVLGSPXz485xrVu3NoGXkqhhp236lk+4azYTrkPqHIkjoyLzcz9Hu0bJ04rlyH9VIJZKDv3S3F+5cqXp1auXRGeMJU48fev33XefCbxxi52DizR0+G64+PJgDd033H7YFAJvOeaCCy7IiDPBcEcUHvHr69ate1QdqUS4eoZyZL+qVavyE1X8ONKd5qrijVQx73XIPn71s2mEcmf9GWecYaw/LLtfuN/Q9Nkn9Bxl2nVIHbwciZ6an/uZdKyEu0btNn69HNWI7iWTA8tz5841zz77rHnwwQdNyZIlxYbBWxd9oNagzpt12bJlgzS++OILCcIV6NqSN1w20AoJdb/Bf8IGjxw5MhiDHMM6rRavmwnikzNm3ysvv/yyueyyyzJiHD82C+oIL1oPiB8PW89wHO22cL/54RguHRfXhV6HlDHadRKOu1/dyOPDDz+UXapXry7XZqRr1qaTSdchZQ7liE0yP/ezrX+4a9TvOlQFYsnlwC9G7rfffltG6ZQpU0ZqHC1OPF1dt912m3QtMQLLCsrHa+xmMhzN5+LFi5umTZvKMvsSwIvuld27d9tD5bjSpUsH//PWFOjDDz6MgxscXAjYf8RQfdppp4lStZ6a/XhQjUgc/aoYL0e/tFzaFu46pHx+10kk7n71omVHCwPhOkQBRbpm2SeTrkPKG45jfu9n0ot0jfpeh17jiC5nL4GFCxfmBUZZ5QWan3mBFoB8Aq0CqfAdd9whxkcM4IHhunmBYbZ5AVtGXuBmE8N4oFkfPIZjMZwHbsa89u3b561evToPI+djjz2WF1A0YQG+9957eddcc03e3r178zDEB7zO5r311lvBfQOO8PICfbrB/y4vBEal5QWG2x7BI/DG58vDj6O3rldeeeURgxm821iOxpF9Am+QYoxn2UXxuw796heJu7eOAW+yvkb0aNdsJl2Hfhzzcz/Heo3C23uetAWC6s0BYRgk47y9hnSGLuIGO1Kc+KlTpxre/IYPH34EoVmzZhkMkEOGDJG3cLqjihUrJsNzj9jxP38YukvfMkNf6aZo0qSJadmyZXBXhp/6zX0I7pjmBYZOBkanSSleeeWVYGn69Oljrr766og8AqPffDkGE4qyEI1jlMOd2Ox3HUaqXzTusVbs+OOPj3iOSCNTrkPK6scxP/czQ8j97nXytOI9T+rKxFLR33zFiceoSfcVTedownwJjJ3HHXdctF0zdns8PPJbyWznmOz6peIc5ffcJvI4RkQWKVIkaXZFzpMqkESeMU1LCSgBJZBDBHQYbw6dbK2qElACSiCRBFSBJJKmpqUElIASyCECqkBy6GRrVZWAElACiSSgCiSRNDUtJaAElEAOEVAFkkMnW6uqBJSAEkgkAVUgiaSpaTlH4KOPPhIfUfiJsh/cWnTp0iXoUr4ghWY+COniPiKa4CaDfRlGGknwM4Q77oJIhQoVDPEtYpVE5BlrXrpfdhHQiYTZdT61NiEEeFgHZr+L7yo8juJuBbcqzz33nGFCFIFxrFuXkENj+ovPsD/+8Y9BP2J+B6FkKEtgMm/E3ZhseeaZZ5oOHTpE3CfaBvLw+h6Ltn8i8oyWh27PTgKqQLLzvGqtQggQObBx48bBtQTIwn8VLYjrrrsuuJ4FHvBETrR+lI7Y+J8/OIRkZjORGANuXI7ahTRw3Mc+kYQ8iL7olUitEyZt4Xcrkst38vr973/vq8gOHDggdbJOM22+kfK026P94mMKDwNWUF6UNTQfu11/s4eAdmFlz7nUmsRBgIcbH1ywWOEBi4t7XLPgqh5nfG+88YbdLNtw61KvXj2Z4fu3v/3NBHwSSTwQ24WFYiENnPfRXUVLwro/sQk9+eSTsh0FRR52Oy2ZgJ8hiW2BmxmEFlKdOnVE0aBszj//fEO3nBWcAxIimHqQX2goWx7ugwcPFkeFeAvgQY8y3bp1qyQRLk+8LocqVUIMWzc4dLHVrl1bFCdOMWHVrFkzCenLcZQDZ5OhZbFl1t/sIaAKJHvOpdbEhwBeiGfPni2u7IkZThAi4sK3a9cueBRdOX//+98lMBNurdkeiPInD3F2wlfQ/fffLw9PQgJfeOGF0lUUcBIZ7JYijRUrVojHY4JN8TBFodB1ZiUQ0c0EIkJKTGu8FxNKGGE9yoKH+pIlS2QdLSWUCaF+SQ/FRAhhhJYDtpwdO3ZIS4o0sbOgCK3wEMff2Zw5c8TbLL/EgrEP93B5cjx19Qruamy6tDAILvb444+LAkWJBpxqStcbShkX6rfeequEMUbBqWQxgUBTW0UJZC0BQvMGbt+8wJt3XuCNXz785zN69Og8POkin3zyiax75plnjmARiNUunoRZGXgDzwsYqINhfFk3b948OS7QhZQXeKuX5aVLl7JJBK/Gt9xyS14gAqOEFCbfwAPcbs4LRBGUYwIPZ1kXeJPP69evX3A7+QWUSF6gC0vW4U151apV4gH5448/lmMJ1WoloGjyAhH3xDsy6whjTMhdrwSUTl5AOQZXheZJWGE8A3sl4DAyeAxpUo+AogzuQjhdGAe65WQdHpsDXWpSv+BOupB1BLQFErgTVLKfAFHbeKvmgz1h0aJF0kro37+/VH7dunXyiz2jTZs2wU8gPrsJuLgPAqLLyYZEDa78z0JACckS3UxWcGY3ceJE6dKx684++2y7GAwlTCsmnIwZM0Y8r9JFFYg5b/DsSyhb3vSJoUIgK8pkpWLFitJKsf/pduJYoicG4oZL64k04jGy27RCfzH2W6FlVL9+fSkP62BE11ZoS8bur7/ZQUCN6NlxHrUWcRCwdgDiSs+YMcM88sgjweiKnTt3Psqw7Q3d610OzZJuHoSHu5/4GdZDj8NNfKCFYObPny9KD3sGoYXpJiKKJLYXHtK2XHadTYdY6/fcc490xTGI4IYbbjB0vxHX2k9IxyvYUkLF5mnXRzLw2+36m30E/K/07Kuv1kgJBAnw1s/DnLdlhvgitBiwWdgPtotYH4z2jRzDtxXsBoFuMLN8+XK7yveXsgT6OWQfHtoTJkyQSHqDBg0yr732mthoNm3aJOnR0kGBvPPOO8E0A91axrZmMOhPmjRJWh8vvfSSCXSlyUi0QHfaEXNRvHmSEArW2jtswuSpogRCCagCCSWi/7OSQCDanCFoDh/e5hlVFLA/GIzUCHNCGjRoIA9surd4+GJ8DkRPDL7dRwPDkF7e8m+66SYJoEU8BsIB013UqFGjaIfLdrqk6E7jw4N88eLFZuDAgWJEp+vNGtfPPfdcw4RIwo3SPRWwi4iRnfjVVoi7wqRCurpQRhx/9913y0gvb4vCmyfHVqtWTfJFMRFjGyXkHfll09dfJaAKRK+BnCAwdOhQGXHFqKtAeF0TCKlrAqFpTcCQLvXnLRzbAA9cbA10z9D1w8OzefPmMTNigiLDgHmwM8SV0VwM2yWQViyCnQJlcM4550grgO4qusT4zzBcysxosooBWwdpBoz4kh8KEIXC8Fkb3ZE6oTCwzTDaq0SJErJ87733yix85qEgoXmiACk/USOxn2A/gp+KEggloAGlQono/5wnwJs6s7kLMkOdLiC6l3hwxyt0m1EGFJEVJgoyJLZcuXJ21RG/lBdF4z3GuwM2D8oSyf4SLk+6wlBCKBEVJRCOgCqQcFR0nRJQAkpACUQloF1YURHpDkpACSgBJRCOgCqQcFR0nRJQAkpACUQloAokKiLdQQkoASWgBMIRUAUSjoquUwJKQAkogagEVIFERaQ7KAEloASUQDgCqkDCUdHTWMM3AAAALUlEQVR1SkAJKAElEJWAKpCoiHQHJaAElIASCEdAFUg4KrpOCSgBJaAEohL4f/Ar2iBHr6E2AAAAAElFTkSuQmCC)

    a.  Wahr
    b.  Falsch
    c.  Falsch
    d.  Falsch
    e.  Falsch

4.  **Aufgabe**\

    Importieren Sie den folgenden Datensatz in R:

    ``` text
    mtcars <- read_csv("https://vincentarelbundock.github.io/Rdatasets/csv/datasets/mtcars.csv")
    ```

    Übersetzen Sie dann die folgende R-Sequenz ins Deutsche:

    ``` text
    mtcars %>% 
      drop_na() %>% 
      select(mpg, hp, cyl) %>% 
      filter(hp > 100, cyl >= 6) %>% 
      group_by(cyl) %>% 
      summarise(mpg_mean = mean(mpg))
    ```

        cyl   mpg_mean
      ----- ----------
          6   19.74286
          8   15.10000

    \
    **Lösung**

    Hey R:

    1.  Nimm den Datensatz `mtcars` UND DANN
    2.  hau alle Zeilen raus, in denen es fehlende Werte gibt UND DANN
    3.  wähle (selektiere) die folgenden Spalten: Spritverbrauch, PS,
        Zylinder UND DANN
    4.  filter Autos mit mehr als 100 PS und mit mindestens 6 Zylindern
        UND DANN
    5.  gruppiere nach der Zahl der Zylinder UND DANN
    6.  fasse den Verbrauch zum Mittelwert zusammen.

5.  **Aufgabe**\

    Identifizieren Sie die Kernaussagen dieses Fachartikels: Schwennen,
    C., & Bierhoff, H.-W. (2006). Die Erfassung exzessiver
    Bestätigungssuche in sexuellen Abenteuern. Diagnostica, 52(2),
    88--94. https://doi.org/10.1026/0012-1924.52.2.88.

    Den Volltext können Sie über diese URL ansteuern:
    https://www.ruhr-uni-bochum.de/soc-psy/scholar/2006_Die_Erfassung_exzessiver_Best%e4tigungssuche_in_sexuellen_Abenteuern.pdf.

    *Hinweis*: "Skala zur Erfassung exzessiver Bestätigungssuche in
    sexuellen Abenteuern" wird im Folgenden abgekürzt mit *BSS-SA*.

    Wie viele Personen umfasst die Gesamtstichprobe?

    \
    **Lösung**

    Insgesamt liegen den Auswertungen die Daten von 273 Personen zu
    Grunde.

6.  **Aufgabe**\

    Welcher Kennwert ist robust (gegenüber Extremwerten)?

    a.  Maximalwert
    b.  Korrelation
    c.  Minimalwert
    d.  Varianz
    e.  Median

    \
    **Lösung**

    Der Median ist robust. Mittelwertsbasierte Kennzahlen hingegen
    nicht.

    a.  Falsch
    b.  Falsch
    c.  Falsch
    d.  Falsch
    e.  Wahr

7.  **Aufgabe**\

    Welcher Kennwert ist robust (gegenüber Extremwerten)?

    a.  Regressionsgewicht
    b.  Interquartilsabstand
    c.  Schiefe
    d.  Varianz
    e.  Korrelation

    \
    **Lösung**

    Der Interquartilsabstand ist robust. Mittelwertsbasierte Kennzahlen
    hingegen nicht.

    a.  Falsch
    b.  Wahr
    c.  Falsch
    d.  Falsch
    e.  Falsch

8.  **Aufgabe**\

    Berechnen Sie den *Median* der folgenden Datenreihe!

    *Hinweis*: Runden Sie auf zwei Dezimalstellen. Beachten Sie, dass
    das Dezimalzeichen (Punkt oder Komma) je nach Ihrem System
    unterschiedlich sein kann.

        ## [1] 6.28 6.51 3.80 4.04 0.27

    \
    **Lösung**

    Die Antwort lautet 4.04.

9.  **Aufgabe**\

    Berechnen Sie den *Mittelwert* der folgenden Datenreihe!

    *Hinweis*: Runden Sie auf zwei Dezimalstellen. Beachten Sie, dass
    das Dezimalzeichen (Punkt oder Komma) je nach Ihrem System
    unterschiedlich sein kann.

        ## [1] 3.09 0.93 5.14 1.56 6.16

    \
    **Lösung**

    Die Antwort lautet 3.38.

10. **Aufgabe**\

    Berechnen Sie den Mittelwert folgender Zahlenreihe; ignorieren sie
    etwaige fehlende Werte. Runden Sie auf zwei Dezimalstellen.

        ## [1]  0.29  0.09 -1.05  1.26 -0.06

    \
    **Lösung**

    Der Mittelwert liegt bei 0.11.

11. **Aufgabe**\

    Betrachten Sie die Histogramme.

    Wählen Sie das Histogramm, welches am deutlichsten die Eigenschaft
    "symmetrisch" aufweist!

    ![](data:image/png;base64,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)![](data:image/png;base64,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)![](data:image/png;base64,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)![](data:image/png;base64,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GzYsJiAQlLS0NB2MWxKIOQEKSMyrgBkwgQAGviEU6FbKy8uTgQMHqmxjltSkSZNU6+PJJ5+0igKzwSU5DLJjWm+w++abbyw76S1btpQVK1bI7bffbnVhYXwEXWYQKDoS8AoBDqJ7pSaYD08TgFngXr16yVNPPaW22kwwupqaNm2quqzQijh16pT84Q9/kDVr1khwqyK4cJdffrkSiI8//liOHTumBGjDhg1WkOHDh6vB8ocfflggLD/88IOgxYOB/OTkZCscd0gg1gQoILGuAaZvDAEMpqMlgO4s7WAOGILx+eefC2yaw6og9idOnCg7d+6UkydP6qDWFgLRuXNnufnmm5U1wuXLl0tw6yU1NVWys7MlJydHLrvsMiVQmJkF65HVq1e34uEOCcSaAA1KxboGmL5vCOA7DYhI1apVbZXp0KFDyh49TNqW5CAc1apVs7q3SgpHfxKIBQEKSCyoM00SIAES8AEBdmH5oBJZBBIgARKIBQEKSCyoM00SIAES8AEBCogPKpFFIAESIIFYEKCAxII60yQBEiABHxCggPigElkEEiABEogFAQpILKgzTRIgARLwAQEKiA8qkUUgARIggVgQoIDEgjrTJAESIAEfEPg/wrUl+eN9ytcAAAAASUVORK5CYII=)![](data:image/png;base64,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)

    a.  A
    b.  B
    c.  C
    d.  D
    e.  E

    \
    **Lösung**

    Das Histogramm `D` zeigt die Eigenschaft `symmetrisch` am
    deutlichsten.

    a.  Falsch
    b.  Falsch
    c.  Falsch
    d.  Wahr
    e.  Falsch

12. **Aufgabe**\

    Betrachten Sie die Histogramme.

    Wählen Sie das Histogramm, welches am deutlichsten folgende
    Eigenschaft aufweist:

    $MW < Md$

    *Hinweis*: $MW$ steht für *Mittelwert* und $Md$ steht für *Median*.

    ![](data:image/png;base64,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BEwPYb3xxhty/fXXy3HHHWfUBsYUL7nkEjnrrLOUYiktLTWuBR7sv//+QXa0du3aJatWrZJhw4bJ3r17pb6+XvLy8oxbcnNzpba2VgoLC40wKJm6ujrjfMyYMYL8KSRAAoklsH79+sQmyNQSTiAzMzPuNPX788ADD1QjP1YSNK1AMCexYMGCZnlAAcBXOoa3zAh2s2MyHooINrVgDqVVq1bSpk0b43bsKdE29XXge++9J0uXLtWnAlPKGoARyAMSIIG4CVRUVMSdBhNILgGr/jvClap169aCPytiWoEMHjxYDT0999xzyogivBFiJRZMnMBO1nnnnddi/phI/5//+R9Bj+S+++5T8aH9sBkRw1wIh6CHkpOTo471P/RAAiWwNxIYzmMSIAES8DoBjNrEK9ofyNatWy37AzE9BzJo0CCZOnWqYOgIvRGsxsLej5dffllefPFF6dmzZ9T6NDU1Kfe3UDwPPPCA0ePAPhKktWHDBuP+hoYG6dGjh3HOAxIgARIgAecRMK1AUPTrrrtO9Tbmz58vM2fOlI8++kjtSr/oootarBmcxR922GFqIyKGsdDLwPAXpH///lJVVaWMNWKyvaamRvLz81tMkxFIgARIgATsI2B6CEsXEfMTRUVFMXkgXLlypcDsCQST8VqgkEaMGCGYfMe4K+ZRMK+Bne7oqVBIgARIgAScSyBmBWKlKn379pVPP/004q3dunWTyspK1buB4uDkeERUvEACJEACjiGQEgVitrZZWVlmozIeCZAACZCAzQRimgOxuazMngRIgARIwEEEqEAc1BgsCgmQAAm4iQAViJtai2UlARIgAQcRoAJxUGOwKCRAAiTgJgJUIG5qLZaVBEiABBxEgArEQY3BopAACZCAmwhQgbiptVhWEiABEnAQASoQBzUGi0ICJEACbiLgqI2EsYDr0KEDd6zHAoxxSYAEPEMARmjjFW3xA6bhA91pxJKuaxXI9u3bY6kn45IACZCAZwhs27Yt7rrAfQbcaezcuVMZtw2XYEt+R1yrQGDRl0ICJEAC6Uggke8/+GKymh7nQNLx6WOdSYAESCABBKhAEgCRSZAACZBAOhKgAknHVmedSYAESCABBKhAEgCRSZAACZBAOhKgAknHVmedSYAESCABBKhAEgCRSZAACZBAOhKgAknHVmedSYAESCABBKhAEgCRSZAACZBA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)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAD3CAYAAAAzOQKaAAAEDmlDQ1BrQ0dDb2xvclNwYWNlR2VuZXJpY1JHQgAAOI2NVV1oHFUUPpu5syskzoPUpqaSDv41lLRsUtGE2uj+ZbNt3CyTbLRBkMns3Z1pJjPj/KRpKT4UQRDBqOCT4P9bwSchaqvtiy2itFCiBIMo+ND6R6HSFwnruTOzu5O4a73L3PnmnO9+595z7t4LkLgsW5beJQIsGq4t5dPis8fmxMQ6dMF90A190C0rjpUqlSYBG+PCv9rt7yDG3tf2t/f/Z+uuUEcBiN2F2Kw4yiLiZQD+FcWyXYAEQfvICddi+AnEO2ycIOISw7UAVxieD/Cyz5mRMohfRSwoqoz+xNuIB+cj9loEB3Pw2448NaitKSLLRck2q5pOI9O9g/t/tkXda8Tbg0+PszB9FN8DuPaXKnKW4YcQn1Xk3HSIry5ps8UQ/2W5aQnxIwBdu7yFcgrxPsRjVXu8HOh0qao30cArp9SZZxDfg3h1wTzKxu5E/LUxX5wKdX5SnAzmDx4A4OIqLbB69yMesE1pKojLjVdoNsfyiPi45hZmAn3uLWdpOtfQOaVmikEs7ovj8hFWpz7EV6mel0L9Xy23FMYlPYZenAx0yDB1/PX6dledmQjikjkXCxqMJS9WtfFCyH9XtSekEF+2dH+P4tzITduTygGfv58a5VCTH5PtXD7EFZiNyUDBhHnsFTBgE0SQIA9pfFtgo6cKGuhooeilaKH41eDs38Ip+f4At1Rq/sjr6NEwQqb/I/DQqsLvaFUjvAx+eWirddAJZnAj1DFJL0mSg/gcIpPkMBkhoyCSJ8lTZIxk0TpKDjXHliJzZPO50dR5ASNSnzeLvIvod0HG/mdkmOC0z8VKnzcQ2M/Yz2vKldduXjp9bleLu0ZWn7vWc+l0JGcaai10yNrUnXLP/8Jf59ewX+c3Wgz+B34Df+vbVrc16zTMVgp9um9bxEfzPU5kPqUtVWxhs6OiWTVW+gIfywB9uXi7CGcGW/zk98k/kmvJ95IfJn/j3uQ+4c5zn3Kfcd+AyF3gLnJfcl9xH3OfR2rUee80a+6vo7EK5mmXUdyfQlrYLTwoZIU9wsPCZEtP6BWGhAlhL3p2N6sTjRdduwbHsG9kq32sgBepc+xurLPW4T9URpYGJ3ym4+8zA05u44QjST8ZIoVtu3qE7fWmdn5LPdqvgcZz8Ww8BWJ8X3w0PhQ/wnCDGd+LvlHs8dRy6bLLDuKMaZ20tZrqisPJ5ONiCq8yKhYM5cCgKOu66Lsc0aYOtZdo5QCwezI4wm9J/v0X23mlZXOfBjj8Jzv3WrY5D+CsA9D7aMs2gGfjve8ArD6mePZSeCfEYt8CONWDw8FXTxrPqx/r9Vt4biXeANh8vV7/+/16ffMD1N8AuKD/A/8leAvFY9bLAAAAOGVYSWZNTQAqAAAACAABh2kABAAAAAEAAAAaAAAAAAACoAIABAAAAAEAAAGQoAMABAAAAAEAAAD3AAAAANi3NQ4AACsgSURBVHgB7Z0HlBRV+vZfQQkOOUlmkAxKDktWBBaQA8ghg5JZFSSHXXABEXCXJQgrILgEBQQEBFcRwyKHHARlURyiLDnnLEh/9dz/V3W6e3pmqrtruquqn3vOTFfduvF3q+qte9977/uYR3NCRwIkQAIkQAJBEkgTZHgGJwESIAESIAFFgAKENwIJkAAJkEBIBChAQsLGSCRAAiRAAhQgvAdIgARIgARCIkABEhI2RiIBEiABEqAA4T1AAiRAAiQQEoHHQ4pl80iPHj2SkydP+pQybdq0kjNnTsmYMaOPv/fJuXPnBHHz58/v7c3jJAhcunRJbt++7XM1Li5OcuXK5ePHExIgAXcSeMyN60AuXrwoefLkCdhimTNnlldeeUVGjBghhQoV8gnzhz/8QW7duiU///yzjz9PAhPo0KGDLF++PNFFCJCqVavK3LlzEzFOFJgeJEACjiXgyh6I3hpVqlSRbt26qdPff/9dbt68KTt37pSZM2fKxx9/LD/99JMUKFBADy7Vq1eXe/fuGec8MEfgnXfekUyZMgnWpN6/f18OHz4s8+fPlxo1asiPP/4oTz31lLmEGIoESMBRBFwtQEqWLCn9+vVL1CCTJ0+W4cOHS/fu3eXrr7+Wxx57TIWZMWNGorD0SJlAr169Eg1bVatWTXr37i2fffaZ9OnTJ+VEGIIESMBxBFwtQJJqjaFDh8rRo0fl/fffl2+//VYaN26sgn7wwQfy22+/Sd++fY2oGA776KOP5MCBA3L16lUpVqyYNG/eXOrWrWuEwQHCrV27Vv7zn/9Ivnz5pHPnznLlyhXZunWr/PWvf1VhkcbSpUuVUEPe//vf/6Rdu3byxz/+UV3/8ssvZfPmzeoLPlu2bFKuXDn1EsbXPRy+7BcvXiz9+/eXHTt2qPwePnwoTZo0kdatWyt9BL78ca127doqbW99BIaUcuTIIXXq1FF1+uGHH6RChQrSpUsXNdS0fft2WbFiheqFderUSaWhC1dVgCD+1apVS4VGHelIgARcSgA6ELe5CxcuYH8vT8eOHZOsmvaiVmH+8Y9/GGG0IReP9tI2zrds2eLJnTu3R3uBexo1auTRXrweTRnv0V6qnnnz5hnhkF/hwoVVuJYtW3q0l7dHU9Z7tCExT/r06Y1wa9asUXm2bdtW/aZJk8bzpz/9SV3XXtjKT+s1eTRh4MmbN686L1GihEcbFlJhNAGl/LQXvidDhgweTYh5nnzySeWn9Z5U+TQdj/JHvrh2/PhxI3+tV6DKVrRoUc/TTz/tefbZZ1Vc1FkTPJ7HH3/cU6lSJQ+ug5/WezPiBjpo3769CqcJz0SXNaGprm3atCnRNXqQAAm4gwDGrV3nzAiQ06dPqxecNoxl1N9fgNSrV8+DF7I2O8sIo83uUi/aypUrG34NGjTwZM+e3XPw4EHDb86cOSr9QAJE6xV49u/f79F6KCrt7777ToXVhtWM+NpsMM9rr72m/P/9738rf12AIL72Za/8tF6RElx44WtDRh5Nz6P8P/30UxV30qRJRpoQIAin9cAMvzfffFP5oZ7ff/+98td6YR5Nf+TRZlQZ4QId6AIEAk0bxvL07NnTo/WoPGADYaT16AJFox8JkIBLCMTsOhBMN4XTBIn69f+nta+MHDlSPv/8cx8lcMGCBZVyGENWcJjKqgkAeeONNwQ6F91h3L9ixYr6qc8vdANly5YVTeiotLUvfqXUHzVqlBEOQ0cYloLT89IvIn6RIkXUKYa69OGisWPHKmU2Ljz33HPq+okTJ9Sv/g/pvv322/qpNGvWTB1jRhVmTsE98cQTavgKU3QvX76s/JL7pwk4NfS1cuVKWb16tWBoDE7r/SilenJxeY0ESMC5BGJSB4Lm0sfmIRACObxooZuA3mPVqlXyyy+/iNbDULOKcKzPLNJfloGEhfYlLgkJCYmS9xY0uBgfH6/+tB6A7NmzR8VBPOgy4KCX8Xba8JP3qWjDbOql771+JWvWrCoMZp95O4TRhr8ML8SF0wWSfiGp+Pp171/ok3RdCwQv1tNA3zJu3DjRelqi9Ya8g/OYBEjAJQRitgdy5MgR1YT+L2Pvdl20aJFSLrdp00ZNS71z54507dpVMD1Yd3rvIF26dLqX8ZvUokUsaPR2N27cEG24TE0jHjx4sECQFC9eXKDsD+T84yMMFkp6O7zIA7lAcRFOG3LyCZ5UfJ9AAU4geDGJYMyYMWqiASYGoH50JEAC7iMQswJk9uzZqjVffPHFgK16/vx56dGjh5QpU0YNxRw7dkx9SWP6L9aK6C9YvOjhfv3110TpBPJLFEjzwNAVZl9hFtj169dl27ZtMmvWLDXMhfB6XoHipuQXTtxw80bPCutC/IfRUiozr5MACTiDQMwJELxQ3333XVm/fr2a/hpo6AlNhwVwmCL70ksviTbDymhNTKU9dOiQugZPDFPhRakpzeXBgwdGOEzZxRRhMw49Dm3GlOrdQP+gO0wLhkM5nOagW1q3bp1kyZLFEIROqwPLSwIkkDwB33GL5MM67iqEgD4MhJfwqVOn1DYl0GWUKlVKDUslVSmswcDLXJuuK9rUVvUSxDoJbIGiTb9Vq9ohjBBGmwosUEJjfQVWvl+7dk2mTZumrpnpAUCIYYX8X/7yF9Gm9SrFNYbPsGYEDr0SOzsMV+nDddC5YFgPQ1fQH0EXAl50JEAC7iPgagGCXgD+4DA2j/2xsP/V3//+d7VAD7OgknIIt2TJEpk+fbpaOIhNFhF//PjxgpekNsVWtHUiapwfOhL0FiZOnKiEAOJiphNWuWvrIJLKwvBHPKQJoTFlyhSlz2jatKkqO2ZYbdiwQbTptkZ4ux1guE13EKjQgWBGF3YBaNGihX6JvyRAAi4j4MrNFK1uI+hDMDwVaMYWXvzY+RfDXP5f2vXr1xfE1YVYSuWCkMLwGGZE6V/0KcXhdRIgARKIFgGOLZggjym7gYQHokJoPPPMM4Ieg7dD7wSKcf8tT7zD+B8jrdKlS1N4+IPhOQmQgC0JsAdiQbNAz4KhJwzboNcBRTuGnTBFGIsMsf8UHQmQAAm4jQAFiAUtiqEn6Dqg84DgQG+lZs2aalaVvsDOgmyYBAmQAAnYigAFiK2ag4UhARIgAecQoA7EOW3FkpIACZCArQhQgNiqOVgYEiABEnAOAQoQ57QVS0oCJEACtiJAAWKr5mBhSIAESMA5BChAnNNWLCkJkAAJ2IoABYitmoOFIQESIAHnEHDlXlhnz54NqwWw8E8zNxtWGtGOjNXzsF+imbiNdlFCzh/7amkmgeXWrVshpxHtiCg/9lyD5Uon7qqs88OuyrBQia17nOpgvRN2b9AWTnaRfD9hX7vkHHsgydHhNRKwgAA28qQjATcSiLgAgbnTQDvLwvY4tkrH1ujeXwjoCWBLdWwXgt1xseqbjgRIgARIIPoEIipAYId82LBhyr64d9UhPPDXvn17ZUNj4MCBhqDA9umwh9GpUye1XQiECR0JkAAJkED0CURMgOzbt0/69u0rNWrUSFRr2MEYMGCAsu4H4QH73rt371bboB8/flwGDRqkrsH06+rVqx09Dpuo8vQgARIgAYcSiJgSHcaYFi9erKztYcNB3UGxCJsZum1x+BcrVkzZIYeyCP76GDJsbty9e1dZuvPepBA74eoOyuNWrVrppyH9QoBlzpw5pLh2iQRm6dKlc3Q9sL2909sC5YeLi4szetV2uUeCKQcmNKAOZixsBpNuJMNCge70+wm87FSHiAmQvHnzqnvl8uXLPvcM9B1oWMxW0V2mTJmUWVgYcfJ/kevXvAUIejC6gz0NDHeF4/DyhY1ypzs89GDrVKd/OKAeTncZMmRwdBXQFmgHJwsQ/X5y+rNtp/dT1N8usLwHQQHluG7R7/79+1KgQAElVHDs7XCeNWtWby/Zu3evzzmn8YpwGq/PLRH2CfR3Zlx8fLxPMHwYoSeNDydO4/VBE/ETTuMNHnlK03ijLkAgDPBlg54IhrngLl68KLVr11ZdNRzrDusB8BDmzJlT9+IvCUSEwFtvvWUqnwULFpgKx0Ak4AYCEVOiJwfr+eefl08++UQpxxMSEuTo0aNSvnx5qVKlipw+fVr1MNBDWbZsmdSqVcvoqSSXJq+RAAmQAAmkLoGo90BQvd69e6s1IO3atVMK88GDBwu6m3BY/4H1IVgJi6GACRMmKH/+IwESIAESiC6BiAsQzKpatWqVT60xXr9w4UI1uwqCQ1d2IRBsjNepU0dtZ+Gv+/BJhCckQAIkQAIRJRBxAZJc7bBnUCCHaWsUHoHI0I8ESIAEokfAFjqQ6FWfOZMACZAACYRKgAIkVHKMRwIkQAIxToACJMZvAFafBEiABEIlQAESKjnGIwESIIEYJ0ABEuM3AKtPAiRAAqESoAAJlRzjkQAJkECME6AAifEbgNUnARIggVAJUICESo7xSIAESCDGCVCAxPgNwOqTAAmQQKgEKEBCJcd4JEACJBDjBGy1lUmMtwWrTwIBCYRqiyRgYvQkAQsJUIBYCJNJkUBqEKAtktSgyjStIOBKAQKzt+E4bN4Ybhrh5G9FXOxoDJvoTq4H2sFpbeHPG+WHgxlV2LRJTeeft5V5wegb6uBkk7Yw7wyrp6nJyUrmSaVlp2fClQLkt99+S4q9KX/Yrw43DVMZpWIgPOi///67o+uh23N3Ulv4l1W35w6zzWiP1HT+eVuZF+qhm562Mt1IpoUPKnxYpSanSNTHTu8nCpAALY4vRaffZKiW0wUIhCC+GJ3UFv5l1W3b4OWb2jbR/fMOcGuH7IWXViSEYMgFNBERz7XT7qdA1bLT+4mzsAK1EP1IgARIgARSJEABkiIiBiABEiABEghEgAIkEBX6kQAJkAAJpEjAlTqQFGvNACRgAwJm13fYoKgsAgkEJEABEhALPUkg9QmYXd+R+iVhDiQQGgEOYYXGjbFIgARIIOYJUIDE/C1AACRAAiQQGgEKkNC4MRYJkAAJxDwBCpCYvwUIgARIgARCI0ABEho3xiIBEiCBmCdAARLztwABkAAJkEBoBChAQuPGWCRAAiQQ8wQoQGL+FiAAEiABEgiNQNQXEt6+fVumTZuWqPRVq1aVJk2ayMaNG2Xz5s3G9cyZM8uAAQOMcx6QAAmQAAlEh0DUBQhsPpQvX96oPbaknjVrltSoUUP5rV+/XhmAKV26tDrHttJ0JEACJEAC0ScQdQGSPn16adGihUFi5syZUqdOHWnUqJHyO3TokIwfP16KFy9uhOEBCZAACZBA9AlEXYB4I9i/f7989dVXsmTJEuV9584dOXfunOzatUvmzJmjeiUY1vI3Sblv3z4jGZjdzJYtm3EeygGMAOmW5EKJb5c4MH3p5HroJkidVAf/suombVEX3bhUat0f/nlbmQ8MMentYWW6kUwL/N3wbNupDrYSIMuXL5cXX3xRsmTJou6rkydPSlxcnEDv0bFjR1mxYoXs2LFDJk+e7HPftW3b1jgvU6aMrFmzxjgP9SBXrlyhRrVNvIwZMwr+nO5wDzjFJXXfZM+ePdWrkFTeVmXshnsJLFKbk1W8k0vHLnWwjQC5evWqbN261eh9AF6pUqVk7dq1BsdixYpJ69at5cKFC5InTx7Df/78+cYxeieXL182zkM5gMC6efNmKFFtEwcvrPv37wt6cU51+OLFV/Xdu3cdUwX/ew/lxwfRtWvXUt0mun/eVkJDz/7evXsCc6pOdXg3oEd4/fp1p1ZBlTuS76ecOXMmy8o2AgTK8kqVKknevHmNAp85c0bwhxlZcLiJ8UDiRvZ2tWvX9j6Vs2fP+pwHewJb3KlpXzrY8oQanjbRQyUXejz/+0YftqJN9NCZWhXTLTbR7fR+ss06kMOHD0vZsmV97hU8fCNHjlQ9DlxYt26dEjCFCxf2CccTEiABEiCByBOwTQ8E1tlq1qzpQyBfvnzSp08fGTx4sOr+4wuCRnh8EPGEBEiABKJGwDYCBLOsArk2bdoI/qAjiYQiMlAZ6EcCJEACJJCYgG0ESOKi+fpQePjy4Jk9CfjbOYfODsptfABBJ0VHAm4i4BgB4iborIt7CXCI1b1ty5olJmAbJXriotGHBEiABEjAzgQoQOzcOiwbCZAACdiYAAWIjRuHRSMBEiABOxOgALFz67BsJEACJGBjAlSi27hxWDQSCIaA/wywpOLGx8cndYn+JBAUAQqQoHAxMAnYl4DZGWALFiywbyVYMkcR4BCWo5qLhSUBEiAB+xBgD8Q+bcGSRIGA2WGfKBSNWZKA7QlQgNi+iVjA1CRgdtgnNcvAtEnAqQQ4hOXUlmO5SYAESCDKBChAotwAzJ4ESIAEnErAlUNYsGQXjoMdknDTCCd/q+LqdqytSi/S6cB6nNPrEGlmZvIL5d7W20E3kGUmH7uFQdnd8GzbqQ7hvWntdof8//LAcmE4Di+ucNMIJ38r4uImw06wTq4HXlpuaAsr2tPKNEK5JyB0MmTIILCG51SHOuCeCqX+dqqznZ4JVwqQGzduhNXeuNHCTSOsAlgQOWPGjMomupNtu0MApk+fXm7dumUBESahEwjl3oZd99u3bzt6S/ps2bKpkYVQ6q+zs8NvJN9PcXFxyVbZEgECe8+wdYAvFDoSiDYBTs1NvgWC4cNV68mzjPWrpgXIkCFDBDfTG2+8kYhZxYoVldnZnj17JrpGDxKINAFOzU2eeDB8uGo9eZaxfjVZAXLmzBkZP368YrRp0yZBNzYhIcGHGYZIDh48KLly5fLx5wkJkAAJkIC7CSQrQPLnz6+UTvv371cmOe/du5dIgGCcetCgQdKsWTN3k2LtSIAESIAEfAgkK0AQ8r333lMRZsyYIfny5ZO2bdv6JMATEiABEiCB2CSQogDRsfTv319OnTol8+fPVzOU/KfzNW/eXEqUKKEH5y8JkAAJkIDLCZgWIHv27JHatWvLb7/9pvQdGLrydhAeFCDeRHhMAiRAAu4mYFqAzJw5UzDb6quvvhLMp6YjARIgARKIbQKmBcjFixelVatWFB6xfb9EtfbBrF+IakGZOQnECAHTAqRu3bqybt06+fOf/xwjaFhNuxEIZv2C3crO8pCAGwmYFiAvvfSSLFy4UDp06CD169dP1BOpU6eOFCpUyI2MWCcSIAESIIEABEwLkHfffVcOHDig/j755JNEScGPAiQRFnqQAAmQgGsJmLYHAiX6o0ePkvxr06aNayGxYiRAAiRAAokJmBYgiaPShwRIgARIIJYJmB7C2rJli/zyyy9JsmrYsKE8/fTTSV5P7sL58+flgw8+8AnSrVs3KViwoFy5ckVWr16ttlCpVKmSdOzYUW2v4hOYJyRAAiRAAhEnYFqAfPrppzJv3jyjgBjO0u00YAEhhEeoAgSC6ddff1XThPUMdKMv2MwRgqRTp04yZ84cuXPnjvTu3VsPxl8XEEhqei7sHmDB6t27d11QS1aBBNxHwLQAmTp1quDP2127dk2w3fOqVavUKnXva8EcHz58WGrWrCktWrTwiQal/fHjx2XKlCnKFOWoUaPk1VdflR49eihLdT6BeeJYApye69imY8FjnIBpARKIE1akYyfepUuXqhXqmOobijt06JA89dRTMmbMGMmRI4cgncKFC8vp06elePHiSnggXfjha/Tq1as+28djjYruSpYsKXPnztVPQ/qF2cs8efKEFNcukWDSFr04WCakI4FQCejPAe4npxuMQx3wp9cpVCbRjmen91NYAkQHCRu9GIIK1V24cEEJEOz0u3v3btXDQK8GupHMmTP7JJspUyZBz8fb/sgLL7xghMGOwdh2PhyHByXcNMLJ34q4EB6wEom9y+hIIFQC+nOQLl06geVR/01UQ003GvFgHhkvX71O0SiDFXlG8v1kmUnbvXv3yrFjx4z640aCPgLK9Z07d8rkyZONa8EefPTRR0aUZ555Rvbt2yfffPON+oK+f/++cQ0HOM+aNauP39ixY33Oz54963Me7EkkbQ4HWzaz4d1gE91sXRku9Qjo9sNpEz31GAebciTfT5YJEAwLzZ4926eu6A7mzp1bJk6cGLIOBF81GzduVKvb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)![](data:image/png;base64,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)![](data:image/png;base64,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)

    a.  A
    b.  B
    c.  C
    d.  D

    \
    **Lösung**

    Das Histogramm `D` zeigt die Eigenschaft $MW < Md$ am deutlichsten.

    a.  Falsch
    b.  Falsch
    c.  Falsch
    d.  Wahr

13. **Aufgabe**\

    Welche Form der Verteilung liegt wohl (am ehesten) für die Variable
    `Körpergröße deutscher Männer` vor?

    a.  normalverteilt
    b.  gleichverteilt
    c.  rechtsschief
    d.  linksschief

    \
    **Lösung**

    Die Variable `Körpergröße deutscher Männer` lässt sich am ehesten
    beschreiben mit der Verteilungsform `normalverteilt`.

    a.  Richtig
    b.  Falsch
    c.  Falsch
    d.  Falsch

14. **Aufgabe**\

    Welche Aussage nennt ein richtiges Skalenniveau?

    a.  Die Variable `Augenfarbe` ist vom Typ `Intervallskala`.
    b.  Die Variable `Beliebtester Politiker einer Person` ist vom Typ
        `Verhältnisskala`.
    c.  Die Variable `Rangfolge der Lieblingsspeisen einer Person` ist
        vom Typ `Verhältnisskala`.
    d.  Die Variable `Gewicht einer Maschine` ist vom Typ
        `Nominalskala`.
    e.  Die Variable `Anzahl Kinder in einer Familie` ist vom Typ
        `Verhältnisskala`.

    \
    **Lösung**

    Die Skalenniveaus der präsentierten Variablen lauten wie folgt:

    ::: {#bvyklsnqnp style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"}
      Variable                                      Skalenniveau
      --------------------------------------------- -----------------
      Beliebtester Politiker einer Person           Nominalskala
      Augenfarbe                                    Nominalskala
      Gewicht einer Maschine                        Verhältnisskala
      Rangfolge der Lieblingsspeisen einer Person   Ordinalskala
      Anzahl Kinder in einer Familie                Verhältnisskala
    :::

    Dementsprechend lauten die Lösungen zu den Items:

    a.  Falsch
    b.  Falsch
    c.  Falsch
    d.  Falsch
    e.  Richtig

15. **Aufgabe**\

    Betrachten Sie den Auszug aus dem Datensatz `cattell`. Der Datensatz
    hat folgenden Titel: `12 cognitive variables from Cattell (1963)`.

    ::: {#pypdofacam style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"}
      X         Verbal   Verbal2   Space1   Space2   Reason1   Reason2   Number1   Number2   IPATSer   IPATCLAS   IPATMatr   IPATTOP
      --------- -------- --------- -------- -------- --------- --------- --------- --------- --------- ---------- ---------- ---------
      Verbal    1.00     0.86      0.30     0.32     0.41      0.42      0.34      0.32      0.29      0.21       0.33       0.25
      Verbal2   0.86     1.00      0.30     0.27     0.42      0.41      0.37      0.33      0.30      0.23       0.33       0.24
      Space1    0.30     0.30      1.00     0.79     0.21      0.25      0.23      0.19      0.27      0.29       0.28       0.29
      Space2    0.32     0.27      0.79     1.00     0.23      0.25      0.16      0.14      0.27      0.31       0.24       0.25
      Reason1   0.41     0.42      0.21     0.23     1.00      0.77      0.40      0.43      0.28      0.26       0.35       0.23
      Reason2   0.42     0.41      0.25     0.25     0.77      1.00      0.37      0.39      0.24      0.24       0.37       0.22
    :::

    Hier folgt eine Beschreibung des Datensatzes:

    ------------------------------------------------------------------------

    ## BEGINN BESCHREIBUNG DES DATENSATZES

    \<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"\>

    ::: container
      --------- -----------------
      cattell     R Documentation
      --------- -----------------

    ## 12 cognitive variables from Cattell (1963)

    ### Description

    Rindskopf and Rose (1988) use this data set to demonstrate
    confirmatory second order factor models. It is a nice example data
    set to explore hierarchical structure and alternative factor
    solutions. It contains measures of fluid and crystallized
    intelligence.

    ### Usage

        data("cattell")

    ### Format

    A correlation matrix of the following 12 variables from 277 7th and
    8th graders

    Verbal

    :   A verbal ability test from Thurstone

    Verbal2

    :   A verbal ability test from Thurstone

    Space1

    :   A Spatial ability test from Thurstone

    Space2

    :   A Spatial ability test from Thurstone

    Reason1

    :   A reasoning test from Thurstone

    Reason2

    :   A reasoning test from Thurstone

    Number1

    :   A Numerical ability test from Thurstone

    Number2

    :   A Numerical ability test from Thurstone

    IPATSer

    :   A \"culture fair\" series from the IPAT

    IPATCLAS

    :   A \"culture fair\" classification test from the IPAT

    IPATMatr

    :   A \"culture fair\" matrix reasoning test from the IPAT

    IPATTop

    :   A \"culture fair\" topology test from the IPAT

    ### Details

    Cattell (1963) reported on 8 cognitive variables from Thurstone and
    four from the Institute for Personality Assessment Test (IPAT).
    Rindskopf and Rose (1988) use this data set as an example of second
    order factor analysis. It is thus a nice set for examining
    alternative solutions such as bifactor rotation, `omega`
    hierarchical, as well as `esem` and `interbattery` factor analysis.

    ### Source

    David Rindskopf and Tedd Rose, (1988) Some Theory and Applications
    of Confirmatory Second- Order Factor Analysis, Multivariate
    Behavioral Research, 23, 51-67.

    ### References

    Cattell, R. B. (1963).Theory of fluid and crystallized intelligence:
    A critical experiment. Journal of Educational Psychology, 54, 1-22.

    David Rindskopf and Tedd Rose, (1988) Some Theory and Applications
    of Confirmatory Second- Order Factor Analysis, Multivariate
    Behavioral Research, 23, 51-67.

    ### Examples

        data(cattell)
        corPlot(cattell,numbers=TRUE,upper=FALSE,diag=FALSE,
                     main="12 cognitive variables from Cattell (1963)",xlas=2)
    :::

    ## ENDE BESCHREIBUNG DES DATENSATZES

    ------------------------------------------------------------------------

    Welches Skalenniveau hat die Variable `Reason1`?

    Wählen Sie aus dieser Liste das Skalenniveau aus, das am besten
    passt:

    `character, numeric, binary, integer, ordered factor, factor, date, logical`

    *Hinweis*: Geben Sie den Namen des Skalenniveaus *exakt* so ein, wie
    in der Liste ersichtlich, da ansonsten die Eingabe u.U. nicht als
    korrekt gewertet werden kann.

    \
    **Lösung**

    Das Skalenviveau der Variablen `Reason1` lautet `numeric`.

16. **Aufgabe**\

    Laden Sie die folgende Tabellen mit folgendem Befehl aus dem Paket
    `tidyverse`:

    Insgesamt sollten Sie als folgende Tabellen in Ihrem `environment`
    verfügbar haben:

    -   table1
    -   table2
    -   table3
    -   table4
    -   table5

    Welche der Tabellen ist in der Normalform?

    a.  table1
    b.  table2
    c.  table3
    d.  table4
    e.  table5

    \
    **Lösung**

    Laden wir noch die übrigen Tabellen

    Betrachten wir alle fünf Tabellen:

      country         year    cases   population
      ------------- ------ -------- ------------
      Afghanistan     1999      745     19987071
      Afghanistan     2000     2666     20595360
      Brazil          1999    37737    172006362
      Brazil          2000    80488    174504898
      China           1999   212258   1272915272
      China           2000   213766   1280428583

      country         year type                count
      ------------- ------ ------------ ------------
      Afghanistan     1999 cases                 745
      Afghanistan     1999 population       19987071
      Afghanistan     2000 cases                2666
      Afghanistan     2000 population       20595360
      Brazil          1999 cases               37737
      Brazil          1999 population      172006362
      Brazil          2000 cases               80488
      Brazil          2000 population      174504898
      China           1999 cases              212258
      China           1999 population     1272915272
      China           2000 cases              213766
      China           2000 population     1280428583

      country         year rate
      ------------- ------ -------------------
      Afghanistan     1999 745/19987071
      Afghanistan     2000 2666/20595360
      Brazil          1999 37737/172006362
      Brazil          2000 80488/174504898
      China           1999 212258/1272915272
      China           2000 213766/1280428583

      country           1999     2000
      ------------- -------- --------
      Afghanistan        745     2666
      Brazil           37737    80488
      China           212258   213766

      country         century year   rate
      ------------- --------- ------ -------------------
      Afghanistan          19 99     745/19987071
      Afghanistan          20 00     2666/20595360
      Brazil               19 99     37737/172006362
      Brazil               20 00     80488/174504898
      China                19 99     212258/1272915272
      China                20 00     213766/1280428583

    Man sieht, dass nur Tabelle 1 "tidy" ist.

    [Quelle](http://garrettgman.github.io/tidying/)

    a.  Wahr
    b.  Falsch
    c.  Falsch
    d.  Falsch
    e.  Falsch

17. **Aufgabe**\

    Welche der folgenden Spalte ist *nicht* Teil des Datensatzes
    `flights` aus dem R-Paket `nycflights13`?

    a.  year
    b.  month
    c.  day
    d.  dep_time
    e.  sched_dep_time
    f.  estimated_dep_time
    g.  arr_time
    h.  sched_arr_time

    \
    **Lösung**

    Mit `?flights` oder `help(flights)` kann man Hilfe bekommen (wenn
    das entsprechende Paket geladen ist).

    S. [hier](https://rdrr.io/cran/nycflights13/man/flights.html)

    a.  Falsch
    b.  Falsch
    c.  Falsch
    d.  Falsch
    e.  Falsch
    f.  Wahr
    g.  Falsch
    h.  Falsch

18. **Aufgabe**\

    Sei $X \sim \mathcal{N}(42,7)$ und $x_{1} = 28$.

    Berechnen Sie den z-Wert für $x_{1}$!

    Hinweis:

    -   Runden Sie ggf. auf die nächste ganze Zahl.

    \
    **Lösung**

    ``` text
    x1_z = (x1 - x_mw) / x_sd
    ```

    -2
