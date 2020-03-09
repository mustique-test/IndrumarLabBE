# IndrumarLabBE

# Indrumar de laborator Bazele electrotehnicii


# fisier actualizat in martie 2020


##################
# AUTORI INDRUMAR
##################

Mihai Popescu
Ruxandra Barbulescu
Sorin Lup
Gabriela Ciuprina
Daniel Ioan

##################

##################
# CATEVA DEFINITII
##################

 - Repository - reprezinta  chiar proiectul (online); noi avem un repository numit IndrumarLabBE
 - Fork – crearea unei copii din contul origine (ruxandrab/IndrumarLabBE) in contul propriu (NumeCont/IndrumarLabBE – tot online).
 - Branch – fiecare proiect (repository) are implicit o ramura/branch (branch master). A crea o ramura/branch = a crea o noua ramura/directie pentru proiect in contul propriu. 
De exemplu eu am creat o ramura indrumar-coperta sub ramura master in care m-am jucat cu diferite coperti pentru indrumar, si cand am terminat am integrat versiunea finala (din branch indrumar-coperta) in ramura principala (branch master). Dar folosirea acestor ramuri/branches nu cred ca este foarte utila la inceput, mai ales daca nu lucrati pe mai multe planuri la acelasi document in acelasi timp.
 - Commit – salvarea modificarilor, incarcarea lor online. Direct in branch master (recomandat deocamdata), sau sub o noua ramura (detalii mai jos)
 - Push – “impingerea” modificarilor catre proiectul origine
 - Pull – preluarea unui proiect (in general din online catre offline – local, calculatorul propriu)
 - Pull request – cerere catre proprietarul proiectului din care s-a facut Fork (in cazul asta contul meu ruxandrab) de a prelua modificarile (deci de a face Pull pt modificari)


Versiunea stabila va fi ruxandrab/IndrumarLabBE (branch master). 
Aici vor fi toate fisierele necesare pentru generarea unui pdf pe local fara erori.
Aceasta versiune va fi intotdeauna actualizata de mine in urma unui Pull request .
Tot in ruxandrab/IndrumarLabBE va fi intotdeauna un pdf denumit main_indrumar_versiune_stabila_llmmaaaa.pdf, care e “versiunea stabila curenta”, pe care il voi regenera dupa fiecare Pull request acceptat.
Deci, daca descarcati versiunea curenta si generati fisierul .pdf, acesta trebuie sa fie identic cu fisierul main_indrumar_versiune_stabila_llmmaaaa.pdf.




###########################
# FLUXUL DE LUCRU PE SCURT
###########################
(am creat un cont de test numit mustique-test – care tine loc de ContulMeu mai jos) 

1.	Acces proiect/repository: https://github.com/ruxandrab/IndrumarLabBE si autentificare in contul propriu, numit ContulMeu de aici incolo

2.	Fork => creeaza o copie a versiunii stabile din ruxandrab/IndrumarLabBE in contul propriu (deci tot online), va fi de genul: ContulMeu/IndrumarLabBE, iar sub va scrie: forked from ruxandrab/IndrumarLabBE

3.	Clone/Download => descarca o copie pentru ContulMeu/IndrumarLabBE locala, pe calculator (deci offline). In acest moment exista cel putin trei copii ale proiectului: ruxandrab/IndrumarLabBE, ContulMeu/IndrumarLabBE, plus copia de pe calculator.

4.	Se modifica local fisierele.
 
5.	Se incarca fisierele modificate in ContulMeu/IndrumarLabBE, astfel: 

	a)	Se apasa Upload files

	b)  Se aleg fisierele, se trece o descriere scurta a modificarilor (ex. “modificare mod notare, adaugare Bonus”). Se alege Commit changes to the master branch (e vorba de master branch din ContulMeu/IndrumarLabBE), si se apasa Commit changes.

	Exista si optiunea Create a new branch for this commit and start a pull request, optiune utila in momentul in care ati lucrat la ceva (de ex. o anumita structura pentru cuprins), dar nu sunteti singuri ca va ramane asa si poate vreti sa incercati si altceva (alta structura a cuprinsului de ex.). Deci e vorba de o ramura in contul propriu, care va trebui integrata mai intai in ramura master din contul propriu si apoi trimisa catre versiunea stabila din contul origine.

6.	In acest moment modificarile se afla in ContulMeu/IndrumarLabBE. Pentru a ajunge in versiunea stabila (in ruxandrab/IndrumarLabBE), trebuie creat New pull request, cu o descriere scurta. Eu voi primi toate aceste Pull requests si daca nu sunt conflicte le voi integra in versiunea stabila.

	a)	Se apasa (New) pull request
 
	b)	Se apasa Create pulls request
 
	c)	Se adauga o descriere, se apasa Create pull request. 

	d)	Aceasta cerere a ajuns deja in lista de Pull requests.
 


############################
# OBSERVATII SI RECOMANDARI
############################

 - Nu incarcati fisiere .pdf, nici macar fisierul rezultat generat de voi in versiunea curenta (figurile pot fi de tip .png).
 - Nu incarcati fieisere de tip .aux, .log, etc., incarcati doar fisierele care sunt necesare pentru generarea unui .pdf nou. Pentru ca aceste fisiere pot crea probleme la generare, am creat un fisier .gitignore cu toate tipurile de fisiere care vor fi ignorate de GitHub.
 - Versiunea pe care o incarcati nu are voie sa aiba erori la rulare (generarea unui .pdf nou).
 - Toti pasii descrisi mai sus (cu exceptia 4.) pot fi realizati in mai multe feluri: 
		− din browser: https://github.com/ruxandrab/IndrumarLabBE 
		- din GitHub Desktop (o aplicatie desktop care trebuie instalata pe calculator) 
		- din linia de comanda (nu e complicat, daca vrea cineva pot scrie un tutorial, dar comenzile pentru ce am descris mai sus se gasesc peste tot pe internet)

