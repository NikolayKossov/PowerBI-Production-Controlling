# Metodyka i kontrakt danych

**Ziarnistość:** Jedna partia produkcyjna (BatchID), jeden produkt i jedna linia.

Budżet statyczny = planowane sztuki × standard. Budżet elastyczny = dobre sztuki × standard. Efekt wolumenu = elastyczny − statyczny. Efekt efektywności = koszt rzeczywisty − elastyczny. Suma obu = odchylenie całkowite. Koszt jednostkowy = całkowity koszt / dobre sztuki. OEE = (czas pracy / planowany czas) × (idealny czas / czas pracy) × (dobre / wszystkie sztuki); ilorazy sum, nie średnia OEE partii. MaterialCostPLN to wartość rozchodu z ERP, nie cena jednostkowa.

## Zasady wspólne

- Okres: 2024-01-01 — 2025-12-31; pełny kalendarz i relacje 1:N, jednokierunkowe.
- Dane deterministyczne i w całości syntetyczne; brak danych osobowych i firmowych.
- Klucze źródeł muszą być unikalne. Łączenia lewe w M przerywają odświeżanie przy brakach lub zwielokrotnieniu wierszy.
- Puste mianowniki w DAX zwracają BLANK przez DIVIDE, nie pozorne zero.
- Miesiące sortowane jako YYYY-MM. Dla kart m/m należy wybrać jeden miesiąc; na pełnym zakresie DATEADD przesuwa cały zakres dat. Brak wcześniejszego okresu daje BLANK.
- Kolumnę Date[Date] oznaczono jako klucz daty, tabelę jako Time; sprawdź Mark as date table w Desktop.
- Pliki CSV: UTF-8, przecinek, kropka dziesiętna, daty ISO; jawna kultura en-US przy imporcie.

## Integracja ERP

Eksporty są inspirowane typowymi systemami ERP/MES/TMS. Nie jest to konektor ani odtworzenie schematu Comarch ERP Optima. Przed podłączeniem rzeczywistej Optimy należy uzgodnić dokumenty, klucze, korekty i jednostki z administratorem, korzystając z udokumentowanego eksportu lub widoków tylko do odczytu.

## Ograniczenia

Partie traktowane są jako niezależne zaplanowane okna po 480 minut, bez rekonstrukcji harmonogramu maszyn. Model nie uwzględnia WIP, amortyzacji ani pełnej księgowej wyceny zapasu. OEE całego portfela to zdefiniowany wskaźnik z komponentów, nie uniwersalny standard agregacji różnych technologii.

## Walidacja silnika

Kontrole Python/SQL i JSON nie zastępują odświeżenia w Power BI Desktop. Power Query i DAX wymagają końcowej walidacji w tym silniku; nie deklarujemy wykonania jej bez uruchomienia Desktop.
