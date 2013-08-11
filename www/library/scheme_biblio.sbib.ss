; The "new" Scheme Sbib database (as a single XML "file")

(module scheme_biblio.sbib mzscheme
  
  (require (lib "xml.ss" "webit"))
  (require (lib "sbib.ss" "webit")
           (lib "html.ss" "webit"))
  
  (define (paper-link url)
    (sb:link sb:url: url
             sb:format: "downloadable paper"))
  
  (define (ps-link url)
    (sb:link sb:url: url
             sb:format: "ps"))
  
  (define (pdf-link url)
    (sb:link sb:url: url
             sb:format: "pdf"))
  
  (define (html-link url)
    (sb:link sb:url: url
             sb:format: "html"))
  
  (define (acmdl-link url)
    (sb:link sb:url: url
             sb:format: "ACM Digital Library"))
  
  (define SchemeBiblio
    (bind-namespaces 
     ((#f sbib-ns-url))
     (sb:bibdb
      
      (sb:techreport
       sb:key: "Oz:entry83"
       sb:author: "Matthias Felleisen, Daniel P. Friedman, Bruce F. Duba and John Merrill"
       sb:title: "Beyond Continuations"
       sb:number: "Computer Science Dept. Technical Report 216"
       sb:institution: "Indiana University"
       sb:month: "February"
       sb:year: "1987"
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/felleisen-beyond.pdf"))
      
      (sb:techreport
       sb:key: "LMor:Mor97f"
       sb:author: "Luc Moreau"
       sb:title: "NeXeme: A Distributed Scheme Based on Nexus (Reference Manual and User's Guide)"
       sb:number: "Technical Report M97/8"
       sb:institution: "University of Southampton"
       sb:month: "November"
       sb:year: "1997"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/NeXeme/man/ug.ps"))
      
      (sb:article
       sb:key: "Oz:entry87"
       sb:author: "Christopher T. Haynes and Daniel P. Friedman"
       sb:title: "Embedding Continuations in Procedural Objects"
       sb:journal: "ACM Transactions on Programming Languages and Systems"
       sb:volume: "9"
       sb:number: "4"
       sb:pages: "582-598"
       sb:month: "October"
       sb:year: "1987"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=30392&coll=Portal"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor98b"
       sb:author: "Luc Moreau and Christian Queinnec"
       sb:title: "Distributed Computations Driven by Resource Consumption"
       sb:booktitle: "IEEE International Conference on Computer Languages (ICCL'98)"
       sb:pages: "68-77"
       sb:month: "May"
       sb:year: "1998"
       (sb:abstract "Millions of computers are now connected together by the Internet. At a fast  pace, applications are taking advantage of these new capabilities, and are  becoming parallel and distributed, e.g. applets on the WWW or agent  technology. As we live in a world with finite resources, an important  challenge is to be able to control computations in such an environment. For  instance, a user might like to suspend a computation because another one  seems to be more promising. In this paper, we present a paradigm that allows  the programmer to monitor and control computations, whether parallel or  distributed, by mastering their resource consumption. We describe an  implementation on top of the thread library PPCR and the message-passing  library Nexus.")
       ;(ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/iccl98.ps.gz")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/iccl98.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/iccl98.pdf"))
      
      (sb:inproceedings
       sb:key: "JScm:Hick98"
       sb:author: "Timothy J. Hickey, Peter Norvig and Kenneth R. Anderson"
       sb:title: "LISP - a Language for Internet Scripting and Programming"
       sb:booktitle: "LUGM'98: Proceedings of Lisp in the Mainstream"
       sb:month: "November"
       sb:year: "1998"
       (pdf-link "http://www.norvig.com/lugm.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry45"
       sb:author: "Daniel P. Friedman and Christopher T. Haynes"
       sb:title: "Constraining Control"
       sb:booktitle: "Proceedings of the Twelfth Annual Symposium on Principles of Programming Languages"
       sb:pages: "245-254"
       sb:publisher: "ACM"
       sb:month: "January"
       sb:year: "1985")
      
      (sb:phdthesis
       sb:key: "Fuchs:thesis"
       sb:author: "Matthew Fuchs"
       sb:title: "Dreme: for Life in the Net"
       sb:school: "New York University"
       sb:month: "September"
       sb:year: "1995"
       (ps-link "http://www.cs.nyu.edu/csweb/Research/Theses/fuchs_matthew.ps.gz")
       (pdf-link "http://www.cs.nyu.edu/csweb/Research/Theses/fuchs_matthew.pdf"))
      
      (sb:techreport
       sb:key: "Oz:entry51"
       sb:author: "Matthias Felleisen"
       sb:title: "Transliterating Prolog into Scheme"
       sb:number: "Computer Science Technical Report 182"
       sb:institution: "Indiana University"
       sb:month: "October"
       sb:year: "1985")
      
      (sb:article
       sb:key: "Oz:entry57"
       sb:author: "Christopher T. Haynes, Daniel P. Friedman and Mitchell Wand"
       sb:title: "Obtaining Coroutines With Continuations"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "11"
       sb:number: "3/4"
       sb:pages: "143-153"
       sb:publisher: "Pergamon Press"
       sb:year: "1986")
      
      (sb:phdthesis
       sb:key: "Bawden:thesis"
       sb:author: "Alan Bawden"
       sb:title: "Implementing Distributed Systems Using Linear Naming"
       sb:number: "MIT AI Lab Technical Report AITR-1627"
       sb:month: "March"
       sb:year: "1993"
       (sb:abstract "Linear graph reduction is a simple computational model in which the cost of naming things is explicitly represented. The key idea is the notion of \"linearity\". A name is linear if it is only used once, so with linear naming you cannot create more than one outstanding reference to an entity. As a result, linear naming is cheap to support and easy to reason about. Programs can be translated into the linear graph reduction model such that linear names in the program are implemented directly as linear names in the model. Nonlinear names are supported by constructing them out of linear names. The translation thus exposes those places where the program uses names in expensive, nonlinear ways. Two applications demonstrate the utility of using linear graph reduction: First, in the area of distributed computing, linear naming makes it easy to support cheap cross-network references and highly portable data structures, Linear naming also facilitates demand driven migration of tasks and data around the network without requiring explicit guidance from the programmer. Second, linear graph reduction reveals a new characterization of the phenomenon of state. Systems in which state appears are those which depend on certain - global- system properties. State is not a localizable phenomenon, which suggests that our usual object oriented metaphor for state is flawed.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-1627.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-1627.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry65"
       sb:author: "Christopher T. Haynes"
       sb:title: "Logic Continuations"
       sb:booktitle: "Proceedings of the Third International Conference on Logic Programming"
       sb:pages: "671-685"
       sb:publisher: "Springer-Verlag"
       sb:month: "July"
       sb:year: "1986")
      
      (sb:mastersthesis
       sb:key: "Dyb:DybMScThesis"
       sb:author: "R. Kent Dybvig"
       sb:title: "C-Scheme"
       sb:school: "Indiana University Computer Science Department"
       sb:number: "Technical Report 149"
       sb:year: "1983")
      
      (sb:inproceedings
       sb:key: "Oz:entry66"
       sb:author: "Matthias Felleisen, Daniel P. Friedman, Eugene E. Kohlbecker and Bruce F. Duba"
       sb:title: "Reasoning with Continuations"
       sb:booktitle: "Proceedings of the Symposium on Logic in Computer Science"
       sb:pages: "131-141"
       sb:publisher: "IEEE Computer Society Press"
       sb:month: "June"
       sb:year: "1986")
      
      (sb:inproceedings
       sb:key: "Oz:entry138"
       sb:author: "Morry Katz and Daniel Weise"
       sb:title: "Continuing Into the Future: On the Interaction of Futures and First-Class Continuations"
       sb:booktitle: "Proceedings of the 1990 ACM Conference on Lisp and Functional Programming"
       sb:month: "June"
       sb:year: "1990"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=91628&coll=Portal"))
      
      (sb:phdthesis
       sb:key: "Philbin:thesis"
       sb:author: "James Philbin"
       sb:title: "STING: An Operating System for Modern Languages"
       sb:school: "Yale University"
       sb:month: "May"
       sb:year: "1993")
      
      (sb:techreport
       sb:key: "DanvyFil89"
       sb:author: "Olivier Danvy and Andrzej Filinski"
       sb:title: "A Functional Abstraction of Typed Contexts"
       sb:institution: "DIKU"
       sb:number: "DIKU Rapport 89/12"
       sb:month: "July"
       sb:year: "1989"
       (ps-link "http://www.daimi.au.dk/~danvy/Papers/fatc.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Haahr:Usenix1990"
       sb:author: "Paul Haahr"
       sb:title: "Montage: Breaking Windows into Small Pieces"
       sb:booktitle: "Summer 1990 Usenix Conference"
       sb:year: "1990"
       (sb:link sb:url: "http://www.webcom.com/haahr/montage/montage-usenix-s90.html"
                sb:format: "html"))
      
      (sb:phdthesis
       sb:key: "MillerJS:thesis"
       sb:author: "James S. Miller"
       sb:title: "Multischeme: A Parallel Processing System based on MIT Scheme"
       sb:number: "MIT Technical Report MIT/LCS/TR-402"
       sb:school: "Massachusetts Institute of Technology"
       sb:month: "September"
       sb:year: "1987")
      
      (sb:inproceedings
       sb:key: "DanvyFil90"
       sb:author: "Olivier Danvy and Andrzej Filinski"
       sb:title: "Abstracting Control"
       sb:booktitle: "1990 ACM Conference on Lisp and Functional Programming"
       sb:pages: "151-160"
       sb:month: "September"
       sb:year: "1990"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/danvy/Papers/danvy-filinski-lfp90.ps.gz"))
      
      (sb:inproceedings
       sb:key: "schematics:sw2002"
       sb:author: "Noel Welsh, Francisco Solsona and Ian Glover"
       sb:title: "SchemeUnit and SchemeQL: Two little languages"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2002/schemeunit-schemeql.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2002/schemeunit-schemeql.pdf"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Cli:88"
       sb:author: "William D. Clinger, Anne Hartheimer and Eric M. Ost"
       sb:title: "Implementation strategies for continuations"
       sb:pages: "124-131"
       sb:booktitle: "Proceedings of the 1988 ACM conference on LISP and functional programming"
       sb:month: "July"
       sb:year: "1988"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/lfp/62678/p124-clinger/"))
      
      (sb:phdthesis
       sb:key: "BouchThesis"
       sb:author: "Dominique Boucher"
       sb:title: "Analyse et optimisation globales de modules compilés séparément"
       sb:school: "Université de Montréal"
       sb:month: "December"
       sb:year: "1999"
       (ps-link "http://www.iro.umontreal.ca/~boucherd/papers/phd.tgz"))
      
      (sb:inproceedings
       sb:key: "Dyb:Hie:90"
       sb:author: "Robert Hieb, R. Kent Dybvig and Carl Bruggeman"
       sb:title: "Representing Control in the Presence of First-Class Continuations"
       sb:booktitle: "ACM SIGPLAN 1990 Conference on Programming Language Design and Implementation"
       sb:month: "June"
       sb:year: "1990"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/stack.ps"))
      
      (sb:book
       sb:key: "Dyb:DybSchemeBook"
       sb:author: "R. Kent Dybvig"
       sb:title: "The Scheme Programming Language, Second Edition"
       sb:publisher: "Prentice Hall"
       sb:year: "1996"
       (sb:link sb:url: "http://www.scheme.com/tspl2d/index.html"
                sb:format: "html"))
      
      (sb:techreport
       sb:key: "IU-SR:Dan:91"
       sb:author: "Olivier Danvy and Andrzej Filinski"
       sb:title: "Representing Control: A Study of the CPS Transformation"
       sb:number: "CIS-91-2"
       sb:institution: "Department of Computing and Information Sciences, Kansas State University"
       sb:month: "February"
       sb:year: "1991"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/rrc.ps.gz"))
      
      (sb:article
       sb:key: "HalsteadMulti85a"
       sb:author: "Robert H. Halstead"
       sb:title: "MULTILISP: a language for concurrent symbolic computation"
       sb:journal: "ACM Transactions on Programming Languages and Systems (TOPLAS)"
       sb:volume: "7"
       sb:number: "4"
       sb:month: "October"
       sb:year: "1985"
       sb:pages: "501-538"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=4478&coll=portal"))
      
      (sb:inproceedings
       sb:key: "bawden:quasi-pepm99"
       sb:author: "Alan Bawden"
       sb:title: "Quasiquotation in Lisp"
       sb:booktitle: "Partial Evaluation and Program Manipulation (PEPM99)"
       sb:year: "1999"
       (ps-link "http://people.csail.mit.edu/alan/ftp/pepm99.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PE:Dan:92"
       sb:author: "Olivier Danvy and Julia L. Lawall"
       sb:title: "Back to direct style II: First-class continuations"
       sb:booktitle: "1992 ACM Conference on Lisp and Functional Programming"
       sb:year: "1992"
       (ps-link "http://www.diku.dk/users/julia/danvy-lawall-lfp92.ps.gz"))
      
      (sb:inproceedings
       sb:key: "HalsteadMulti85b"
       sb:author: "Robert H. Halstead and J. Loaiza"
       sb:title: "Exception handling in Multilisp"
       sb:booktitle: "1985 Int. Conf. Parallel Processing"
       sb:month: "August"
       sb:year: "1985")
      
      (sb:inproceedings
       sb:key: "mg:sw2002"
       sb:author: "Martin Gasbichler and Michael Sperber"
       sb:title: "Processes vs. user-level threads in scsh"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2002/gasbichler.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2002/gasbichler.pdf"))
      
      (sb:inproceedings
       sb:key: "PE:Law:93"
       sb:author: "Julia L. Lawall and Olivier Danvy"
       sb:title: "Separating Stages in the Continuation-Passing Style Transformation"
       sb:booktitle: "Proceedings of POPL93, the 1993 ACM Symposium on Principles of Programming Languages"
       sb:pages: "pages 124-136"
       sb:year: "1993"
       (ps-link "http://www.diku.dk/users/julia/lawall-danvy-popl93.ps.gz"))
      
      (sb:unpublished
       sb:key: "Oops:Wil:bigsurv"
       sb:author: "Paul R. Wilson"
       sb:title: "Uniprocessor Garbage Collection Techniques"
       (ps-link "ftp://ftp.cs.utexas.edu/pub/garbage/bigsurv.ps"))
      
      (sb:phdthesis
       sb:key: "Lat2000thesis"
       sb:author: "Mario Latendresse"
       sb:title: "Génération de machines virtuelles pour l'exécution de programmes compressés"
       sb:school: "Université de Montréal"
       sb:month: "April"
       sb:year: "2000"
       (ps-link "http://www.iro.umontreal.ca/~latendre/publications/these.ps"))
      
      (sb:techreport
       sb:key: "PE:Dan:95"
       sb:author: "Olivier Danvy and Julia L. Lawall"
       sb:title: "Back to direct style II: First-class continuations"
       sb:number: "Technical Report CS-95-179"
       sb:institution: "Computer Science Department, Brandeis University"
       sb:month: "February"
       sb:year: "1995"
       (ps-link "http://www.diku.dk/users/julia/danvy-lawall-lfp92-extended.ps.gz"))
      
      (sb:article
       sb:key: "clements:toplas2004"
       sb:author: "John Clements and Matthias Felleisen"
       sb:title: "A Tail-Recursive Machine with Stack Inspection"
       sb:journal: "Transactions on Programming Languages and Systems"
       sb:year: "2004"
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/cf-toplas04.pdf"))
      
      (sb:techreport
       sb:key: "PLT:TR:92-180"
       sb:author: "Amr Sabry and Matthias Felleisen"
       sb:title: "Reasoning about Programs in Continuation-Passing Style"
       sb:number: "TR 92-180"
       sb:institution: "Rice University"
       sb:year: "1992"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tr92-180.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Flatt:99"
       sb:author: "Matthew Flatt, Robert Bruce Findler, Shriram Krishnamurthi and Matthias Felleisen"
       sb:title: "Programming Languages as Operating Systems (or, Revenge of the Son of the Lisp Machine)"
       sb:booktitle: "Proceedings of ICFP 99"
       sb:year: "1999"
       (sb:abstract "The MrEd virtual machine serves both as the implementation platform for the DrScheme programming environment, and as the underlying Scheme engine for executing expressions and programs entered into DrScheme's read-eval-print loop. We describe the key elements of the MrEd virtual machine for building a programming environment, and we step through the implementation of a miniature version of DrScheme in MrEd. More generally, we show how MrEd defines a high-level operating system for graphical programs.")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/icfp99-ffkf.pdf")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/icfp99-ffkf.ps.gz"))
      
      (sb:phdthesis
       sb:key: "DKolbly:PhdThesis"
       sb:author: "Donovan Kolbly"
       sb:title: "Extensible Language Implementation"
       sb:school: "University of Texas"
       sb:month: "September"
       sb:year: "2002"
       (ps-link "http://www.cs.utexas.edu/ftp/pub/techreports/tr02-71.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Cli:Cli84n"
       sb:author: "William D. Clinger"
       sb:title: "The scheme 311 compiler an exercise in denotational semantics"
       sb:booktitle: "1984 ACM Symposium on LISP and functional programming"
       sb:year: "1984"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802052"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Sit:90"
       sb:author: "Dorai Sitaram and Matthias Felleisen"
       sb:title: "Reasoning with Continuations II: Full Abstraction for Models of Control"
       sb:booktitle: "Proceedings of LFP 90"
       sb:year: "1990"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/lfp90-sf.ps.gz")
       (sb:link sb:url: "http://www.ccs.neu.edu/scheme/pubs/lfp90-sf-correction.ps.gz"
                sb:format: "two corrections (ps)"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Flan:96a"
       sb:author: "Cormac Flanagan and Matthias Felleisen"
       sb:title: "Componential Set-Based Analysis"
       sb:booktitle: "Proceedings of PLDI 97"
       sb:year: "1996"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/pldi97-ff.ps.gz"))
      
      (sb:inproceedings
       sb:key: "AcmDL:PCScm86"
       sb:author: "David H. Bartley and John C. Jensen"
       sb:title: "The implementation of PC Scheme"
       sb:booktitle: "Proceedings of the 1986 ACM conference on LISP and functional programming"
       sb:year: "1986"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=319852"))
      
      (sb:phdthesis
       sb:key: "Kohl:Kohl-thesis"
       sb:author: "Eugene E. Kohlbecker"
       sb:title: "Syntactic Extensions in the Programming Language Lisp"
       sb:school: "Indiana University"
       sb:year: "1986"
       (pdf-link "http://repository.readscheme.org/ftp/papers/kohlbecker_phdthesis.pdf"))
      
      (sb:article
       sb:key: "PLT:Pub:Sab:93"
       sb:author: "Amr Sabry and Matthias Felleisen"
       sb:title: "Reasoning about Programs in Continuation-Passing Style"
       sb:journal: "LISP and Symbolic Computation"
       sb:year: "1993"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/lasc93-sf.ps.gz"))
      
      (sb:techreport
       sb:key: "Lawall:Gro01"
       sb:author: "Bernd Grobauer and Julia L. Lawall"
       sb:title: "Partial Evaluation of Pattern Matching in Strings, revisited"
       sb:month: "September"
       sb:year: "2001"
       sb:number: "BRICS report RS-00-31"
       (ps-link "http://www.diku.dk/users/julia/BRICS-RS-00-31.ps.gz")
       (pdf-link "http://www.diku.dk/users/julia/BRICS-RS-00-31.pdf"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Flan:93"
       sb:author: "Cormac Flanagan, Amr Sabry, Bruce F. Duba and Matthias Felleisen"
       sb:title: "The Essence of Compiling with Continuations"
       sb:booktitle: "Proceedings of PLDI 93"
       sb:year: "1993"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/pldi93-fsdf.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Flan:96b"
       sb:author: "Cormac Flanagan, Matthew Flatt, Shriram Krishnamurthi, Stephanie Weirich and Matthias Felleisen"
       sb:title: "Catching Bugs in the Web of Program Invariants"
       sb:booktitle: "Proceedings of PLDI 96"
       sb:year: "1996"
       (sb:abstract "MrSpidey is a user-friendly, interactive static debugger for Scheme. A static debugger supplements the standard debugger by analyzing the program and pinpointing those program operations that may cause run-time errrors such as dereferencing the null pointer or applying non-functions. The program analysis of MrSpidey computes value set descriptions for each term in the program and constructs a value flow graph connecting the set descriptions. Using the set descriptions, MrSpidey can identify and highlight potentially erroneous program operations, whose cause the programmer can then explore by selectively exposing portions of the value flow graph.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/pldi96-ffkwf.ps.gz"))
      
      (sb:mastersthesis
       sb:key: "UTAustin:Carl:96"
       sb:author: "Stephen Paul Carl"
       sb:title: "Syntactic Exposures - A Lexically-Scoped Macro Facility for Extensible Compilers"
       sb:institution: "University of Texas at Austin"
       sb:month: "December"
       sb:year: "1996"
       (ps-link "ftp://ftp.cs.utexas.edu/pub/garbage/carl-msthesis.ps"))
      
      (sb:inproceedings
       sb:key: "Ashl:Ashl97"
       sb:author: "J. Michael Ashley"
       sb:title: "The Effectiveness of Flow Analysis for Inlining"
       sb:booktitle: "Proceedings of the 1997 ACM International Conference on Functional Programming"
       sb:pages: "99-111"
       (pdf-link "http://repository.readscheme.org/ftp/papers/jmashley/icfp97.pdf"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Sab:94a"
       sb:author: "Amr Sabry and Matthias Felleisen"
       sb:title: "Is Continuation-Passing Useful for Data Flow Analysis?"
       sb:booktitle: "Proceedings of PLDI 94"
       sb:year: "1994"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/pldi94-sf.ps.gz"))
      
      (sb:inbook
       sb:key: "Oz:entry14"
       sb:author: "Guy Lewis Steele, Jr."
       sb:title: "Compiler Optimization Based on Viewing LAMBDA as RENAME + GOTO"
       sb:booktitle: "AI: An MIT Perspective"
       sb:publisher: "MIT Press"
       sb:year: "1980")
      
      (sb:unpublished
       sb:key: "Fuse:90-3-revised"
       sb:author: "Daniel Weise and Erik Ruf"
       sb:title: "Computing Types During Program Specialization"
       sb:institution: "Stanford Computer Systems Laboratory"
       sb:month: "December"
       sb:year: "1990"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-90-3-REVISED.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-90-3-REVISED.pdf"))
      
      (sb:inproceedings
       sb:key: "Goldberg:OOPSLA2004"
       sb:author: "David Goldberg, Robert Bruce Findler, Matthew Flatt"
       sb:title: "Super and Inner - Together at Last!"
       sb:booktitle: "Object-Oriented Programming, Systems, Languages, and Applications (OOPSLA)"
       sb:year: "2004"
       (pdf-link "http://people.cs.uchicago.edu/~robby/pubs/papers/oopsla2004-gff.pdf"))
      
      (sb:inproceedings
       sb:key: "serrano:icfp2002"
       sb:author: "Bernard Serpette and Manuel Serrano"
       sb:title: "Compiling Scheme to JVM bytecode: a performance study"
       sb:booktitle: "International Conference on Functional Programming (ICFP'2002)"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/ss-icfp02.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry5"
       sb:author: "Guy Lewis Steele, Jr."
       sb:title: "Debunking the \"Expensive Procedure Call\" Myth, or Procedure Call Implementations Considered Harmful, or LAMBDA, the Ultimate GOTO"
       sb:booktitle: "ACM Conference Proceedings"
       sb:pages: "153-162"
       sb:publisher: "ACM"
       sb:year: "1977"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=810196&coll=portal&dl=ACM"))
      
      (sb:article
       sb:key: "Dyb:Dyb:89"
       sb:author: "R. Kent Dybvig and Robert Hieb"
       sb:title: "Engines from Continuations"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "14, 2"
       sb:pages: "109-123"
       sb:year: "1989"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/engines.ps"))
      
      (sb:inproceedings
       sb:key: "Masuhara2003ECOOP"
       sb:author: "Hidehiko Masuhara and Gregor Kiczales"
       sb:title: "Modeling Crosscutting in Aspect-Oriented Mechanisms"
       sb:booktitle: "ECOOP2003"
       sb:month: "July"
       sb:year: "2003"
       (pdf-link "http://www.graco.c.u-tokyo.ac.jp/~masuhara/papers/ecoop2003.pdf")
       (sb:link sb:url: "http://www.graco.c.u-tokyo.ac.jp/~masuhara/papers/ecoop2003-slides.pdf"
                sb:format: "slides")
       (sb:link sb:url: "http://www.graco.c.u-tokyo.ac.jp/~masuhara/papers/ecoop2003-slides.pps"
                sb:format: "slides (pps)"))
      
      (sb:phdthesis
       sb:key: "Ashl:Ashl96a"
       sb:author: "J. Michael Ashley"
       sb:title: "A Practical and Flexible Flow Analysis for Higher-Order Languages"
       sb:school: "Indiana University"
       sb:year: "1996"
       (pdf-link "http://repository.readscheme.org/ftp/papers/jmashley/thesis.pdf"))
      
      (sb:inproceedings
       sb:key: "Shi:Shi:97b"
       sb:author: "Olin Shivers"
       sb:title: "Continuations and threads: Expressing machine concurrency directly in advanced languages"
       sb:booktitle: "Proceedings of the Second ACM SIGPLAN Workshop on Continuations"
       sb:month: "January"
       sb:year: "1997"
       (ps-link "http://www.cc.gatech.edu/fac/Olin.Shivers/cps-threads.ps"))
      
      (sb:article
       sb:key: "Oz:entry21"
       sb:author: "Guy Lewis Steele, Jr. and Gerald Jay Sussman"
       sb:title: "Design of a Lisp-based Processor"
       sb:journal: "CACM"
       sb:volume: "23"
       sb:number: "11"
       sb:pages: "628-645"
       sb:month: "November"
       sb:year: "1980"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=359031&coll=portal&dl=ACM"))
      
      (sb:inproceedings
       sb:key: "Masuhara2002AOSD"
       sb:author: "Hidehiko Masuhara, Gregor Kiczales and Christopher Dutchyn"
       sb:title: "Compilation Semantics of Aspect-Oriented Programs"
       sb:booktitle: "Foundations Of Aspect-Oriented Languages (Workshop at AOSD 2002)"
       sb:month: "April"
       sb:year: "2002"
       (ps-link "http://repository.readscheme.org/ftp/papers/masuhara-foal2002.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/masuhara-foal2002.pdf"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Fell:88a"
       sb:author: "Matthias Felleisen, Mitchell Wand, Daniel P. Friedman and Bruce F. Duba"
       sb:title: "Abstract continuations: a mathematical semantics for handling full jumps"
       sb:pages: "52-62"
       sb:booktitle: "Proceedings of the 1988 ACM conference on LISP and functional programming"
       sb:month: "July"
       sb:year: "1988"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/lfp/62678/p52-felleisen/"))
      
      (sb:article
       sb:key: "IU-SR:Dic:92a"
       sb:author: "Ken Dickey"
       sb:title: "The Scheme Programming Language"
       sb:journal: "Computer Language"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/intro.txt"))
      
      (sb:unpublished
       sb:key: "Orleans:2002Proposal"
       sb:author: "Doug Orleans"
       sb:title: "Programming Language Support For Separation Of Concerns"
       sb:institution: "Northeastern University"
       sb:month: "April"
       sb:year: "2002"
       (ps-link "http://steak.place.org/dougo/thesis/proposal.ps")
       (pdf-link "http://steak.place.org/dougo/thesis/proposal.pdf"))
      
      (sb:phdthesis
       sb:key: "Lawall:thesis"
       sb:author: "Julia L. Lawall"
       sb:title: "Continuation Introduction and Elimination in Higher-Order Programming Languages"
       sb:school: "Indiana University, Computer Science Department"
       sb:month: "July"
       sb:year: "1994")
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Sab:92"
       sb:author: "Amr Sabry and Matthias Felleisen"
       sb:title: "Reasoning about Programs in Continuation-Passing Style"
       sb:booktitle: "Proceedings of LFP 92"
       sb:year: "1992"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/lfp92-sf.ps.gz"))
      
      (sb:article
       sb:key: "Wand2003:TOPLASAspects"
       sb:author: "Mitchell Wand, Gregor Kiczales and Christopher Dutchyn"
       sb:title: "A Semantics for Advice and Dynamic Join Points in Aspect-Oriented Programming"
       sb:journal: "TOPLAS"
       sb:year: "2003"
       (ps-link "ftp://ftp.ccs.neu.edu/pub/people/wand/papers/wkd02.ps"))
      
      (sb:inproceedings
       sb:key: "Ashl:Ashl96b"
       sb:author: "J. Michael Ashley"
       sb:title: "A Practical and Flexible Flow Analysis for Higher-Order Languages"
       sb:booktitle: "Conference Record of POPL'96: The 23rd ACM SIGPLAN-SIGACT Symposium on Principles of Programming Languages"
       sb:pages: "184-194"
       sb:year: "1996"
       (pdf-link "http://repository.readscheme.org/ftp/papers/jmashley/popl96.pdf"))
      
      (sb:article
       sb:key: "Rees:Rees:93b"
       sb:author: "Jonathan A. Rees"
       sb:title: "User-defined data types"
       sb:number: "'The Scheme of Things' (column)"
       sb:organization: "Association of Computer Machinery"
       sb:journal: "Lisp Pointers"
       sb:year: "1993"
       (ps-link "http://mumble.net/~jar/pubs/scheme-of-things/opaque-types.ps"))
      
      (sb:inproceedings
       sb:key: "Ducasse:OOPSLA95"
       sb:author: "Stéphane Ducasse, Mireille Blay-Fornarino and Anne-Marie Pinna"
       sb:title: "A Reflective Model for First Class Dependencies"
       sb:booktitle: "OOPSLA'95 (International Conference on Object - Oriented Programming Systems Languages and Applications)"
       sb:month: "October"
       sb:year: "1995"
       (pdf-link "http://www.iam.unibe.ch/~scg/Archive/Papers/Duca95bAReflectiveModel.pdf"))
      
      (sb:phdthesis
       sb:key: "PLT:Thesis:Fagan"
       sb:author: "Mike Fagan"
       sb:title: "Soft Typing: An Approach to Type Checking for Dynamically Typed Languages"
       sb:school: "Rice University"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/thesis-fagan.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PE:Law:94"
       sb:author: "Julia L. Lawall and Olivier Danvy"
       sb:title: "Continuation-Based Partial Evaluation"
       sb:booktitle: "1994 ACM Conference on Lisp and Functional Programming"
       sb:year: "1994"
       (ps-link "http://www.diku.dk/users/julia/lawall-danvy-lfp94.ps.gz"))
      
      (sb:article
       sb:key: "Ashl:Ashl94"
       sb:author: "J. Michael Ashley and Charles Consel"
       sb:title: "Fixpoint Computation for Polyvariant Static Analyses of Higher-Order Applicative Programs"
       sb:journal: "ACM Transactions on Programming Languages and Systems"
       sb:month: "September"
       sb:year: "1994"
       sb:number: "16(5)"
       sb:pages: "1431-1448"
       (pdf-link "http://repository.readscheme.org/ftp/papers/jmashley/toplas94.pdf"))
      
      (sb:techreport
       sb:key: "Ducasse:RR-95-28"
       sb:author: "Stéphane Ducasse"
       sb:title: "Reifying Inheritance in a Reflective Language"
       sb:institution: "Université de Nice-Sophia Antipolis"
       sb:number: "I3S Lab RR-95-28"
       sb:year: "1996"
       (ps-link "http://www.iam.unibe.ch/~scg/Archive/Papers/Duca96aInhReify.ps.gz"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Fell:88b"
       sb:author: "Matthias Felleisen"
       sb:title: "Lambda-v-CS: An Extended Lambda-Calculus for Scheme"
       sb:pages: "72-85"
       sb:booktitle: "Proceedings of the 1988 ACM conference on LISP and functional programming"
       sb:month: "July"
       sb:year: "1988"
       (acmdl-link "http://doi.acm.org/10.1145/62678.62686"))
      
      (sb:unpublished
       sb:key: "sgmiller:sisc2002"
       sb:author: "Scott G. Miller"
       sb:title: "SISC: A Complete Scheme Interpreter in Java"
       sb:month: "January"
       sb:year: "2002"
       (ps-link "http://sisc.sourceforge.net/sisc.ps.gz")
       (pdf-link "http://sisc.sourceforge.net/sisc.pdf"))
      
      (sb:unpublished
       sb:key: "Steen:94"
       sb:author: "Bjarne Steensgaard and Morten Marquard"
       sb:title: "A Polyvariant Closure Analysis with Dynamic Widening"
       sb:month: "May"
       sb:year: "1994"
       (ps-link "ftp://ftp.research.microsoft.com/pub/analysts/closure.ps.Z"))
      
      (sb:inproceedings
       sb:key: "Dyb:Bru:96"
       sb:author: "Carl Bruggeman, Oscar Waddell and R. Kent Dybvig"
       sb:title: "Representing Control in the Presence of One-Shot Continuations"
       sb:booktitle: "ACM SIGPLAN 1996 Conference on Programming Language Design and Implementation"
       sb:month: "June"
       sb:year: "1996"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/Call-1cc-PLDI96.ps.gz"))
      
      (sb:techreport
       sb:key: "IU-SR:Fel:91b"
       sb:author: "Matthias Felleisen"
       sb:title: "(Y Y) Works! A Lecture on the Why of Y"
       sb:month: "Sept"
       sb:year: "1991"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/Y.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Dyb:Ash:94"
       sb:author: "J. Michael Ashley and R. Kent Dybvig"
       sb:title: "An Efficient Implementation of Multiple Return Values in Scheme"
       sb:booktitle: "1994 ACM Conference on LISP and Functional Programming"
       sb:pages: "140-149"
       sb:month: "June"
       sb:year: "1994"
       (pdf-link "http://repository.readscheme.org/ftp/papers/jmashley/lfp94.pdf"))
      
      (sb:phdthesis
       sb:key: "Ducasse:PhDThesis"
       sb:author: "Stéphane Ducasse"
       sb:title: "Intégration réflexive de dépendances dans un modèle à classes"
       sb:school: "Université de Nice-Sophia Antipolis"
       sb:month: "January"
       sb:year: "1997"
       (ps-link "http://www.iam.unibe.ch/~scg/Archive/Papers/Duca97aPhD.ps.gz")
       (pdf-link "http://www.iam.unibe.ch/~scg/Archive/Papers/Duca97aPhD.pdf"))
      
      (sb:phdthesis
       sb:key: "Ayers:thesis"
       sb:author: "Andrew E. Ayers"
       sb:title: "Abstract Analysis and Optimization of Scheme"
       sb:school: "MIT"
       sb:year: "1993")
      
      (sb:inproceedings
       sb:key: "SW00:Fee"
       sb:author: "Marc Feeley"
       sb:title: "A portable implementation of first-class continuations for unrestricted interoperability with C in a multithreaded Scheme"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "65"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/feeley.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/feeley.pdf"))
      
      (sb:article
       sb:key: "Dyb:Kum:98"
       sb:author: "Sanjeev Kumar, Carl Bruggeman and R. Kent Dybvig"
       sb:title: "Threads Yield Continuations"
       sb:journal: "Lisp and Symbolic Computation"
       sb:volume: "10, 2"
       sb:pages: "223-236"
       sb:month: "May"
       sb:year: "1998"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/subK.ps"))
      
      (sb:inproceedings
       sb:key: "Oleg:Oleg00b"
       sb:author: "Oleg Kiselyov"
       sb:title: "Binary parsing"
       sb:booktitle: "A micro-talk presentation at a Workshop on Scheme and Functional Programming 2000"
       sb:month: "September"
       sb:year: "2000"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Scheme/#binio"
                sb:format: "html"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Flatt:98b"
       sb:author: "Matthew Flatt, Shriram Krishnamurthi and Matthias Felleisen"
       sb:title: "Classes and Mixins"
       sb:booktitle: "Proceedings of POPL 98"
       sb:year: "1998"
       (sb:abstract "While class-based object-oriented programming languages provide a flexible mechanism for re-using and managing related pieces of code, they typically lack linguistic facilities for specifying a uniform extension of many classes with one set of fields and methods. As a result, programmers are unable to express certain abstractions over classes."
                    (h4:p)
                    "In this paper we develop a model of class-to-class functions that we refer to as mixins. A mixin function maps a class to an extended class by adding or overriding fields and methods. Programming with mixins is similar to programming with single inheritance classes, but mixins more directly encourage programming to interfaces.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/popl98-fkf.ps.gz"))
      
      (sb:techreport
       sb:key: "IU-SR:Fre:92"
       sb:author: "Eric T. Freeman and Daniel P. Friedman"
       sb:title: "Characterizing the Paralation Model using Dynamic Assignment"
       sb:institution: "Computer Science Department, Indiana University"
       sb:number: "TR-348"
       sb:month: "March"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr348.ps.gz"))
      
      (sb:manual
       sb:key: "Dyb:DybChez"
       sb:author: "R. Kent Dybvig"
       sb:title: "Chez Scheme User's Guide"
       sb:publisher: "Cadence Research Systems"
       sb:year: "1998"
       (sb:link sb:url: "http://www.scheme.com/csug/index.html"
                sb:format: "html"))
      
      (sb:phdthesis
       sb:key: "PLT:Thesis:Flatt"
       sb:author: "Matthew Flatt"
       sb:title: "Programming Languages for Reusable Software Components"
       sb:school: "Rice University"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/thesis-flatt.ps.gz"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Ruf:89"
       sb:author: "Erik Ruf and Daniel Weise"
       sb:title: "Nondeterminism and unification in LogScheme: integrating logic and functional programming"
       sb:pages: "327-339"
       sb:booktitle: "Proceedings of the fourth international conference on Functional programming languages and computer architecture"
       sb:month: "September"
       sb:year: "1989"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/fp/99370/p327-ruf/"))
      
      (sb:unpublished
       sb:key: "Oleg:Oleg00c"
       sb:author: "Oleg Kiselyov"
       sb:title: "General ways to traverse collections"
       sb:month: "April"
       sb:year: "2000"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Scheme/enumerators-callcc.html"
                sb:format: "html"))
      
      (sb:inproceedings
       sb:key: "Rees:Rees82"
       sb:author: "Jonathan A. Rees and Norman I. Adams IV"
       sb:title: "T: A dialect of Lisp or, Lambda: The ultimate software tool"
       sb:booktitle: "Conference Record of the 1982 ACM Symposium on Lisp and Functional Programming"
       sb:pages: "114-122"
       sb:year: "1982"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802142"))
      
      (sb:techreport
       sb:key: "IU-SR:Lee:92a"
       sb:author: "Shin-Der Lee and Daniel P. Friedman"
       sb:title: "First-Class Extents"
       sb:institution: "Computer Science Department, Indiana University"
       sb:number: "TR-350"
       sb:month: "March"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr350.ps.gz"))
      
      (sb:techreport
       sb:key: "IU-SR:Ada:93"
       sb:author: "Norman I. Adams IV, Pavel Curtis and Mike Spreitzer"
       sb:title: "First-class Data-type Representations in SchemeXerox"
       sb:month: "June"
       sb:year: "1993"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/reps.ps.gz"))
      
      (sb:article
       sb:key: "Kreutzer:C-Flavours"
       sb:author: "Wolfgang Kreutzer and Malcolm Stairmand"
       sb:title: "C-Flavours: A Scheme-based Flavour System with Co-routines and its Application to the Design of Object-Oriented Software"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "Vol. 15"
       sb:number: "Num. 4"
       sb:pages: "225-249"
       sb:year: "1990")
      
      (sb:unpublished
       sb:key: "Bak:Bak:94"
       sb:author: "Henry G. Baker"
       sb:title: "CONS Should Not CONS Its Arguments, Part II: Cheney on the M.T.A."
       sb:month: "May"
       sb:year: "1994"
       (ps-link "http://home.pipeline.com/~hbaker1/CheneyMTA.ps.gz")
       (sb:link sb:url: "http://home.pipeline.com/~hbaker1/CheneyMTA.html"
                sb:format: "html"))
      
      (sb:manual
       sb:key: "Rees:TManual"
       sb:author: "Jonathan A. Rees, Norman I. Adams IV and James R. Meehan"
       sb:title: "The T manual"
       sb:institution: "Yale University Computer Science Department"
       sb:year: "1984"
       (sb:link sb:url: "ftp://ftp.cs.indiana.edu/pub/scheme-repository/imp/t/manual.gz"
                sb:format: "text")
       (pdf-link "http://repository.readscheme.org/ftp/papers/t_manual.pdf"))
      
      (sb:techreport
       sb:key: "IU-SR:Lee:92b"
       sb:author: "Shin-Der Lee and Daniel P. Friedman"
       sb:title: "Quasi-Static Scoping: Sharing Variable Bindings Across Multiple Lexical Scopes"
       sb:institution: "Computer Science Department, Indiana University"
       sb:month: "October"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr365.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Masuhara:ECOOP98"
       sb:author: "Hidehiko Masuhara and Akinori Yonezawa"
       sb:title: "Design and Partial Evaluation of Meta-objects for a Concurrent Reflective Language"
       sb:booktitle: "European Conference on Object-Oriented Programming (ECOOP'98)"
       sb:month: "July"
       sb:year: "1998"
       (ps-link "http://www.yl.is.s.u-tokyo.ac.jp/pub/papers/ecoop98-abclr3-letter.ps.gz")
       (pdf-link "http://www.yl.is.s.u-tokyo.ac.jp/pub/papers/ecoop98-abclr3.pdf"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Ber:88"
       sb:author: "Andrew A. Berlin and Henry M. Wu"
       sb:title: "Scheme86: a system for interpreting scheme"
       sb:pages: "116-123"
       sb:booktitle: "Proceedings of the 1988 ACM conference on LISP and functional programming"
       sb:month: "July"
       sb:year: "1988"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/lfp/62678/p116-berlin/"))
      
      (sb:article
       sb:key: "Wand:99a"
       sb:author: "Mitchell Wand"
       sb:title: "Continuation-Based Multiprocessing"
       sb:journal: "Higher-Order and Symbolic Computation"
       sb:number: "12(3)"
       sb:pages: "285-299"
       sb:month: "October"
       sb:year: "1999"
       (ps-link "ftp://ftp.ccs.neu.edu/pub/people/wand/papers/hosc-99.ps"))
      
      (sb:techreport
       sb:key: "IU-SR:Law:92"
       sb:author: "Julia L. Lawall and Daniel P. Friedman"
       sb:title: "Toward Leakage Containment"
       sb:institution: "Computer Science Department, Indiana University"
       sb:month: "February"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr346.ps.gz"))
      
      (sb:phdthesis
       sb:key: "Masuhara:PhDThesis"
       sb:author: "Hidehiko Masuhara"
       sb:title: "Architecture Design and Compilation Techniques Using Partial Evaluation in Reflective Concurrent Object-Oriented Languages"
       sb:school: "University of Tokyo"
       sb:month: "January"
       sb:year: "1999"
       (ps-link "http://www.graco.c.u-tokyo.ac.jp/~masuhara/papers/phdthesis.ps.gz")
       (pdf-link "http://www.graco.c.u-tokyo.ac.jp/~masuhara/papers/phdthesis.pdf"))
      
      (sb:inproceedings
       sb:key: "IUplg:Sobel98"
       sb:author: "Jonathon Sobel and Daniel P. Friedman"
       sb:title: "Recycling Continuations"
       sb:booktitle: "1998 International Conference on Functional Programming (ICFP'98)"
       sb:month: "September"
       sb:year: "1998"
       (ps-link "http://www.cs.indiana.edu/hyplan/jsobel/Recycling/recycling.ps")
       (pdf-link "http://www.cs.indiana.edu/hyplan/jsobel/Recycling/recycling.pdf"))
      
      (sb:inproceedings
       sb:key: "Queinnec-modules:2002"
       sb:author: "Christian Queinnec"
       sb:title: "23 things I know about modules for Scheme"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (sb:abstract "The benefits of modularization are well known. However, modules are not  standard in Scheme. This paper accompanies an invited talk at the " (h4:em "Scheme  Workshop 2002") " on the current state of modules for Scheme. Implementation is  not addressed, only linguistic features are covered.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2002/queinnec-modules.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2002/queinnec-modules.pdf"))
      
      (sb:article
       sb:key: "IU-SR:Ram:94"
       sb:author: "John D. Ramsdell"
       sb:title: "Scheme: The Next Generation"
       sb:journal: "Lisp Pointers, Vol. VII, No. 4"
       sb:month: "October-December"
       sb:year: "1994"
       sb:pages: "13-14"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/sng.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que2000c"
       sb:author: "Christian Queinnec"
       sb:title: "Continuations and conversations"
       sb:booktitle: "9th International Conference, AIMSA 2000"
       sb:number: "number 1904 in Lecture Notes in Artificial Intelligence"
       sb:pages: "363-363"
       sb:month: "September"
       sb:year: "2000")
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Flatt:98a"
       sb:author: "Matthew Flatt and Matthias Felleisen"
       sb:title: "Units: Cool Modules for HOT Languages"
       sb:booktitle: "Proceedings of PLDI 98"
       sb:year: "1998"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/pldi98-ff.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que94c"
       sb:author: "Christian Queinnec"
       sb:title: "Locality, causality and continuations"
       sb:booktitle: "LFP '94 - ACM Symposium on Lisp and Functional Programming"
       sb:pages: "91-102"
       sb:month: "June"
       sb:year: "1994"
       (sb:abstract "Concurrency and distribution are topics exacerbated by the omnipresence of  Internet. Although many languages address these topics, few offer the real  opportunity to control and coordinate widely spread dynamic computations.  This paper presents such a language and its prominent features. Besides  explaining the software architecture of the implementation (based on objects  and generic functions), it also presents an original coherency protocol for  shared mutable variables.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/lcc.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/lcc.pdf"))
      
      (sb:unpublished
       sb:key: "Queinnec2001scope"
       sb:author: "Frédéric Peschanski, Christian Queinnec and Jean-Pierre Briot"
       sb:title: "A typeful composition model for dynamic software architectures"
       sb:month: "July"
       sb:year: "2001"
       (sb:abstract "Future generations of software systems should be able to evolve consistently  while they are running. To address this problem, we propose a model and a  domain-specific language, named Scope, that offers the dynamic composition of component-based software architectures. The basic constitutive operation  available is the establishment of a connection between two given composnents.  Interconnected components can exchange information in the form of anonymous  event emissions. Event types are used in our work both to capture  programmer's intentions at the conceptual level and to ensure type safety at  the operational level. A type inference algorithm maps these two levels. Compositions can be flat or recursive, the result being an architecture or a  composite component. Language-level extensions are proposed through type  confinement, connection labelling and component refinement.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/scope-report2001.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/scope-report2001.pdf"))
      
      (sb:inproceedings
       sb:key: "IU-SR:Roz:92"
       sb:author: "Guillermo J. Rozas"
       sb:title: "Taming the Y Operator"
       sb:booktitle: "Proceedings of the 1992 ACM Conference on Lisp and Functional Programming"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/y.ps.gz"))
      
      (sb:article
       sb:key: "Que:Que93c"
       sb:author: "Christian Queinnec"
       sb:title: "Continuation conscious compilation"
       sb:journal: "Lisp Pointers"
       sb:number: "6(1)"
       sb:pages: "2-14"
       sb:month: "January"
       sb:year: "1993"
       (sb:abstract "This paper proposes some (unimplemented) ideas for the compilation of  Scheme-like languages where functions may be specialized with respect to some  of the continuations with which they are invoked. This allows for some optimizations, for instance, when a frame to be pushed and the frame on top  of the continuation can be combined into a single and simplified frame. Among  possible improvements are: intermediate data structure elimination and  removal of useless calculations. Functions can therefore be compiled with  respect to their near future and reorganize it when appropriate. The  compilation technique is based on a program transformation named Abstract  Continuation Passing Style that makes continuation (i.e., stack) frames  explicit. Shape of continuations is approximated to determine which frames  would gain by being combined together then partial evaluation is used to  determine the behavior of combined frames. Our main results cover local  deforestation-like effect as well as iterative compilation of associatively  wrapped recursions.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/ccc.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/ccc.pdf"))
      
      (sb:techreport
       sb:key: "IU-SR:Fel:89"
       sb:author: "Matthias Felleisen and Robert Hieb"
       sb:title: "The Revised Report on the Syntactic Theories of Sequential Control and State"
       sb:institution: "Rice University"
       sb:month: "June"
       sb:year: "1989"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/ricetr100.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Gasbichler:SW2003"
       sb:author: "Martin Gasbichler, Eric Knauel, Michael Sperber and Richard A. Kelsey"
       sb:title: "How to Add Threads to a Sequential Language Without Getting Tangled Up"
       sb:booktitle: "Scheme Workshop 2003"
       sb:month: "November"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2003/Threads.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2003/Threads.pdf"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag90a"
       sb:author: "Suresh Jagannathan"
       sb:title: "Coercion as a Metaphor for Computation"
       sb:booktitle: "IEEE International Conference on Computer Languages"
       sb:month: "August"
       sb:year: "1990"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/iccl90.ps.gz"))
      
      (sb:techreport
       sb:key: "PE:Law:95"
       sb:author: "Julia L. Lawall and Olivier Danvy"
       sb:title: "Continuation-Based Partial Evaluation"
       sb:number: "Technical Report CS-95-178"
       sb:institution: "Computer Science Department, Brandeis University"
       sb:month: "February"
       sb:year: "1995"
       (ps-link "http://www.diku.dk/users/julia/lawall-danvy-lfp94-extended.ps.gz"))
      
      (sb:techreport
       sb:key: "Que:Que92e"
       sb:author: "Christian Queinnec"
       sb:title: "Continuation sensitive compilation"
       sb:number: "Research Report LIX RR 92/14"
       sb:institution: "Laboratoire d'Informatique de l'École Polytechnique"
       sb:month: "November"
       sb:year: "1992"
       (sb:abstract "This paper presents a compilation technique for Scheme-like languages where  functions may look at their continuation before pushing frames onto it. This  allows for some optimizations when the frame to be pushed and the frame on  top of the continuation can be combined into a single and simplified frame.  Among possible simplifications are: intermediate data structure elimination  and removal of redundant calculations. Functions can therefore be compiled  with respect to their near future and reorganize it when appropriate. The  compilation technique is based on an improved CPS-like transformation that  makes continuation (i.e., stack) frames explicit. Shape of continuations is  approximated to determine which frames would gain by being combined together  then partial evaluation is used to determine the behavior of combined frames.  Our main results cover local deforestation-like effect as well as iterative  compilation of associatively wrapped recursions.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/csc.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/csc.pdf"))
      
      (sb:inproceedings
       sb:key: "Que:Que91a"
       sb:author: "Christian Queinnec and Bernard Serpette"
       sb:title: "A Dynamic Extent Control Operator for Partial Continuations"
       sb:booktitle: "POPL '91 - Eighteenth Annual ACM symposium on Principles of Programming Languages"
       sb:pages: "174-184"
       sb:month: "January"
       sb:year: "1991"
       (sb:abstract "A partial continuation is a prefix of the computation that remains to be done.  We propose in this paper a new operator which precisely controls which prefix  is to be abstracted into a partial continuation. This operator is strongly  related to the notion of dynamic extent which we denotationally characterize.  Some programming examples are commented and we also show how to express  previously proposed control operators. A suggested implementation is  eventually discussed.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/popl6.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/popl6.pdf"))
      
      (sb:techreport
       sb:key: "Danvy:3StepsCPS91"
       sb:author: "Olivier Danvy"
       sb:title: "Three Steps for the CPS Transformation"
       sb:number: "CIS-92-02"
       sb:institution: "Kansas State University"
       sb:month: "December"
       sb:year: "1991"
       (ps-link "http://www.daimi.au.dk/~danvy/Papers/3steps.ps.gz"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor97c"
       sb:author: "Luc Moreau"
       sb:title: "A Syntactic Theory of Dynamic Binding"
       sb:booktitle: "International Joint Conference on Theory and Practice of Software Development (TAPSOFT/FASE'97)"
       sb:number: "volume 1214 of Lecture Notes in Computer Science"
       sb:pages: "727-741"
       sb:month: "April"
       sb:year: "1997"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/tapsoft97.ps.gz"))
      
      (sb:inproceedings
       sb:key: "DanvyESOP2000Formal"
       sb:author: "Olivier Danvy"
       sb:title: "Formalizing Implementation Strategies for First-Class Continuations"
       sb:booktitle: "European Symposium on Programming (ESOP 2000)"
       sb:volume: "LNCS 1782"
       sb:month: "April"
       sb:year: "2000"
       (ps-link "http://www.brics.dk/RS/99/51/BRICS-RS-99-51.ps.gz")
       (pdf-link "http://www.brics.dk/RS/99/51/BRICS-RS-99-51.pdf"))
      
      (sb:article
       sb:key: "LMor:Mor98a"
       sb:author: "Luc Moreau, Daniel Ribbens and Pascal Gribomont"
       sb:title: "Advanced Programming Techniques Using Scheme"
       sb:journal: "Journées Francophones des Languages Applicatifs, Collection Didactique"
       sb:pages: "69-90"
       sb:month: "February"
       sb:year: "1998"
       sb:institution: "INRIA"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/jfla98.ps.gz"))
      
      (sb:article
       sb:key: "Dyb:Hie:94"
       sb:author: "Robert Hieb, R. Kent Dybvig and Claude W. Anderson III"
       sb:title: "Subcontinuations"
       sb:journal: "Lisp and Symbolic Computation"
       sb:volume: "7, 1"
       sb:pages: "83-110"
       sb:month: "January"
       sb:year: "1994"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/subcontinuations.ps.gz"))
      
      (sb:inproceedings
       sb:key: "DanvyESOP92Direct"
       sb:author: "Olivier Danvy"
       sb:title: "Back to Direct Style"
       sb:booktitle: "European Symposium on Programming (ESOP 1992)"
       sb:month: "February"
       sb:year: "1992"
       sb:volume: "LNCS 582"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/danvy/Papers/danvy-scp94.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que92a"
       sb:author: "Christian Queinnec and Jean-Marie Geffroy"
       sb:title: "Partial evaluation applied to symbolic pattern matching with intelligent backtrack"
       sb:booktitle: "WSA '92--Workshop on Static Analysis"
       sb:month: "September"
       sb:year: "1992"
       (sb:abstract "We present in this paper a general pattern matching algorithm which leads to a  very clever pattern compiler thanks to partial evaluation. We examine some  target code produced for classical patterns, and show how techniques such as Kuth-Morris-Pratt or Boyer-Moore (in the domain of string or tree matching) are automatically re-discovered by our compiler.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/pewib.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/pewib.pdf"))
      
      (sb:inbook
       sb:key: "Oz:entry26"
       sb:author: "Gerald Jay Sussman"
       sb:title: "LISP, Programming and Implementation"
       sb:booktitle: "Functional Programming and its Applications"
       sb:publisher: "Cambridge University Press"
       sb:year: "1982")
      
      (sb:article
       sb:key: "Wand:99b"
       sb:author: "Mitchell Wand"
       sb:title: "Continuation-Based Multiprocessing Revisited"
       sb:journal: "Higher-Order and Symbolic Computation"
       sb:number: "12(3)"
       sb:pages: "283"
       sb:month: "October"
       sb:year: "1999"
       (ps-link "ftp://ftp.ccs.neu.edu/pub/people/wand/papers/hosc-99-intro.ps"))
      
      (sb:inproceedings
       sb:key: "sperber:icfp2002"
       sb:author: "Michael Sperber and Martin Gasbichler"
       sb:title: "Final shift for call/cc: Direct implementation of shift and reset"
       sb:booktitle: "International Conference on Functional Programming (ICFP'2002)"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://www-pu.informatik.uni-tuebingen.de/users/gasbichl/publications/icfp02.ps"))
      
      (sb:article
       sb:key: "Wang:JCL1992"
       sb:author: "Ching-Lin Wang"
       sb:title: "A Continuation-based Language Embedded in Scheme"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "Vol. 17"
       sb:number: "Num. 1"
       sb:pages: "19-37"
       sb:year: "1992")
      
      (sb:article
       sb:key: "IU-SR:Ram:92"
       sb:author: "John D. Ramsdell"
       sb:title: "An Operational Semantics for Scheme"
       sb:journal: "Lisp Pointers V(2)"
       sb:pages: "6-10"
       sb:month: "April-June"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/sos.ps.gz"))
      
      (sb:inproceedings
       sb:key: "gasbichler:ifl2001"
       sb:author: "Martin Gasbichler, Michael Sperber"
       sb:title: "A Direct Implementation of Shift/Reset"
       sb:booktitle: "IFL 2001"
       sb:year: "2001")
      
      (sb:techreport
       sb:key: "Fuse:92-7"
       sb:author: "Erik Ruf and Daniel Weise"
       sb:title: "Opportunities for Online Partial Evaluation"
       sb:month: "April"
       sb:year: "1992"
       sb:institution: "Stanford Computer Systems Laboratory"
       sb:number: "CSL-TR-92-516"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-7.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-7.pdf"))
      
      (sb:techreport
       sb:key: "Oz:entry9"
       sb:author: "Guy Lewis Steele, Jr. and Gerald Jay Sussman"
       sb:title: "The Revised Report on Scheme, a Dialect of Lisp"
       sb:number: "MIT AI Memo 452"
       sb:institution: "Massachusetts Institute of Technology"
       sb:month: "January"
       sb:year: "1978"
       (sb:abstract "SCHEME is a dialect of LISP. It is an expression-oriented, applicative order, interpreter-based language which allows one to manipulate programs as data. It differs from most current dialects of LISP in that it closes all lambda-expressions in the environment of their definition or declaration, rather than in the execution environment. This has the consequence that variables are normally lexically scoped, as in ALGOL. However, in contrast with ALGOL, SCHEME treats procedures as a first-class data type. They can be the values of variables, the returned values of procedures, and components of data structures. Another difference from LISP is that SCHEME is implemented in such a way that tail- recursions execute without net growth of the interpreter stack. The effect of this is that a procedure call behaves like a GOTO and thus procedure calls can be used to implement iterations, as in PLASMA.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-452.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-452.pdf"))
      
      (sb:article
       sb:key: "Danvy:Prefixes89"
       sb:author: "Olivier Danvy"
       sb:title: "On listing list prefixes"
       sb:journal: "Lisp Pointers"
       sb:volume: "Vol. 2"
       sb:number: "No. 3-4"
       sb:month: "January"
       sb:year: "1989")
      
      (sb:inproceedings
       sb:key: "Oz:entry17"
       sb:author: "Steven S. Muchnick and Uwe F. Pleban"
       sb:title: "A Semantic Comparison of Lisp and Scheme"
       sb:booktitle: "Conference Record of the 1980 Lisp Conference"
       sb:pages: "56-65"
       sb:year: "1980"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802790&coll=portal&dl=ACM"))
      
      (sb:inproceedings
       sb:key: "FriedmanTutorial88"
       sb:author: "Daniel P. Friedman"
       sb:title: "Applications of Continuations: Invited Tutorial"
       sb:booktitle: "1988 Principles of Programming Languages (POPL88)"
       sb:month: "January"
       sb:year: "1988"
       (ps-link "http://www.cs.indiana.edu/hyplan/dfried/appcont.ps")
       (pdf-link "http://www.cs.indiana.edu/hyplan/dfried/appcont.pdf"))
      
      (sb:phdthesis
       sb:key: "Oz:entry18"
       sb:author: "Uwe F. Pleban"
       sb:title: "A Denotational Approach to Flow Analysis and Optimization of SCHEME, A Dialect of LISP"
       sb:number: "Ph.D. Dissertation"
       sb:institution: "University of Kansas"
       sb:year: "1980")
      
      (sb:phdthesis
       sb:key: "PLT:Thesis:Sabry"
       sb:author: "Amr Sabry"
       sb:title: "The Formal Relationship between Direct and Continuation-passing Style Optimizing Compilers: A Synthesis of Two Paradigms"
       sb:school: "Rice University"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/thesis-sabry.ps.gz"))
      
      (sb:techreport
       sb:key: "Oz:entry20"
       sb:author: "Mitchell Wand"
       sb:title: "SCHEME Version 3.1 Reference Manual"
       sb:number: "Computer Science Technical Report 93"
       sb:institution: "Indiana University"
       sb:month: "June"
       sb:year: "1980")
      
      (sb:book
       sb:key: "Slade:book"
       sb:author: "Stephen Slade"
       sb:title: "The T Programming Language: A Dialect of LISP"
       sb:year: "1987"
       sb:publisher: "Prentice-Hall")
      
      (sb:article
       sb:key: "Matthews:JASE2004"
       sb:author: "Jacob Matthews, Robert Bruce Findler, Paul T. Graunke, Shriram Krishnamurthi, Matthias Felleisen"
       sb:title: "Automatically Restructuring Software for the Web"
       sb:journal: "Journal of Automated Software Engineering"
       sb:year: "2004"
       (sb:abstract "This paper explains how to automatically transform a batch program into a standard CGI program. The transformation preserves the program's behavior even if consumers use the back button or the window-cloning facilities of their Web browsers. The paper demonstrates the workings of the transformation for both Scheme and C programs and discusses how it applies to any full-fledged programming language.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/mfgkf-web-restructuring-cps-journal/"))
      
      (sb:techreport
       sb:key: "IU-SR:Gud"
       sb:author: "David Gudeman"
       sb:title: "Representing Type Information in Dynamically Typed Languages"
       sb:institution: "University of Arizona"
       sb:number: "TR 93-27"
       sb:month: "October"
       sb:year: "1993"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/typeinfo.ps.gz"))
      
      (sb:unpublished
       sb:key: "ShiversTHist"
       sb:author: "Olin Shivers"
       sb:title: "History of T"
       sb:year: "2001"
       (sb:link sb:url: "http://www.paulgraham.com/thist.html"
                sb:format: "html"))
      
      (sb:phdthesis
       sb:key: "IUplg:Bur97"
       sb:author: "Robert G. Burger"
       sb:title: "Efficient Compilation and Profile-Driven Dynamic Recompilation in Scheme"
       sb:school: "Indiana University Computer Science Department"
       sb:month: "March"
       sb:year: "1997"
       (ps-link "http://www.cs.indiana.edu/~burger/Dissertation.ps.gz"))
      
      (sb:unpublished
       sb:key: "bender:2004basics"
       sb:author: "Jim Bender"
       sb:title: "WebIt!: Embedding XML, HTML, and CSS in Scheme [Draft]"
       sb:month: "January"
       sb:year: "2004"
       (sb:link sb:url: "http://celtic.benderweb.net/webit/docs/basics/"
                sb:format: "html"))
      
      (sb:article
       sb:key: "Que:Que96d"
       sb:author: "Christian Queinnec and Pierre Weis"
       sb:title: "Programmation applicative, état des lieux et perspectives"
       sb:journal: "Technique et science informatiques"
       sb:number: "15(7)"
       sb:pages: "1009-1013"
       sb:year: "1996"
       (sb:abstract "Après avoir rappelé la lignée des langages de programmation applicative,  nous décrivons les qualités qui font leur succès, en particulier dans  l'enseignement. Nous brossons ensuite leurs perspectives d'avenir et donnons  en annexe une liste des systèmes francophones disponibles.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/langappl.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/langappl.pdf"))
      
      (sb:article
       sb:key: "IU-SR:Ste:93"
       sb:author: "Guy Lewis Steele, Jr. and Richard Gabriel"
       sb:title: "The Evolution of LISP"
       sb:journal: "ACM SIGPLAN Notices, Vol 28(3), 231-270"
       sb:month: "March"
       sb:year: "1993"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/Evolution-of-Lisp.ps.gz"))
      
      (sb:unpublished
       sb:key: "bender:2003micros"
       sb:author: "Jim Bender"
       sb:title: "Advanced Uses of Micros"
       sb:month: "January"
       sb:year: "2003"
       (sb:link sb:url: "http://celtic.benderweb.net/webit/docs/advanced/"
                sb:format: "html"))
      
      (sb:manual
       sb:key: "Oz:entry39"
       sb:title: "MIT Scheme Manual"
       sb:institution: "Massachusetts Institute of Technology"
       sb:month: "March"
       sb:year: "2002"
       (sb:link sb:url: "http://www.swiss.ai.mit.edu/projects/scheme/documentation/scheme.html"
                sb:format: "html"))
      
      (sb:techreport
       sb:key: "IUplg:Bur94"
       sb:author: "Robert G. Burger"
       sb:title: "The Scheme Machine"
       sb:number: "Technical Report 413"
       sb:institution: "Indiana University, Computer Science Department"
       sb:month: "August"
       sb:year: "1994"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/techreports/TR413.ps.Z"))
      
      (sb:article
       sb:key: "Que:Angl95"
       sb:author: "Sophie Anglade, Jean-Jacques Lacrampe and Christian Queinnec"
       sb:title: "Semantics of combinations in scheme"
       sb:journal: "Lisp Pointers"
       sb:number: "7(4)"
       sb:pages: "15-20"
       sb:month: "October-December"
       sb:year: "1995"
       (sb:abstract "This paper presents a denotational semantics for the combinations of the Scheme  language. Scheme leaves unspecified the order of evaluation of the terms of a  combination. Our purpose is to formally and denotationally characterize such  indeterminacy. We achieve this by extending the denotation as well as the  domain of final answers to take into account the various possible orders of  evaluation.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/orleans.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/orleans.pdf"))
      
      (sb:unpublished
       sb:key: "bender:2003xquery"
       sb:author: "Jim Bender"
       sb:title: "(X)Querying XML in Scheme"
       sb:month: "July"
       sb:year: "2003"
       (sb:link sb:url: "http://celtic.benderweb.net/webit/docs/xquery-pre/"
                sb:format: "html"))
      
      (sb:techreport
       sb:key: "IUplg:John00"
       sb:author: "Steven D. Johnson"
       sb:title: "Formal derivation of a scheme computer"
       sb:number: "Technical Report 544"
       sb:institution: "Indiana University Computer Science Department"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/techreports/TR544.ps")
       (pdf-link "ftp://ftp.cs.indiana.edu/pub/techreports/TR544.pdf"))
      
      (sb:inproceedings
       sb:key: "Hopkins:SW2003"
       sb:author: "Peter Walton Hopkins"
       sb:title: "Enabling Complex UI In Web Applications With send/suspend/dispatch"
       sb:booktitle: "Scheme Workshop 2003"
       sb:month: "November"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2003/WebUI.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2003/WebUI.pdf"))
      
      (sb:article
       sb:key: "Que:Que93b"
       sb:author: "Christian Queinnec"
       sb:title: "A library of high-level control operators"
       sb:journal: "Lisp Pointers"
       sb:number: "6(4)"
       sb:pages: "11-26"
       sb:month: "October"
       sb:year: "1993"
       (sb:abstract "Numerous high-level control operators, with various properties, exist in the literature. To understand or compare them is difficult since their  definitions use quite different formal frameworks; moreover, to our  knowledge, no implementation offers them all. This paper tries to explain  control operators by the often simple stack manipulation they perform. We therefore present what we think these operators are, in an executable  framework derived from abstract continuations. This library is published in  the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. For  instance, we do not claim our implementation to be faithful nor we attempt to formally derive these implementations from their original definitions. The goal is to give a flavor of what control operators are, from an implementation point of view. Last but worth to say, all errors are mine.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/contlib.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/contlib.pdf"))
      
      (sb:article
       sb:key: "Lisovsky2003RDLJd"
       sb:author: "Kirill Lisovsky, Dmitry Lizorkin"
       sb:title: "XSLT and XLink and their implementation with functional techniques"
       sb:journal: "Russian Digital Libraries Journal"
       sb:year: "2003"
       sb:number: "Vol. 6 - No 5"
       (sb:link sb:url: "http://www.elbib.ru/index.phtml?page=elbib/eng/journal/2003/part5/LL"
                sb:format: "html"))
      
      (sb:inproceedings
       sb:key: "Normark2003ILC"
       sb:author: "Kurt Nørmark"
       sb:title: "XML Transformation in Scheme with LAML - a Minimalistic Approach"
       sb:month: "October"
       sb:year: "2003"
       sb:booktitle: "International Lisp Conference 2003"
       (ps-link "http://www.cs.auc.dk/~normark/laml/papers/xml-transformations.ps")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/xml-transformations.pdf"))
      
      (sb:article
       sb:key: "Lisovsky2003RDLJc"
       sb:author: "Kirill Lisovsky, Dmitry Lizorkin"
       sb:title: "XML Path Language (XPath) and its functional implementation SXPath"
       sb:journal: "Russian Digital Libraries Journal"
       sb:year: "2003"
       sb:number: "Vol. 6 - No 4"
       (sb:link sb:url: "http://www.elbib.ru/index.phtml?page=elbib/eng/journal/2003/part4/LL"
                sb:format: "html"))
      
      (sb:inproceedings
       sb:key: "Que:Que92c"
       sb:author: "Christian Queinnec"
       sb:title: "Value transforming style"
       sb:booktitle: "WSA '92--Workshop on Static Analysis"
       sb:month: "September"
       sb:year: "1992"
       (sb:abstract "A new program transformation is presented that allows to remove control operators related to partial continuations. The basis for the transformation is to adopt an improved representation for continuations that makes frames  apparent. Various examples of control operators with or without dynamic extent stress are presented."))
      
      (sb:inproceedings
       sb:key: "Lisovsky2002AFP"
       sb:author: "Kirill Lisovsky"
       sb:title: "Scheme-based XML Application Server"
       sb:booktitle: "Workshop on Advanced Functional Programming (AFP'2002)"
       sb:month: "August"
       sb:year: "2002")
      
      (sb:unpublished
       sb:key: "Bridgen2003:RealWorld"
       sb:author: "Michael Bridgen, Noel Welsh, Matthias Radestock"
       sb:title: "Scheme in The Real World: A Case Study"
       sb:month: "August"
       sb:year: "2003"
       (pdf-link "http://schematics.sourceforge.net/scheme-london/nmk-case-study.pdf"))
      
      (sb:techreport
       sb:key: "Que:Que92d"
       sb:author: "Christian Queinnec"
       sb:title: "Value transforming style"
       sb:number: "Research Report LIX RR 92/07"
       sb:institution: "Laboratoire d'Informatique de l'École Polytechnique"
       sb:month: "May"
       sb:year: "1992"
       (sb:abstract "A new program transformation is presented that allows to remove control operators related to partial continuations. The basis for the transformation is to adopt an improved representation for continuations that makes frames  apparent. Various examples of control operators with or without dynamic extent stress are presented.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/vts.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/vts.pdf"))
      
      (sb:unpublished
       sb:key: "Nor:2003b"
       sb:author: "Kurt Nørmark"
       sb:title: "Web Programming in Scheme with LAML"
       sb:month: "April"
       sb:year: "2003"
       (ps-link "http://www.cs.auc.dk/~normark/laml/papers/web-programming-laml.ps")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/web-programming-laml.pdf"))
      
      (sb:phdthesis
       sb:key: "GraunkePhdThesis"
       sb:author: "Paul T. Graunke"
       sb:title: "Web Interactions"
       sb:school: "Northeastern University"
       sb:year: "2003"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/thesis-graunke.ps.gz")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/thesis-graunke.pdf"))
      
      (sb:inproceedings
       sb:key: "Oleg:PADL2003"
       sb:author: "Oleg Kiselyov and Shriram Krishnamurthi"
       sb:title: "SXSLT: Manipulation Language for XML"
       sb:booktitle: "Practical Aspects of Declarative Languages (PADL'03)"
       sb:month: "January"
       sb:year: "2003"
       (sb:abstract "The growing use of XML languages has spurred the demand for means to transform XML documents. Many XML transformation systems are, however, limited in their expressive power, and fail to provide a useful collection of combinators for several tasks."
                    (h4:p)
                    "This paper describes SXSLT, a practical, higher-order, concise, expressive and readable declarative XML transformation language. The language is a head-first rewriting system over abstract XML syntax trees, implemented as a library extension of Scheme. SXSLT features local scoping of re-writing ``templates'', first-class stylesheets, flexible traversal strategies, the ability to re-traverse the original or the transformed trees. The language can emulate XSLT in whole or in part, in a more coherent and expressive manner. By virtue of being a Scheme library, SXSLT is seamlessly integrated with Scheme."
                    (h4:p)
                    "We illustrate the power of SXSLT with several examples abstracted from practical projects. We and other people have used SXSLT for over two years for real-life projects, ranging from authoring of static and dynamic Web pages to content-distribution engines. Our experience and user comments show that SXSLT is expressive and easy to use. We argue that this outcome is a consequence of SXSLT providing right abstractions for XML transformations, of being higher-order, declarative and extensible.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/kk-sxslt/")
       (sb:link sb:url: "http://okmij.org/ftp/papers/SXSLT-talk.pdf"
                sb:format: "slides"))
      
      (sb:article
       sb:key: "Dyb:Dyb:90a"
       sb:author: "R. Kent Dybvig and Robert Hieb"
       sb:title: "A New Approach to Procedures with Variable Arity"
       sb:journal: "Lisp and Symbolic Computation"
       sb:volume: "3, 3"
       sb:pages: "229-244"
       sb:month: "September"
       sb:year: "1990"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/arity.ps"))
      
      (sb:inproceedings
       sb:key: "Shriram:PADL2003"
       sb:author: "Shriram Krishnamurthi"
       sb:title: "The Continue Server (or, How I Administered PADL 2002 and 2003)"
       sb:booktitle: "Practical Aspects of Declarative Languages (PADL'03)"
       sb:month: "January"
       sb:year: "2003"
       (sb:abstract "Conference paper submission and reviewing is an increasingly electronic activity. Paper authors and program committee members expect to be able to use software, especially with Web interfaces, to simplify and even automate many activities.Building interactive Web sites is a prime target of opportunity for sophisticated declarative programming languages.This paper describes the PLT Scheme application CONTINUE, which automates many conference paper management tasks.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/sk-continue/"))
      
      (sb:inproceedings
       sb:key: "Oleg:SXs2002"
       sb:author: "Oleg Kiselyov and Kirill Lisovsky"
       sb:title: "XML, XPath, XSLT implementations as SXML, SXPath, and SXSLT"
       sb:booktitle: "International Lisp Conference (2002)"
       sb:month: "September"
       sb:year: "2002"
       (pdf-link "http://okmij.org/ftp/papers/SXs.pdf")
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/papers/SXs-talk.pdf"
                sb:format: "talk (pdf)"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag87"
       sb:author: "Suresh Jagannathan, David Gelernter and Tom London"
       sb:title: "Environments as First-Class Objects"
       sb:booktitle: "ACM Conference on Principles of Programming Languages (POPL87)"
       sb:month: "January"
       sb:year: "1987"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/popl87.ps.gz"))
      
      (sb:unpublished
       sb:key: "LAML:Nor02c"
       sb:author: "Kurt Nørmark"
       sb:title: "XML in LAML - Web Programming in Scheme"
       sb:month: "August"
       sb:year: "2002"
       (ps-link "http://www.cs.auc.dk/~normark/laml/papers/xmlinlaml-paper.ps")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/xmlinlaml-paper.pdf"))
      
      (sb:techreport
       sb:key: "LMor:Mor96a"
       sb:author: "Luc Moreau"
       sb:title: "A Syntactic Theory of Dynamic Binding"
       sb:number: "Technical Report M96/4"
       sb:institution: "University of Southampton"
       sb:year: "1996"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/dyn.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry69"
       sb:author: "Kevin J. Lang and Barak A. Pearlmutter"
       sb:title: "Oaklisp: an Object-Oriented Scheme with First Class Types"
       sb:journal: "ACM Conference on Object-Oriented Systems, Programming, Languages and Applications"
       sb:pages: "30-37"
       sb:month: "September"
       sb:year: "1986"
       (sb:abstract "The Scheme papers demonstrated that lisp could be made simpler  and more expressive by elevating functions to the level of first class  objects.  Oaklisp  shows that  a message based language can derive  similar benefits from having first class types.")
       (pdf-link "http://repository.readscheme.org/ftp/papers/pearlmutter/oaklisp-oopsla-1986.pdf")
       (acmdl-link "http://portal.acm.org/citation.cfm?id=28701&coll=portal&dl=ACM"))
      
      (sb:inproceedings
       sb:key: "Felleisen:AFP2002"
       sb:author: "Matthias Felleisen"
       sb:title: "Developing Interactive Web Programs"
       sb:booktitle: "Summer School on Advanced Functional Programming 2002"
       sb:month: "August"
       sb:year: "2002"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/afp2002-f.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Wittenberger:Rome2002"
       sb:author: "Jörg F. Wittenberger"
       sb:title: "Askemos - a distributed settlement"
       sb:booktitle: "SSGRR2002"
       sb:year: "2002"
       (pdf-link "http://www.askemos.org:9080/RomePaper.pdf"))
      
      (sb:phdthesis
       sb:key: "PLT:Thesis:Wri"
       sb:author: "Andrew K. Wright"
       sb:title: "Practical Soft Typing"
       sb:school: "Rice University"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/thesis-wright.ps.gz"))
      
      (sb:techreport
       sb:key: "Oz:entry70"
       sb:author: "William D. Clinger"
       sb:title: "The Scheme of things:  Streams versus Generators"
       sb:number: "Technical Report"
       sb:institution: "Tektronix, Inc."
       sb:year: "1987")
      
      (sb:inproceedings
       sb:key: "LMor:Mor94c"
       sb:author: "Luc Moreau and Christian Queinnec"
       sb:title: "Partial Continuations as the Difference of Continuations"
       sb:booktitle: "International Conference on Programming Language Implementation and Logic Programming (PLILP'94)"
       sb:number: "number 844 in Lecture Notes in Computer Science"
       sb:pages: "182-197"
       sb:month: "September"
       sb:year: "1994"
       (sb:abstract "We propose to define a partial continuation as the difference of two  continuations. We exhibit several places where design choices can be made and  the influence they have on the extent during which partial continuations can  be reified. In particular, we characterise a notion of extent underlying this  model of partial continuation that we call weak prefixal extent.  Then, the semantics of partial continuations is formalised in a  context-rewriting system and in a cps translation, both proved to be  equivalent. This notion of partial continuation is intuitive, it avoids the  complexity of hierarchies of control operators and it is more expressive than  others. We illustrate these qualities with some new realistic examples.")
       ;(ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/plilp94.ps.gz")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/pc.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/pc.pdf"))
      
      (sb:phdthesis
       sb:key: "bcsmith:phdthesis"
       sb:author: "Brian Cantwell Smith"
       sb:title: "Reflection and Semantics in a Procedural Language"
       sb:school: "Massachusetts Institute of Technology"
       sb:number: "MIT-LCS-TR-272"
       sb:month: "January"
       sb:year: "1982"
       (pdf-link "http://repository.readscheme.org/ftp/papers/bcsmith-thesis.pdf"))
      
      (sb:inproceedings
       sb:key: "Danvy-Malmkjaer:LFP88"
       sb:author: "Olivier Danvy and Karoline Malmkjær"
       sb:title: "Intensions and Extensions in a Reflective Tower"
       sb:booktitle: "Lisp and Functional Programming (LFP'88)"
       sb:year: "1988"
       (ps-link "http://www.daimi.au.dk/~danvy/Papers/danvy-malmkjaer-LFP88.ps.gz"))
      
      (sb:article
       sb:key: "Cli:91a"
       sb:author: "William D. Clinger"
       sb:title: "Macros in Scheme"
       sb:journal: "Lisp Pointers"
       sb:number: "IV(4)"
       sb:pages: "25-28"
       sb:month: "December"
       sb:year: "1991"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/prop/macinsch.ps.gz"))
      
      (sb:techreport
       sb:key: "Oz:entry30"
       sb:author: "Carol Fessenden, William D. Clinger, Daniel P. Friedman and Christopher T. Haynes"
       sb:title: "Scheme 311 version 4 Reference Manual"
       sb:number: "Computer Science Technical Report 137"
       sb:institution: "Indiana University"
       sb:month: "February"
       sb:year: "1983")
      
      (sb:inproceedings
       sb:key: "danvy-schultz:pepm97"
       sb:author: "Olivier Danvy and Ulrik Pagh Schultz"
       sb:title: "Lambda-dropping: transforming recursive equations into programs with block structure"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM'97)"
       sb:month: "June"
       sb:year: "1997"
       (acmdl-link "http://doi.acm.org/10.1145/258993.259007"))
      
      (sb:inproceedings
       sb:key: "Pinto:SW2003"
       sb:author: "Pedro Pinto"
       sb:title: "Dot-Scheme: A PLT Scheme FFI for the .NET framework"
       sb:booktitle: "Scheme Workshop 2003"
       sb:month: "November"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2003/Dot-Scheme.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2003/Dot-Scheme.pdf"))
      
      (sb:article
       sb:key: "danvy-schultz:tcs2000"
       sb:author: "Olivier Danvy and Ulrik Pagh Schultz"
       sb:title: "Lambda-Dropping: Transforming Recursive Equations into Programs with Block Structure"
       sb:journal: "Theoretical Computer Science"
       sb:volume: "Volume 248/1-2"
       sb:month: "November"
       sb:year: "2000"
       (ps-link "http://www.daimi.au.dk/~ups/papers/tcs00.ps.gz")
       (pdf-link "http://www.daimi.au.dk/~ups/papers/tcs00.pdf"))
      
      (sb:inproceedings
       sb:key: "Sitaram:SW2003b"
       sb:author: "Dorai Sitaram"
       sb:title: "Porting Scheme Programs"
       sb:booktitle: "Scheme Workshop 2003"
       sb:month: "November"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2003/Scmxlate.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2003/Scmxlate.pdf"))
      
      (sb:techreport
       sb:key: "Oz:entry13"
       sb:author: "Uwe F. Pleban"
       sb:title: "The Standard Semantics of a Subset of SCHEME, a Dialect of LISP"
       sb:number: "Computer Science Technical Report TR-79-3"
       sb:institution: "University of Kansas"
       sb:month: "July"
       sb:year: "1979")
      
      (sb:phdthesis
       sb:key: "Malmkjaer:phd93"
       sb:author: "Karoline Malmkjær"
       sb:title: "Abstract Interpretation of Partial-Evaluation Algorithms"
       sb:school: "Kansas State University"
       sb:year: "1993"
       (ps-link "http://repository.readscheme.org/ftp/papers/malmkjaer-phdthesis.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/malmkjaer-phdthesis.pdf"))
      
      (sb:techreport
       sb:key: "Wu:SBThesis"
       sb:author: "Henry M. Wu"
       sb:title: "Scheme 86: An Architecture for Microcoding a Scheme Interpreter"
       sb:number: "AIM-953"
       sb:institution: "Massachusetts Institute of Technology"
       sb:month: "August"
       sb:year: "1988"
       (sb:abstract "I describe the design and implementation plans for a computer that is optimized as a microcoded interpreter for Scheme. The computer executes SCode, a typed-pointer representation. The memory system has low- latency as well as high throughput. Multiple execution units in the processor complete complex operations in less than one memory cycle, allowing efficient use of memory bandwidth. The processor provides hardware support for tagged data objects and runtime type checking. I will discuss the motivation for this machine, its architecture, why it can interpret Scheme efficiently, and the computer-aided design tools developed for building this computer.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-953.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-953.pdf"))
      
      (sb:techreport
       sb:key: "JScm:Hick2002"
       sb:author: "Timothy J. Hickey"
       sb:title: "Incorporating Scheme-based Web Programmming into Computer Literacy Courses"
       sb:month: "April"
       sb:year: "2002"
       sb:institution: "Brandeis University"
       sb:number: "CS-02-224"
       (ps-link "http://www.cs.brandeis.edu/~tim/Papers/icfp2002.ps.gz")
       (pdf-link "http://www.cs.brandeis.edu/~tim/Papers/icfp2002.pdf"))
      
      (sb:mastersthesis
       sb:key: "Wu:MSThesis"
       sb:author: "Henry M. Wu"
       sb:title: "Performance Evaluation of the Scheme 86 and HP Precision Architecture"
       sb:number: "AITR-1103"
       sb:school: "Massachusetts Institute of Technology"
       sb:month: "April"
       sb:year: "1989"
       (sb:abstract "The Scheme86 and the HP Precision Architectures represent different trends in computer processor design. The former uses wide micro-instructions, parallel hardware, and a low latency memory interface. The latter encourages pipelined implementation and visible interlocks. To compare the merits of these approaches, algorithms frequently encountered in numerical and symbolic computation were hand-coded for each architecture. Timings were done in simulators and the results were evaluated to determine the speed of each design. Based on these measurements, conclusions were drawn as to which aspects of each architecture are suitable for a high-performance computer.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-1103.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-1103.pdf"))
      
      (sb:techreport
       sb:key: "JScm:Hick2001"
       sb:author: "Timothy J. Hickey"
       sb:title: "Jscheme Web Programming for CS0"
       sb:month: "January"
       sb:year: "2002"
       sb:institution: "Brandeis University"
       sb:number: "CS-02-223"
       (ps-link "http://www.cs.brandeis.edu/~tim/Papers/sigcse-jscheme.ps"))
      
      (sb:unpublished
       sb:key: "glenstrup:implnotes"
       sb:author: "Arne J. Glenstrup"
       sb:title: "Implementation Notes for the Termination-Guaranteeing Binding-Time Analysis"
       sb:month: "December"
       sb:year: "2002"
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/pgg-sct-impl-details.pdf"))
      
      (sb:inproceedings
       sb:key: "Jones:Mix10Yr"
       sb:author: "Neil D. Jones"
       sb:title: "MIX Ten Years Later"
       sb:booktitle: "Partial Evaluation and Program Manipulation (PEPM '95)"
       sb:year: "1995"
       (ps-link "ftp://ftp.diku.dk/diku/semantics/papers/D-255.ps.gz"))
      
      (sb:inproceedings
       sb:key: "cq:sw2002"
       sb:author: "Christian Queinnec"
       sb:title: "A library for quizzes"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (sb:abstract "Programming web dialogs is already known to be well served by continuations;  this paper presents a continuation-based library for a particular class of  web dialogs: quizzes for students. The library is made of objects  representing the individual questions and of functional combinators hiding  the imperative aspects of page shipping over HTTP and management of  continuations. Mixing these three styles provide an elegant framework that  fulfills our initial goal. The description of that library is hoped to be  helpful for quizzes designers.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2002/queinnec-quizzes.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2002/queinnec-quizzes.pdf"))
      
      (sb:inproceedings
       sb:key: "Danvy:Marktoberdorf99"
       sb:author: "Olivier Danvy"
       sb:title: "Programming Techniques for Partial Evaluation"
       sb:booktitle: "Marktoberdorf 1999"
       sb:month: "January"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/brics/danvy-ln.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/brics/danvy-ln.pdf"))
      
      (sb:techreport
       sb:key: "Que:Que2001a"
       sb:author: "Christian Queinnec"
       sb:title: "Inverting back the inversion of control or, continuations versus page-centric programming"
       sb:number: "Technical Report 7, LIP6"
       sb:month: "May"
       sb:year: "2001"
       (sb:abstract "Our thesis is that programming web applications with continuations is superior  to the current page-centric technology. A continuation is a program-level  manageable value representing the rest of the computation of the program. \"What to do next\" is precisely what has to be explicitly encoded in order  to program non trivial web interactions. Continuations allow web applications  to be written in direct style that is, as a single program that displays  forms and reads form submission since continuations automatically capture  everything (control point, lexical bindings, etc.) that is needed to resume  the computation. Programming is therefore safer, easier and more re-usable.")
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/www.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/www.pdf"))
      
      (sb:article
       sb:key: "Danvy:IPL1991"
       sb:author: "Olivier Danvy"
       sb:title: "Semantics-Directed Compilation of Non-Linear Patterns"
       sb:journal: "Information Processing Letters"
       sb:volume: "Vol. 37"
       sb:pages: "315-322"
       sb:month: "March"
       sb:year: "1991"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/danvy/Papers/danvy-ipl91.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que2000a"
       sb:author: "Christian Queinnec"
       sb:title: "The influence of browsers on evaluators or, continuations to program web servers"
       sb:booktitle: "ICFP '2000 - International Conference on Functional Programming"
       sb:pages: "23-33"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/webcont.ps.gz"))
      
      (sb:article
       sb:key: "LMor:Mich99"
       sb:author: "Danius Michaelides, Luc Moreau and David DeRoure"
       sb:title: "A Uniform Approach to Programming the World Wide Web"
       sb:journal: "Computer Systems Science and Engineering"
       sb:number: "14(2):69-91"
       sb:year: "1999"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/pWWW.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Matthews:RTA2004"
       sb:author: "Jacob Matthews, Robert Bruce Findler, Matthew Flatt, Matthias Felleisen"
       sb:title: "A Visual Environment for Developing Context-Sensitive Term Rewriting Systems"
       sb:booktitle: "International Conference on Rewriting Techniques and Applications (RTA2004)"
       sb:year: "2004"
       (pdf-link "http://people.cs.uchicago.edu/~robby/pubs/papers/rta2004-mfff.pdf"))
      
      (sb:article
       sb:key: "Oz:entry75"
       sb:author: "Matthias Felleisen, Daniel P. Friedman, Eugene E. Kohlbecker and Bruce F. Duba"
       sb:title: "A Syntactic Theory of Sequential Control"
       sb:journal: "Theoretical Computer Science"
       sb:volume: "52"
       sb:pages: "205-237"
       sb:year: "1987")
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Cle:01a"
       sb:author: "John Clements, Paul T. Graunke, Shriram Krishnamurthi and Matthias Felleisen"
       sb:title: "Little Languages and their Programming Environments"
       sb:booktitle: "Proceedings of Monterey Workshop 2001"
       sb:year: "2001"
       (sb:abstract "Programmers constantly design, implement, and program in little languages. Two different approaches to the implementation of little languages have evolved. One emphasizes the design of little languages from scratch, using conventional technology to implement interpreters and compilers. The other advances the idea of extending a general-purpose host language; that is, the little language shares the host language'ss features (variables, data, loops, functions) where possible; its interpreters and compilers; and even its type soundness theorem. The second approach is often called a language embedding."
                    (h4:p)
                    "This paper directs the attention of little language designers to a badly neglected area: the programming environments of little languages. We argue that an embedded little language should inherit not only the host language's syntactic and semantic structure, but also its programming environment."
                    (h4:p)
                    "We illustrate the idea with our DrScheme programming environment and S-XML, a little transformation language for XML trees. DrScheme provides a host of tools for Scheme: a syntax analysis tool, a static debugger, an algebraic stepper, a portable plugin system, and an interactive evaluator. S-XML supports the definition of XML languages using a simple form of schemas, the convenient creation of XML data, and the definition of XML transformations."
                    (h4:p)
                    "The S-XML embedding consists of two parts: a library of functions and a set of syntactic extensions. The elaboration of a syntactic extension into core Scheme preserves the information necessary to report the results of an analysis or of a program evaluation at the source level. As a result, all of DrScheme's tools are naturally extended to the embedded language. The process of embedding the S-XML language into Scheme directly creates a full-fledged S-XML environment."
                    (h4:p)
                    "We believe that this method of language implementation may be generalized to other languages and other environments, and represents a substantial improvement upon current practice.")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/mw01-cgkf.pdf"))
      
      (sb:techreport
       sb:key: "Oz:entry79"
       sb:author: "Bruce F. Duba, Matthias Felleisen and Daniel P. Friedman"
       sb:title: "Dynamic Identifiers can be Neat"
       sb:number: "Computer Science Technical Report No. 220"
       sb:institution: "Indiana University"
       sb:month: "April"
       sb:year: "1987")
      
      (sb:techreport
       sb:key: "PLT:TR:99-350"
       sb:author: "John Clements, Shriram Krishnamurthi, Matthias Felleisen"
       sb:title: "Little Languages and their Programming Environments "
       sb:number: "TR 99-350"
       sb:institution: "Rice University"
       sb:year: "1999"
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/tr99-350.pdf.gz")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tr99-350.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Kri:00"
       sb:author: "Shriram Krishnamurthi, Kathryn E. Gray and Paul T. Graunke"
       sb:title: "Transformation-by-Example for XML"
       sb:booktitle: "Practical Aspects of Declarative Languages (PADL 2000)"
       sb:year: "2000"
       (sb:abstract "XML is a language for describing markup languages for structured data. A growing number of applications that process XML documents are transformers, i.e., programs that convert documents between XML languages. Unfortunately, the current proposals for transformers are complex general-purpose languages, which will be unappealing as the XML user base broadens and thus decreases in technical sophistication. We have designed and implemented XT3D, a highly declarative XML specification language. It demands little more from users than a knowledge of the expected input and desired output. We illustrate the power of XT3D with several examples, including one reminiscent of polytypic programming that greatly simplifies the import of XML values into general-purpose languages.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/kgg-xt3d/"))
      
      (sb:article
       sb:key: "LAML:Nor:99a"
       sb:author: "Kurt Nørmark"
       sb:title: "Programming World Wide Web pages in Scheme"
       sb:journal: "Sigplan Notices"
       sb:number: "vol. 34, no. 12"
       sb:year: "1999"
       (ps-link "http://www.cs.auc.dk/~normark/laml/papers/sigplan-paper.ps")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/sigplan-paper.pdf"))
      
      (sb:article
       sb:key: "Felleisen:DDJ2004b"
       sb:author: "Matthias Felleisen, Robert Bruce Findler, Matthew Flatt and Shriram Krishnamurthi"
       sb:title: "Building Little Languages with Macros"
       sb:journal: "Dr. Dobb's Journal"
       sb:month: "April"
       sb:year: "2004"
       (sb:link sb:url: "http://www.ddj.com/documents/ddj0404g/"
                sb:format: "Dr. Dobbs"))
      
      (sb:phdthesis
       sb:key: "Oz:entry81"
       sb:author: "Matthias Felleisen"
       sb:title: "The Calculi of Lambda-v-CS Conversion: A Syntactic Theory of Control And State in Imperative Higher-Order Programming Languages"
       sb:number: "Computer Science Technical Report 226. (Ph.D. Dissertation)"
       sb:institution: "Indiana University"
       sb:month: "August"
       sb:year: "1987"
       (pdf-link "http://repository.readscheme.org/ftp/papers/felleisen_pdhthesis.pdf"))
      
      (sb:article
       sb:key: "Wang:IPL1990"
       sb:author: "Ching-Lin Wang"
       sb:title: "Obtaining Lazy Evaluation with Continuations in Scheme"
       sb:journal: "Information Processing Letters"
       sb:volume: "Vol. 35"
       sb:pages: "93-97"
       sb:year: "1990")
      
      (sb:inproceedings
       sb:key: "LAML:Nor:99b"
       sb:author: "Kurt Nørmark"
       sb:title: "Using Lisp as a Markup Language -- The LAML Approach"
       sb:booktitle: "European Lisp User Group Meeting, Amsterdam"
       sb:year: "1999"
       (ps-link "http://www.cs.auc.dk/~normark/laml/papers/lugm-laml.ps")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/lugm-laml.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry85"
       sb:author: "Matthias Felleisen and Daniel P. Friedman"
       sb:title: "A Calculus for Assignments in Higher-Order Languages"
       sb:booktitle: "Conference Record of the 14th Annual ACM Symposium on Principles of Programming Languages"
       sb:pages: "314-345"
       sb:month: "January"
       sb:year: "1987"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=41654&dl=Portal"))
      
      (sb:inproceedings
       sb:key: "LAML:Nor:00"
       sb:author: "Kurt Nørmark"
       sb:title: "A Suite of WWW-based Tools for Advanced Course Management"
       sb:booktitle: "Innovation and Technology in Computer Science Education (ITiCSE, Finland)"
       sb:month: "July"
       sb:year: "2000"
       (ps-link "http://www.cs.auc.dk/~normark/laml/papers/educational-applications/www-education-paper.zip")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/educational-applications/www-education-paper.pdf"))
      
      (sb:inbook
       sb:key: "Oz:entry42"
       sb:author: "William D. Clinger, Daniel P. Friedman and Mitchell Wand"
       sb:title: "A Scheme for a Higher-Level Semantic Algebra"
       sb:booktitle: "Algebraic Methods in Semantics"
       sb:pages: "237-250"
       sb:publisher: "Cambridge University Press"
       sb:year: "1985")
      
      (sb:techreport
       sb:key: "Oz:entry86"
       sb:author: "Matthias Felleisen and Daniel P. Friedman"
       sb:title: "A Syntactic Theory of Sequential State"
       sb:number: "Computer Science Dept. Technical Report 230"
       sb:institution: "Indiana University"
       sb:month: "October"
       sb:year: "1987")
      
      (sb:inproceedings
       sb:key: "LAML:Nor02a"
       sb:author: "Kurt Nørmark"
       sb:title: "Programmatic WWW authoring using Scheme and LAML"
       sb:booktitle: "WWW2002: The Eleventh International World Wide Web Conference"
       sb:month: "March"
       sb:year: "2002"
       (sb:link sb:url: "http://www.cs.auc.dk/~normark/laml/papers/www2002/p296-normark.html"
                sb:format: "html"))
      
      (sb:article
       sb:key: "Oz:entry60"
       sb:author: "Matthias Felleisen and Daniel P. Friedman"
       sb:title: "Control operators, the SECD-machine, and the lambda-calculus"
       sb:journal: "3rd Working Conference on the Formal Description of Programming Concepts"
       sb:pages: "193-219"
       sb:month: "August"
       sb:year: "1986")
      
      (sb:techreport
       sb:key: "vlisp:faithfullness"
       sb:author: "William M. Farmer, Joshua D. Guttman, Leonard G. Monk, John D. Ramsdell, Vipin Swarup"
       sb:title: "Faithfulness of the VLISP Operational Semantics"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/faithfulness.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/faithfulness.pdf"))
      
      (sb:unpublished
       sb:key: "LAML:Nor01b"
       sb:author: "Kurt Nørmark"
       sb:title: "WEB Based Lecture Notes - The LENO Approach"
       sb:month: "November"
       sb:year: "2001"
       (ps-link "http://www.cs.auc.dk/~normark/laml/papers/leno/submission/paper.zip")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/leno/submission/paper.pdf"))
      
      (sb:article
       sb:key: "Oz:entry96"
       sb:author: "William D. Clinger"
       sb:title: "Semantics of Scheme"
       sb:journal: "BYTE"
       sb:pages: "221-227"
       sb:month: "February"
       sb:year: "1988")
      
      (sb:inproceedings
       sb:key: "Oleg:Oleg00a"
       sb:author: "Oleg Kiselyov"
       sb:title: "XML and Scheme"
       sb:booktitle: "A micro-talk presentation at a Workshop on Scheme and Functional Programming 2000"
       sb:month: "September"
       sb:year: "2000"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Scheme/SXML-short-paper.html"
                sb:format: "html"))
      
      (sb:inproceedings
       sb:key: "Oz:entry98"
       sb:author: "R. Kent Dybvig and Robert Hieb"
       sb:title: "A Variable-Arity Procedural Interface"
       sb:booktitle: "Proceedings of the 1988 ACM Symposium on LISP and Functional Programming"
       sb:pages: "106-115"
       sb:month: "July"
       sb:year: "1988"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=62689&coll=Portal"))
      
      (sb:inproceedings
       sb:key: "Nor:2003a"
       sb:author: "Kurt Nørmark"
       sb:title: "The duality of XML Markup and Programming notation"
       sb:booktitle: "IADIS WWW/Internet 2003"
       sb:month: "November"
       sb:year: "2003"
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/duality-xml-prog.pdf"))
      
      (sb:techreport
       sb:key: "vlisp:preschemerevised"
       sb:author: "John D. Ramsdell"
       sb:title: "The Revised VLISP PreScheme Front End"
       sb:institution: "MITRE Corporation"
       sb:month: "August"
       sb:year: "1993"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/preschemerevised.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/preschemerevised.pdf"))
      
      (sb:article
       sb:key: "Oz:entry103"
       sb:author: "Kevin J. Lang and Barak A. Pearlmutter"
       sb:title: "Oaklisp: an Object-Oriented Dialect of Scheme"
       sb:journal: "Lisp and Symbolic Computation: An International Journal"
       sb:volume: "1"
       sb:number: "1"
       sb:publisher: "Kluwer Academic Publishers"
       sb:pages: "39-51"
       sb:month: "May"
       sb:year: "1988"
       (sb:abstract "This paper contains a description of Oaklisp, a dialect of Lisp incorporating lexical scoping, multiple inheritance, and first-class types. This description is followed by a revisionist history of the Oaklisp design, in which a crude map of the space of object-oriented Lisps is drawn and some advantages of first-class types are explored. Scoping issues are discussed, with a particular emphasis on instance variables and top-level namespaces. The question of which should come first, the lambda or the object, is addressed, with Oaklisp providing support for the latter approach.")
       (ps-link "http://repository.readscheme.org/ftp/papers/pearlmutter/lasc-oaklisp-1988.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/pearlmutter/lasc-oaklisp-1988.pdf"))
      
      (sb:article
       sb:key: "LMor:Mor98e"
       sb:author: "Luc Moreau"
       sb:title: "A Syntactic Theory of Dynamic Binding"
       sb:journal: "Higher-Order and Symbolic Computation"
       sb:number: "11(3):233-279"
       sb:month: "December"
       sb:year: "1998")
      
      (sb:techreport
       sb:key: "vlisp:pureprescheme"
       sb:author: "Dino P. Oliva and Mitchell Wand"
       sb:title: "A Verifed Compiler for Pure PreScheme"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/pureprescheme.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/pureprescheme.pdf"))
      
      (sb:article
       sb:key: "FFFK:2003CSE"
       sb:author: "Matthias Felleisen, Robert Bruce Findler, Matthew Flatt and Shriram Krishnamurthi"
       sb:title: "The TeachScheme! Project: Computing and Programming for Every Student"
       sb:year: "2004"
       sb:journal: "Computer Science Education"
       (sb:abstract "The TeachScheme! Project aims to reform three aspects of introductory programming courses in secondary schools. First, we use a design method that asks students to develop programs in a stepwise fashion such that each step produces a well-specified intermediate product. Second, we use an entire series of programming languages, not just one. Each element of the series introduce students to specific linguistic mechanisms and thus represents a cognitive development environment that was specifically developed for beginners. This paper presents the project's premises, the details of its innovations, and a preliminary experience report.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/cse2003-fffk-final.ps")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/cse2003-fffk-final.pdf"))
      
      (sb:article
       sb:key: "Oz:entry114"
       sb:author: "Alain Deutsch, Renaud Dumeur, Charles Consel and Jean-Daniel Fekete"
       sb:title: "CSKIM: An Extended Dialect of Scheme"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:article
       sb:key: "Oz:entry117"
       sb:author: "Guy Lapalme and Marc Feeley"
       sb:title: "Micro-Scheme"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:article
       sb:key: "Oz:entry129"
       sb:author: "John Franco and Daniel P. Friedman"
       sb:title: "Towards A Facility for Lexically Scoped, Dynamic Mutual Recursion in Scheme"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "15"
       sb:number: "1"
       sb:pages: "55-64"
       sb:publisher: "Pergamon Press"
       sb:year: "1990")
      
      (sb:inproceedings
       sb:key: "SW00:Kis"
       sb:author: "Oleg Kiselyov"
       sb:title: "Implementing Metcast in Scheme"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "23"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/oleg.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/oleg.pdf"))
      
      (sb:article
       sb:key: "Oz:entry130"
       sb:author: "John Franco, Daniel P. Friedman and Steven D. Johnson"
       sb:title: "Multi-way Streams in Scheme"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "15"
       sb:number: "2"
       sb:pages: "109-125"
       sb:year: "1990"
       (ps-link "http://gauss.ececs.uc.edu/Reports/limptop.ps"))
      
      (sb:manual
       sb:key: "BRL:manual-0601"
       sb:author: "Bruce R. Lewis"
       sb:title: "BRL: A database-oriented language to embed in HTML and other markup"
       sb:month: "June"
       sb:year: "2001"
       (pdf-link "http://brl.sourceforge.net/brl.pdf"))
      
      (sb:inbook
       sb:key: "Ser:Ser:97b"
       sb:author: "Jan Vitek, Manuel Serrano and Dimitri Thanos"
       sb:title: "Security and Communication in Mobile Object Systems"
       sb:booktitle: "Mobile Object Systems"
       sb:year: "1997"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/scmos97.ps.gz"))
      
      (sb:inproceedings
       sb:key: "FriedmanRaymond:SW2003"
       sb:author: "Alexander Friedman and Jamie Raymond"
       sb:title: "PLoT Scheme"
       sb:booktitle: "Scheme Workshop 2003"
       sb:month: "November"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2003/PLoTScheme.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2003/PLoTScheme.pdf"))
      
      (sb:article
       sb:key: "Oz:entry133"
       sb:author: "Dorai Sitaram and Matthias Felleisen"
       sb:title: "Control Delimiters and Their Hierarchies"
       sb:journal: "Lisp and Symbolic Computation: An International Journal"
       sb:volume: "3"
       sb:number: "1"
       sb:publisher: "Kluwer Academic Publishers"
       sb:pages: "67-99"
       sb:month: "January"
       sb:year: "1990"
       (sb:abstract "Since control operators for the unrestricted transfer of control are too powerful in many situations, we propose the control delimiter as a means for restricting control manipulations and study its use in Lisp- and Scheme-like languages. In a Common Lisp-like setting, the concept of delimiting control provides a well-suited terminology for explaining different control constructs. For higher-order languages like Scheme, the control delimiter is the means for embedding Lisp control constructs faithfully and for realizing high-level control abstractions elegantly. A deeper analysis of the examples suggests a need for an entire control hierarchy of such delimiters. We show how to implement such a hierarchy on top of the simple version of a control delimiter."))
      
      (sb:inproceedings
       sb:key: "Graunke:PADL2003"
       sb:author: "Paul T. Graunke, Robert Bruce Findler, Shriram Krishnamurthi, Matthias Felleisen"
       sb:title: "Modeling Web Interactions"
       sb:booktitle: "European Symposium on Programming (ESOP)"
       sb:month: "April"
       sb:year: "2003"
       (sb:abstract "Programmers confront a minefield when they design interactive Web programs. Web interactions take place via Web browsers. With browsers, consumers can whimsically navigate among the various stages of a dialog and can thus confuse the most sophisticated corporate Web sites. In turn, Web services can fault in frustrating and inexplicable ways. The quickening transition from Web scripts to Web services lends these problems immediacy."
                    (h4:p)
                    "To address this programming problem, we develop a foundational model of Web interactions and use it to formally describe two classes of errors. The model suggests techniques for detecting both classes of errors. For one class we present an incrementally checked record type system, which effectively eliminates these errors. For the other class, we introduce a dynamic safety check, which catches the mistakes relative to programmers' simple annotations.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/esop2003-gfkf.ps.gz")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/esop2003-gfkf.pdf"))
      
      (sb:inproceedings
       sb:key: "bcsmith:popl84"
       sb:author: "Brian Cantwell Smith"
       sb:title: "Reflection and semantics in LISP"
       sb:booktitle: "Principles of programming languages (POPL84)"
       sb:month: "January"
       sb:year: "1984"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=800017.800513"))
      
      (sb:inproceedings
       sb:key: "FeeleyDube:SW2003"
       sb:author: "Marc Feeley and Danny Dubé"
       sb:title: "PICBIT: A Scheme System for the PIC Microcontroller"
       sb:booktitle: "Scheme Workshop 2003"
       sb:month: "November"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2003/PICBIT.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2003/PICBIT.pdf"))
      
      (sb:techreport
       sb:key: "bcsmith:3lisp"
       sb:author: "Brian Cantwell Smith and Jim des Rivières"
       sb:title: "Interim 3-LISP Reference Manual"
       sb:institution: "Xerox PARC"
       sb:year: "1984")
      
      (sb:inproceedings
       sb:key: "NEC:Jag95d"
       sb:author: "Suresh Jagannathan and Andrew K. Wright"
       sb:title: "Effective Flow Analysis for Avoiding Runtime Checks"
       sb:booktitle: "2nd International Static Analysis Symposium"
       sb:number: "LNCS 983"
       sb:month: "September"
       sb:year: "1995"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/sas95.ps.gz"))
      
      (sb:inproceedings
       sb:key: "bcsmith:lfp84"
       sb:author: "Jim des Rivières and Brian Cantwell Smith"
       sb:title: "The implementation of procedurally reflective languages"
       sb:booktitle: "1984 ACM Symposium on LISP and functional programming"
       sb:month: "August"
       sb:year: "1984"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=800055.802050"))
      
      (sb:unpublished
       sb:key: "Hickey2003sigcse-cs0"
       sb:author: "Timothy J. Hickey"
       sb:title: "Scheme-based Web Programming as a Basis for a CS0 Curriculum"
       sb:month: "September"
       sb:year: "2003"
       (pdf-link "http://www.cs.brandeis.edu/~tim/Papers/sigcse-cs0.pdf"))
      
      (sb:inproceedings
       sb:key: "Asai:ilc2003"
       sb:author: "Kenichi Asai"
       sb:title: "Reflecting on the Metalevel Interpreter Written in Direct Style"
       sb:booktitle: "International Lisp Conference 2003 (ILC 2003)"
       sb:month: "October"
       sb:year: "2003"
       (ps-link "http://pllab.is.ocha.ac.jp/~asai/papers/ilc03.ps.gz"))
      
      (sb:techreport
       sb:key: "Hickey2003tatool"
       sb:author: "Timothy J. Hickey, J. Langton and R. Alterman"
       sb:title: "Integrating Tools and Resources: a case study in building educational groupware for collaborative programming"
       sb:institution: "Brandeis University"
       sb:year: "2003"
       (pdf-link "http://www.cs.brandeis.edu/~tim/Papers/tatool03.pdf"))
      
      (sb:techreport
       sb:key: "Danvy:Blond88"
       sb:author: "Olivier Danvy and Karoline Malmkjær"
       sb:title: "A Blond Primer"
       sb:number: "DIKU Rapport 88/21"
       sb:institution: "DIKU"
       sb:month: "October"
       sb:year: "1988"
       (pdf-link "http://www.daimi.au.dk/~danvy/Papers/danvy-malmkjaer-blond-primer.pdf"))
      
      (sb:techreport
       sb:key: "PLT:TR:94-239"
       sb:author: "Cormac Flanagan and Matthias Felleisen"
       sb:title: "Well-Founded Touch Optimization for Futures"
       sb:number: "TR 94-239"
       sb:institution: "Rice University"
       sb:year: "1994"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tr94-239.ps.gz"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor98d"
       sb:author: "Luc Moreau"
       sb:title: "Hierarchical Distributed Reference Counting"
       sb:booktitle: "Proceedings of the First ACM SIGPLAN International Symposium on Memory Management (ISMM'98)"
       sb:pages: "57-67"
       sb:month: "October"
       sb:year: "1998"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/ismm98.ps.gz"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag97"
       sb:author: "Suresh Jagannathan"
       sb:title: "Communication-Passing Style for Coordination Languages"
       sb:booktitle: "2nd International Conference on Coordination Models and Languages"
       sb:number: "Springer-Verlag LNCS 1282"
       sb:month: "September"
       sb:year: "1997"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/coord97.ps.gz"))
      
      (sb:unpublished
       sb:key: "Hatcliff:FPECourse99"
       sb:author: "John Hatcliff"
       sb:title: "Foundations of Partial Evaluation and Program Specialization"
       sb:institution: "Kansas State University"
       sb:month: "March"
       sb:year: "1999"
       (sb:link sb:url: "http://www.cis.ksu.edu/~hatcliff/FPEPS/#notes"
                sb:format: "course notes"))
      
      (sb:article
       sb:key: "NEC:Jag95c"
       sb:author: "Suresh Jagannathan, Henry Cejtin, Richard A. Kelsey"
       sb:title: "Higher-Order Distributed Objects"
       sb:journal: "ACM Transactions on Programming Languages and Systems"
       sb:month: "September"
       sb:year: "1995"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/toplas95.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Fin:2002a"
       sb:author: "Robert Bruce Findler and Matthias Felleisen"
       sb:title: "Contracts for Higher-Order Functions"
       sb:month: "October"
       sb:year: "2002"
       sb:booktitle: "International Conference on Functional Programming (ICFP2002)"
       (ps-link "http://people.cs.uchicago.edu/~robby/pubs/papers/ho-contracts-icfp2002.ps")
       (pdf-link "http://people.cs.uchicago.edu/~robby/publications/papers/ho-contracts-icfp2002.pdf"))
      
      (sb:techreport
       sb:key: "Fin:2002-contracts-tr"
       sb:author: "Robert Bruce Findler and Matthias Felleisen"
       sb:title: "Contracts for Higher-Order Functions"
       sb:institution: "University of Chicago"
       sb:month: "October"
       sb:year: "2002"
       sb:booktitle: "International Conference on Functional Programming (ICFP2002)"
       (ps-link "http://people.cs.uchicago.edu/~robby/pubs/papers/ho-contracts-techreport.ps")
       (pdf-link "http://people.cs.uchicago.edu/~robby/pubs/papers/ho-contracts-techreport.pdf"))
      
      (sb:phdthesis
       sb:key: "FindlerThesis"
       sb:author: "Robert Bruce Findler"
       sb:title: "Behavioral Software Contracts"
       sb:school: "Rice University"
       sb:month: "May"
       sb:year: "2002"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/thesis-robby.ps")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/thesis-robby.pdf"))
      
      ;      (sb:unpublished
      ;       sb:key: "IUplg:SobelUnp"
      ;       sb:author: "Jonathon Sobel, Erik Hilsdale, R. Kent Dybvig and Daniel P. Friedman"
      ;       sb:title: "Abstraction and Performance from Explicit Monadic Reflection"
      ;       sb:institution: "Indiana University Computer Science Department"
      ;       (ps-link "http://www.cs.indiana.edu/hyplan/jsobel/Parsing/explicit.ps")
      ;       (pdf-link "http://www.cs.indiana.edu/hyplan/jsobel/Parsing/explicit.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry35"
       sb:author: "Daniel P. Friedman and Mitchell Wand"
       sb:title: "Reification: Reflection Without Metaphysics"
       sb:booktitle: "Conference Record of the 1984 ACM Symposium on LISP and Functional Programming"
       sb:pages: "348-355"
       sb:month: "August"
       sb:year: "1984"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802051&coll=portal"))
      
      (sb:mastersthesis
       sb:key: "Malmkjaer:msthesis"
       sb:author: "Karoline Malmkjær"
       sb:title: "Program and Data Specialization Principles, Applications, and Self-Application"
       sb:school: "DIKU"
       sb:month: "August"
       sb:year: "1989"
       (ps-link "http://repository.readscheme.org/ftp/papers/malmkjaer-speciale.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/malmkjaer-speciale.pdf"))
      
      (sb:mastersthesis
       sb:key: "schultz:speciale97"
       sb:author: "Ulrik Pagh Schultz"
       sb:title: "Explicit and Implicit Aspects of Scope and Block Structure"
       sb:school: "University of Aarhus"
       sb:month: "June"
       sb:year: "1997"
       (ps-link "http://repository.readscheme.org/ftp/papers/schultz-speciale.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/schultz-speciale.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry63"
       sb:author: "Mitchell Wand"
       sb:title: "The Mystery of the Tower Revealed: a Non-Reflective Description of the Reflective Tower"
       sb:booktitle: "Proceedings of the 1986 ACM Symposium on LISP and Functional Programming"
       sb:pages: "298-307"
       sb:month: "August"
       sb:year: "1986"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=319871&coll=Portal"))
      
      (sb:article
       sb:key: "GluckJones:SESC1996"
       sb:author: "Robert Glück and Neil D. Jones"
       sb:title: "Automatic program specialization by partial evaluation: an introduction"
       sb:journal: "Software Engineering in Scientific Computing"
       sb:year: "1996"
       (ps-link "ftp://ftp.diku.dk/diku/semantics/papers/D-288.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Brygoo:IFIP2002"
       sb:author: "Anne Brygoo, Titou Durand, Pascal Manoury, Christian Queinnec and Michèle Soria"
       sb:title: "Experiment around a training engine"
       sb:booktitle: "IFIP WCC 2002 - World Computer Congress"
       sb:month: "August"
       sb:year: "2002"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/ifip2002.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/ifip2002.pdf"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag94f"
       sb:author: "Suresh Jagannathan"
       sb:title: "Locality Abstractions for Parallel and Distributed Computing"
       sb:booktitle: "International Conference on Theory and Practice of Parallel Programming"
       sb:month: "November"
       sb:year: "1994"
       sb:number: "Springer-Verlag LNCS 907"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/tppp94.ps.gz"))
      
      (sb:inproceedings
       sb:key: "sw2004:egner"
       sb:author: "Sebastian Egner, Richard A. Kelsey and Michael Sperber"
       sb:title: "Cleaning up the Tower: Numbers in Scheme"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/egner.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/egner.pdf"))
      
      (sb:inproceedings
       sb:key: "Brygoo:TICE2002"
       sb:author: "Anne Brygoo, Titou Durand, Pascal Manoury, Christian Queinnec and Michèle Soria"
       sb:title: "Un cédérom pour scheme -- chacun son entraineur, un entraineur pour tous"
       sb:booktitle: "TICE 2002"
       sb:month: "November"
       sb:year: "2002"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/tice2002.ps.gz")
       (pdf-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/PDF/tice2002.pdf"))
      
      (sb:inproceedings
       sb:key: "BondorfDussart:PEPM94"
       sb:author: "Anders Bondorf and Dirk Dussart"
       sb:title: "Improving CPS-Based Partial Evaluation, Writing Cogen by Hand"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM'94)"
       sb:month: "June"
       sb:year: "1994"
       (ps-link "ftp://ftp.dina.kvl.dk/pub/Staff/Peter.Sestoft/pepm94-proceedings/bondorf.ps.gz"))
      
      (sb:article
       sb:key: "Fee:Fee:87"
       sb:author: "Marc Feeley, Guy Lapalme"
       sb:title: "Using Closures for Code Generation"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "Vol. 12, No. 1"
       sb:pages: "47-66"
       sb:year: "1987"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/complang87.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Flatt2002"
       sb:author: "Matthew Flatt"
       sb:title: "Composable and Compilable Macros: You Want it When?"
       sb:booktitle: "International Conference on Functional Programming (ICFP'2002)"
       sb:year: "2002"
       (pdf-link "http://www.cs.utah.edu/plt/publications/macromod.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry91"
       sb:author: "Mitchell Wand and Daniel P. Friedman"
       sb:title: "The Mystery of the Tower Revealed: A Non-Reflective Description of the Reflective Tower"
       sb:booktitle: "Meta-Level Architectures and Reflection"
       sb:publisher: "Elsevier Sci. Publishers B.V. (North Holland)"
       sb:pages: "111-134"
       sb:year: "1988")
      
      (sb:inproceedings
       sb:key: "oleg:sw2002"
       sb:author: "Oleg Kiselyov"
       sb:title: "How to write seemingly unhygienic and referentially opaque macros with syntax-rules"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2002/kiselyov.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2002/kiselyov.pdf")
       (sb:link sb:url: "http://repository.readscheme.org/ftp/papers/sw2002/kiselyov-talk.pdf"
                sb:format: "talk (pdf)"))
      
      (sb:phdthesis
       sb:key: "dube:phdthesis"
       sb:author: "Danny Dubé"
       sb:title: "Demand-driven type analysis for dynamically-typed functional languages"
       sb:school: "Université de Montréal"
       sb:month: "August"
       sb:year: "2002"
       (ps-link "http://www.iro.umontreal.ca/~dube/these.ps.gz"))
      
      (sb:techreport
       sb:key: "IU-SR:Jef:92"
       sb:author: "Stanley Jefferson and Daniel P. Friedman"
       sb:title: "A Simple Reflective Interpreter"
       sb:institution: "Computer Science Department, Indiana University"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr364.ps.gz"))
      
      (sb:inproceedings
       sb:key: "oleg:gpce2002"
       sb:author: "Oleg Kiselyov"
       sb:title: "Macros that Compose: Systematic Macro Programming"
       sb:booktitle: "Generative Programming and Component Engineering (GPCE'02)"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://okmij.org/ftp/papers/CPS-Macros.ps.gz")
       (sb:link sb:url: "http://okmij.org/ftp/papers/Macros-talk.pdf"
                sb:format: "talk (pdf)"))
      
      (sb:inproceedings
       sb:key: "aw:sw2002"
       sb:author: "Adam Wick, Matthew Flatt and Wilson Hsieh"
       sb:title: "Reachability-based memory accounting"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2002/wick.pdf"))
      
      (sb:inproceedings
       sb:key: "Kohl:Kohl86"
       sb:author: "Eugene E. Kohlbecker, Daniel P. Friedman, Matthias Felleisen and Bruce F. Duba"
       sb:title: "Hygienic macro expansion"
       sb:booktitle: "Proceedings of the 1986 ACM Conference on LISP and Functional Programming"
       sb:pages: "151-161"
       sb:year: "1986"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=319859"))
      
      (sb:article
       sb:key: "bigot-debray:jlp99"
       sb:author: "Peter A. Bigot and Saumya Debray"
       sb:title: "Return Value Placement and Tail Call Optimization in High Level Languages"
       sb:journal: "Journal of Logic Programming"
       sb:month: "January"
       sb:year: "1999"
       (ps-link "http://www.cs.arizona.edu/people/debray/papers/retval_placement.ps"))
      
      (sb:techreport
       sb:key: "IU-SR:Sim:92a"
       sb:author: "John Wiseman Simmons II and Daniel P. Friedman"
       sb:title: "A Reflective System is as Extensible as its Internal Representations: An Illustration"
       sb:institution: "Computer Science Department, Indiana University"
       sb:month: "October"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr366.ps.gz"))
      
      (sb:techreport
       sb:key: "Dyb:Dyb:94"
       sb:author: "R. Kent Dybvig, David Eby and Carl Bruggeman"
       sb:title: "Don't Stop the BiBOP: Flexible and Efficient Storage Management for Dynamically-Typed Languages"
       sb:institution: "Indiana University"
       sb:number: "technical report #400"
       sb:month: "March"
       sb:year: "1994"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/bibop.ps"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Kohl:87"
       sb:author: "Eugene E. Kohlbecker and Mitchell Wand"
       sb:title: "Macro-by-example: Deriving syntactic transformations from their specifications"
       sb:pages: "77-84"
       sb:booktitle: "Fourteenth Annual ACM SIGACT-SIGPLAN Symposium on Principles of programming languages"
       sb:month: "January"
       sb:year: "1987"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/plan/41625/p77-kohlbecker/"))
      
      (sb:manual
       sb:key: "Oz:entry40"
       sb:title: "MacScheme Reference Manual"
       sb:institution: "Semantic Microsystems"
       sb:year: "1985")
      
      (sb:article
       sb:key: "Oz:entry73"
       sb:author: "Matthias Felleisen"
       sb:title: "Reflections on Landin's J-Operator: A Partly Historical Note"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "12"
       sb:number: "3/4"
       sb:pages: "197-207"
       sb:publisher: "Pergamon Press"
       sb:year: "1987")
      
      (sb:inproceedings
       sb:key: "Bove:LFP92"
       sb:author: "Ana Bove and Laura Arbilla"
       sb:title: "A confluent calculus of Macro expansion and evaluation"
       sb:booktitle: "1992 ACM conference on LISP and functional programming"
       sb:year: "1992"
       (acmdl-link "http://doi.acm.org/10.1145/141471.141562"))
      
      (sb:inproceedings
       sb:key: "Malmkjaer:PEPM93"
       sb:author: "Karoline Malmkjær"
       sb:title: "Towards Efficient Partial Evaluation"
       sb:booktitle: "Partial evaluation and semantics-based program manipulation (PEPM'93)"
       sb:month: "August"
       sb:year: "1993"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-161.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-161.pdf"))
      
      (sb:phdthesis
       sb:key: "Consel:PhdThesis"
       sb:author: "Charles Consel"
       sb:title: "Analyse de Programmes, Evaluation Partielle et Génération de Compilateurs"
       sb:school: "Université de Paris VI"
       sb:year: "1989")
      
      (sb:article
       sb:key: "Oz:entry74"
       sb:author: "Matthias Felleisen and Daniel P. Friedman"
       sb:title: "A Reduction Semantics for Imperative Higher-Order Languages"
       sb:journal: "Parallel Architectures and Languages Europe"
       sb:booktitle: "Lecture Notes in Computer Science"
       sb:volume: "259"
       sb:publisher: "Springer-Verlag"
       sb:pages: "206-223"
       sb:year: "1987")
      
      (sb:inproceedings
       sb:key: "AcmDL:Baw:88"
       sb:author: "Alan Bawden and Jonathan A. Rees"
       sb:title: "Syntactic closures"
       sb:booktitle: "Proceedings of the 1988 ACM Conference on Lisp and Functional Programming"
       sb:pages: "86-95"
       sb:month: "July"
       sb:year: "1988"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/lfp/62678/p86-bawden/"))
      
      (sb:unpublished
       sb:key: "Fuse:93-15"
       sb:author: "Morry Katz"
       sb:title: "Towards a New Perspective on Partial Evaluation: Results, New Ideas, and Future Directions"
       sb:month: "June"
       sb:year: "1993"
       sb:institution: "Stanford Computer Systems Laboratory"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-93-15.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-93-15.pdf"))
      
      (sb:unpublished
       sb:key: "Nagata:ScmToJava2002"
       sb:author: "Akihito Nagata, Eijiro Sumii and Akinori Yonezawa"
       sb:title: "A Scheme-to-Java Translator with Soft Typing"
       sb:month: "May"
       sb:year: "2002"
       (ps-link "http://www.yl.is.s.u-tokyo.ac.jp/~sumii/pub/scm2java.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry140"
       sb:author: "Pierre Bonzon"
       sb:title: "A Metacircular Evaluator for a Logical Extension of Scheme"
       sb:journal: "Lisp and Symbolic Computation: An International Journal"
       sb:publisher: "Kluwer Academic Publishers"
       sb:volume: "3"
       sb:number: "2"
       sb:pages: "113-133"
       sb:month: "March"
       sb:year: "1990"
       (sb:abstract "We define a computational model for a logical extension of Scheme, and give a metacircular evaluator for it. This minimal extension incorporates two new features only, i.e., logical variables and clause expressions, which can be used to define predicates in exactly the same way as lambda expressions can be used to define functions."
                    (h4:p)
                    "Higher-order properties of Scheme are preserved; predicates can be passed to and returned from function applications. Predicate applications can appear as terms in functions. On the other hand, function applications can appear as terms in predicates, and can be formal as well as actual arguments, but only as long as they can be evaluated according to the usual Scheme semantics prohibiting access to unbound variables (except for constructor applications)."))
      
      (sb:inproceedings
       sb:key: "AcmDL:Cli:91"
       sb:author: "William D. Clinger and Jonathan A. Rees"
       sb:title: "Macros that work"
       sb:booktitle: "Conference Record of the Eighteenth Annual ACM Symposium on Principles of Programming Languages"
       sb:pages: "155-162"
       sb:month: "January"
       sb:year: "1991"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/plan/99583/p155-clinger/"))
      
      (sb:techreport
       sb:key: "JonesND:PEProgGen92"
       sb:author: "Neil D. Jones"
       sb:title: "Partial Evaluation and the Generation of Program Generators"
       sb:institution: "DIKU"
       sb:number: "D-130"
       sb:month: "January"
       sb:year: "1992"
       (ps-link "ftp://ftp.diku.dk/diku/semantics/papers/D-130.ps.Z"))
      
      (sb:inproceedings
       sb:key: "SW00:Lat"
       sb:author: "Mario Latendresse"
       sb:title: "Automatic generation of compact programs and virtual machines for Scheme"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "45"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/latendresse.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/latendresse.pdf"))
      
      (sb:article
       sb:key: "JonesND:PEIntro96"
       sb:author: "Neil D. Jones"
       sb:title: "An Introduction to Partial Evaluation"
       sb:journal: "ACM Computing Surveys"
       sb:volume: "Vol. 28"
       sb:number: "No. 3"
       sb:month: "September"
       sb:year: "1996"
       (ps-link "ftp://ftp.diku.dk/diku/semantics/papers/D-294.ps.gz"))
      
      (sb:inproceedings
       sb:key: "ow:sw2002"
       sb:author: "Oscar Waddell, Dipanwita Sarkar and R. Kent Dybvig"
       sb:title: "Robust and effective transformation of letrec"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2002/waddell.pdf"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag94e"
       sb:author: "Suresh Jagannathan, James Philbin"
       sb:title: "High-Level Abstractions for Efficient Concurrent Systems"
       sb:booktitle: "International Conference on Programming Languages and Systems Architecture"
       sb:month: "March"
       sb:year: "1994"
       sb:number: "Springer-Verlag LNCS 782"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/plsa94.ps.gz"))
      
      (sb:techreport
       sb:key: "IU-SR:Dyb:92"
       sb:author: "R. Kent Dybvig"
       sb:title: "Writing Hygenic Macros in Scheme with Syntax-Case"
       sb:institution: "Computer Science Department, Indiana University"
       sb:number: "TR-356"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr356.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Findler:ICFP2004"
       sb:author: "Robert Bruce Findler, Matthew Flatt"
       sb:title: "Slideshow: Functional Presentations"
       sb:booktitle: "International Conference on Functional Programming (ICFP2004)"
       sb:year: "2004"
       (pdf-link "http://people.cs.uchicago.edu/~robby/pubs/papers/icfp2004-ff.pdf"))
      
      (sb:phdthesis
       sb:key: "Bondorf:PhdThesis1990"
       sb:author: "Anders Bondorf"
       sb:title: "Self-Applicable Partial Evaluation"
       sb:school: "DIKU"
       sb:year: "1990")
      
      (sb:techreport
       sb:key: "IU-SR:Hie:92"
       sb:author: "Robert Hieb, R. Kent Dybvig and Carl Bruggeman"
       sb:title: "Syntactic Abstraction in Scheme"
       sb:institution: "Computer Science Department, Indiana University"
       sb:number: "TR-355"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr355.ps.gz"))
      
      (sb:phdthesis
       sb:key: "Fuse:93-14"
       sb:author: "Erik Ruf"
       sb:title: "Topics in Online Partial Evaluation"
       sb:month: "March"
       sb:year: "1993"
       sb:institution: "Department of Electrical Engineering, Stanford University"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-93-14.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-93-14.pdf"))
      
      (sb:phdthesis
       sb:key: "Grobauer:PhdThesis2001"
       sb:author: "Bernd Grobauer"
       sb:title: "Topics in Semantics-based Program Manipulation"
       sb:school: "University of Aarhus"
       sb:month: "July"
       sb:year: "2001"
       (ps-link "http://www.brics.dk/DS/01/6/BRICS-DS-01-6.ps.gz")
       (pdf-link "http://www.brics.dk/DS/01/6/BRICS-DS-01-6.pdf"))
      
      (sb:inproceedings
       sb:key: "Danvy:Sigplan87"
       sb:author: "Olivier Danvy"
       sb:title: "Memory Allocation and Higher-Order Functions"
       sb:booktitle: "Interpreters and Interpretive Techniques (SIGPLAN'87)"
       sb:month: "June"
       sb:year: "1987")
      
      (sb:techreport
       sb:key: "IU-SR:Kel:Stack"
       sb:author: "Richard A. Kelsey"
       sb:title: "Tail-Recursive Stack Disciplines for an Interpreter"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/stack-gc.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Danvy:PLILP96"
       sb:author: "Olivier Danvy and René Vestergaard"
       sb:title: "Semantics-Based Compiling: A Case Study in Type-Directed Partial Evaluation"
       sb:booktitle: "PLILP'96"
       sb:year: "1996"
       (ps-link "http://citeseer.nj.nec.com/rd/2643588%2C372108%2C1%2C0.25%2CDownload/http://citeseer.nj.nec.com/compress/0/papers/cs/11422/http:zSzzSzwww.cee.hw.ac.ukzSz~jrvestzSzWritingszSzdanvy-vestergaard-plilp96.ps.gz/semantics-based-compiling-a.ps")
       (pdf-link "http://citeseer.nj.nec.com/rd/2643588%2C372108%2C1%2C0.25%2CDownload/http://citeseer.nj.nec.com/cache/papers/cs/11422/http:zSzzSzwww.cee.hw.ac.ukzSz%7EjrvestzSzWritingszSzdanvy-vestergaard-plilp96.pdf/semantics-based-compiling-a.pdf"))
      
      (sb:article
       sb:key: "Dyb:Dyb:93a"
       sb:author: "R. Kent Dybvig, Robert Hieb and Carl Bruggeman"
       sb:title: "Syntactic abstraction in Scheme"
       sb:journal: "Lisp and Symbolic Computation"
       sb:volume: "5, 4"
       sb:pages: "83-110"
       sb:month: "December"
       sb:year: "1993"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/syntactic.ps.gz"))
      
      (sb:techreport
       sb:key: "Cooper:FrTime2004"
       sb:author: "Gregory H. Cooper and Shriram Krishnamurthi"
       sb:title: "FrTime: Functional Reactive Programming in PLT Scheme"
       sb:month: "April"
       sb:year: "2004"
       (ps-link "ftp://ftp.cs.brown.edu/pub/techreports/03/cs03-20.ps.Z"))
      
      (sb:inproceedings
       sb:key: "Danvy:TypePE-POPL96"
       sb:author: "Olivier Danvy"
       sb:title: "Type-Directed Partial Evaluation"
       sb:booktitle: "Principles of Programming Languages (POPL'96)"
       sb:year: "1996"
       (ps-link "http://repository.readscheme.org/ftp/papers/brics/PB-494.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/brics/PB-494.pdf"))
      
      (sb:article
       sb:key: "Franco:Data1989"
       sb:author: "John Franco and Daniel P. Friedman"
       sb:title: "Creating Efficient Programs by Exchanging Data for Procedures"
       sb:volume: "Vol. 4"
       sb:number: "Num. 1"
       sb:journal: "Journal of Computer Languages"
       sb:year: "1989")
      
      (sb:inproceedings
       sb:key: "dd:icfp2002"
       sb:author: "Danny Dubé and Marc Feeley"
       sb:title: "A Demand-Driven Adaptive Type Analysis"
       sb:booktitle: "International Conference on Functional Programming (ICFP'2002)"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://www.iro.umontreal.ca/~dube/icfp02.ps.gz"))
      
      (sb:techreport
       sb:key: "GomardJones:PELambda91"
       sb:author: "Carsten K. Gomard and Neil D. Jones"
       sb:title: "A Partial Evaluator for the Untyped Lambda Calculus"
       sb:institution: "DIKU"
       sb:number: "D-15"
       sb:month: "January"
       sb:year: "1991"
       (ps-link "ftp://ftp.diku.dk/diku/semantics/papers/D-15.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry53"
       sb:author: "R. Kent Dybvig, Daniel P. Friedman and Christopher T. Haynes"
       sb:title: "Expansion-Passing style: Beyond Conventional Macros"
       sb:booktitle: "Conference Record of the 1986 ACM Conference on Lisp and Functional Programming"
       sb:pages: "143-150"
       sb:year: "1986"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=319858&coll=portal"))
      
      (sb:article
       sb:key: "Felleisen:DDJ2004a"
       sb:author: "Matthias Felleisen, Robert Bruce Findler, Matthew Flatt and Shriram Krishnamurthi"
       sb:title: "Fostering Little Languages"
       sb:journal: "Dr. Dobb's Journal"
       sb:month: "March"
       sb:year: "2004"
       (sb:link sb:url: "http://www.ddj.com/documents/ddj0403a/"
                sb:format: "Dr. Dobb's"))
      
      (sb:inproceedings
       sb:key: "SW00:Hil"
       sb:author: "Erik Hilsdale and Daniel P. Friedman"
       sb:title: "Writing macros in continuation-passing style"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "53"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/hilsdale.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/hilsdale.pdf"))
      
      (sb:article
       sb:key: "Wong:Float1999"
       sb:author: "W. F. Wong"
       sb:title: "Optimizing Floating Point Operations in Scheme"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "Vol. 25"
       sb:pages: "89-112"
       sb:year: "1999")
      
      (sb:article
       sb:key: "DanvyGoldberg:HOSC97"
       sb:author: "Olivier Danvy and Mayer Goldberg"
       sb:title: "Partial Evaluation of the Euclidian Algorithm"
       sb:journal: "Higher-Order and Symbolic Computing"
       sb:volume: "Vol. 10"
       sb:number: "No. 2"
       sb:month: "July"
       sb:year: "1997"
       (ps-link "http://repository.readscheme.org/ftp/papers/brics/BRICS-RS-97-1.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/brics/BRICS-RS-97-1.pdf"))
      
      (sb:article
       sb:key: "Asai:NGC2001"
       sb:author: "Kenichi Asai"
       sb:title: "Binding-Time Analysis for Both Static and Dynamic Expressions"
       sb:journal: "New Generation Computing"
       sb:volume: "Vol. 20"
       sb:number: "No. 1"
       sb:pages: "27-51"
       sb:month: "November"
       sb:year: "2001"
       (ps-link "http://pllab.is.ocha.ac.jp/~asai/papers/ngc02.ps.gz"))
      
      (sb:unpublished
       sb:key: "Oleg:Oleg2001b"
       sb:author: "Oleg Kiselyov"
       sb:title: "Re-writing abstractions, or Lambda: the ultimate pattern macro"
       sb:month: "December"
       sb:year: "2001"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Computation/rewriting-rule-lambda.txt"
                sb:format: "html"))
      
      (sb:inproceedings
       sb:key: "Malmkjaer:PEPM95"
       sb:author: "Karoline Malmkjær and Peter Ørbæk"
       sb:title: "Polyvariant specialization for higher-order, block-structured languages"
       sb:booktitle: "Partial evaluation and semantics-based program manipulation (PEPM'95)"
       sb:month: "June"
       sb:year: "1995"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/poe/pepm95.ps.gz")
       (acmdl-link "http://doi.acm.org/10.1145/215465.215558"))
      
      (sb:techreport
       sb:key: "PLT:TR:00-364"
       sb:author: "Shriram Krishnamurthi, Matthias Felleisen and Bruce F. Duba"
       sb:title: "From Macros to Reusable Generative Programming"
       sb:number: "TR 00-364"
       sb:institution: "Rice University"
       sb:year: "2000"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tr00-364.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Asai:BTA1999"
       sb:author: "Kenichi Asai"
       sb:title: "Binding-Time Analysis for Both Static and Dynamic Expressions"
       sb:booktitle: "Static Analysis"
       sb:volume: "LNCS 1694"
       sb:month: "September"
       sb:year: "1999"
       (ps-link "http://pllab.is.ocha.ac.jp/~asai/papers/sas99.ps.gz"))
      
      (sb:phdthesis
       sb:key: "PLT:Thesis:Kri"
       sb:author: "Shriram Krishnamurthi"
       sb:title: "Linguistic Reuse"
       sb:school: "Rice University"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/thesis-shriram.ps.gz"))
      
      (sb:techreport
       sb:key: "Asai:RayTrace02"
       sb:author: "Kenichi Asai"
       sb:title: "Can partial evaluation improve the performance of ray tracing?"
       sb:institution: "Ochanomizu University"
       sb:month: "June"
       sb:year: "2002"
       (ps-link "http://pllab.is.ocha.ac.jp/~asai/papers/ewha01.ps.gz"))
      
      (sb:mastersthesis
       sb:key: "Rees:SMThesis"
       sb:author: "Jonathan A. Rees"
       sb:title: "Modular Macros"
       sb:school: "MIT"
       sb:year: "1989")
      
      (sb:article
       sb:key: "BondorfDanvy:SCP1991"
       sb:author: "Anders Bondorf and Olivier Danvy"
       sb:title: "Automatic Autoprojection of Recursive Equations with Global Variables and Abstract Data Types"
       sb:journal: "Science of Computer Programming"
       sb:volume: "Vol. 16"
       sb:pages: "151-195"
       sb:year: "1991"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/danvy/Papers/bondorf-danvy-scp91.ps.gz"))
      
      (sb:techreport
       sb:key: "Blume:95"
       sb:author: "Matthias Blume"
       sb:title: "Refining Hygienic Macros for Modules and Separate Compilation"
       sb:number: "ATR Technical Report TR-H-171"
       sb:institution: "ATR Human Information Processing Research Laboratories, Kyoto"
       sb:year: "1995"
       (pdf-link "http://ttic.uchicago.edu/~blume/papers/hygmac.pdf"))
      
      (sb:article
       sb:key: "ConselDanvy:IPL1989"
       sb:author: "Charles Consel and Olivier Danvy"
       sb:title: "Partial Evaluation of Pattern Matching in Strings"
       sb:journal: "Information Processing Letters"
       sb:volume: "Vol. 30"
       sb:number: "No. 2"
       sb:month: "January"
       sb:year: "1989"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/danvy/Papers/consel-danvy-ipl89.ps.gz"))
      
      (sb:techreport
       sb:key: "Danvy:Monads91"
       sb:author: "Olivier Danvy, Juergen Koslowski and Karoline Malmkjær"
       sb:title: "Compiling Monads"
       sb:institution: "Kansas State University"
       sb:number: "CIS-92-3"
       sb:month: "December"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-154.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-154.pdf"))
      
      (sb:inproceedings
       sb:key: "Bawden:2000"
       sb:author: "Alan Bawden"
       sb:title: "First-class macros have types"
       sb:booktitle: "POPL '00: 27th ACM Symp. Princ. of Prog. Langs."
       sb:pages: "133-141"
       sb:year: "2000"
       (ps-link "http://people.csail.mit.edu/alan/mtt/popl00.ps.gz")
       (pdf-link "http://people.csail.mit.edu/alan/mtt/popl00.pdf"))
      
      (sb:inproceedings
       sb:key: "Que:Que99a"
       sb:author: "Christian Queinnec"
       sb:title: "Marshaling/unmarshaling as a compilation/interpretation process"
       sb:booktitle: "Symposium IPPS/SPDP 1999 - 13th International Parallel Processing Symposium and 10th Symposium on Parallel and Distributed Processing"
       sb:pages: "616-621"
       sb:month: "April"
       sb:year: "1999"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/marshort.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Clements:ESOP03"
       sb:author: "John Clements and Matthias Felleisen"
       sb:title: "A Tail-Recursive Semantics for Stack Inspections"
       sb:booktitle: "European Symposium on Programming (ESOP'2003)"
       sb:month: "April"
       sb:year: "2003"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/esop2003-cf.ps.gz")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/esop2003-cf.pdf"))
      
      (sb:inproceedings
       sb:key: "Que:Que91c"
       sb:author: "Christian Queinnec and Julian Padget"
       sb:title: "Modules, macros and Lisp"
       sb:booktitle: "Eleventh International Conference of the Chilean Computer Science Society"
       sb:pages: "111-123"
       sb:month: "October"
       sb:year: "1991"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/chili.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Dyb:Dyb:93b"
       sb:author: "R. Kent Dybvig, David Eby and Carl Bruggeman"
       sb:title: "Guardians in a Generation-based Collector"
       sb:booktitle: "ACM SIGPLAN 1993 Conference on Programming Language Design and Implementation"
       sb:pages: "207-216"
       sb:month: "June"
       sb:year: "1993"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/guardians-pldi93.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Berlin:LFP90"
       sb:author: "Andrew A. Berlin"
       sb:title: "Partial evaluation applied to numerical computation"
       sb:booktitle: "LISP and Functional Programming (LFP 1990)"
       sb:year: "1990"
       (acmdl-link "http://doi.acm.org/10.1145/91556.91612"))
      
      (sb:article
       sb:key: "Que:Que91d"
       sb:author: "Christian Queinnec and Julian Padget"
       sb:title: "A proposal for a modular Lisp with macros and dynamic evaluation"
       sb:journal: "Journées de Travail sur l'Analyse Statique en Programmation Équationnelle, Fonctionnelle et Logique"
       sb:pages: "1-8"
       sb:month: "October"
       sb:year: "1991"
       (sb:abstract "Lisp has some specialised capability for reflective operations, exemplified by  its macro facility, structured name spaces, file compilation, file loading  and dynamic code synthesis. There has been some progress in the last few  years on the semantics of macros, but the other operations have been  categorized as environmental issues. In this paper, we present a semantics  for modules and will show that it substantially reduces the difficulty of  defining precisely several features of usual Lisp systems such as macros,  module compilation (file compilation), module loading (fasl loading) and dynamic evaluation. The module schema addresses the questions of name  visibility and separate compilation. Macro-expansion is specified relative to  where and how it takes place as one of the operations on modules."))
      
      (sb:inproceedings
       sb:key: "Sumii:OnpePEPM2000"
       sb:author: "Eijiro Sumii and Naoki Kobayashi"
       sb:title: "Online-and-Offline Partial Evaluation: A Mixed Approach"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM'00)"
       sb:month: "January"
       sb:year: "2000"
       (ps-link "http://www.yl.is.s.u-tokyo.ac.jp/~sumii/pub/onpe.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Tinker:LFP88"
       sb:author: "Pete Tinker and Morry Katz"
       sb:title: "Parallel execution of sequential scheme with ParaTran"
       sb:booktitle: "1988 ACM conference on LISP and functional programming"
       sb:year: "1988"
       (acmdl-link "http://doi.acm.org/10.1145/62678.62682"))
      
      (sb:techreport
       sb:key: "Que:Que90b"
       sb:author: "Christian Queinnec and Julian Padget"
       sb:title: "A deterministic model for modules and macros"
       sb:number: "Bath Computing Group Technical Report 90-36"
       sb:institution: "University of Bath"
       sb:year: "1990"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/modmac2.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Fee:Lar:98"
       sb:author: "Martin Larose, Marc Feeley"
       sb:title: "A Compacting Incremental Collector and its Performance in a Production Quality Compiler"
       sb:booktitle: "Proceedings of the 1998 International Symposium on Memory Management"
       sb:month: "October"
       sb:year: "1998"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/ismm98.ps.gz"))
      
      (sb:techreport
       sb:key: "Que:Que98b"
       sb:author: "Christian Queinnec"
       sb:title: "DMeroon A Distributed Class-based Causally-Coherent Data Model - General documentation"
       sb:year: "1998"
       sb:number: "Rapport LIP6 1998/039"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Reports/dmeroon.ps.gz"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor92a"
       sb:author: "Luc Moreau"
       sb:title: "Programming in a Parallel Functional Language with Continuations"
       sb:booktitle: "Avancées Applicatives. Journées Francophones des Langages Applicatifs (JFLA'92)"
       sb:number: "volume 76-77"
       sb:pages: "130-153"
       sb:month: "February"
       sb:year: "1992"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/jfla92.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry158"
       sb:author: "Chris Hanson"
       sb:title: "A Syntactic Closures Macro Facility"
       sb:journal: "Lisp Pointers"
       sb:publisher: "ACM"
       sb:volume: "IV"
       sb:number: "4"
       sb:pages: "9-16"
       sb:month: "October-December"
       sb:year: "1991"
       (ps-link "http://www.swiss.ai.mit.edu/ftpdir/users/cph/macros/prop.ps.gz"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor92b"
       sb:author: "Luc Moreau"
       sb:title: "An Operational Semantics for a Parallel Language with Continuations"
       sb:booktitle: "Parallel Architectures and Languages Europe (PARLE'92)"
       sb:number: "number 605 in Lecture Notes in Computer Science"
       sb:pages: "415-430"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/parle92.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Tucker2003AOSD"
       sb:author: "David Tucker and Shriram Krishnamurthi"
       sb:title: "Pointcuts and Advice in Higher-Order Languages"
       sb:booktitle: "Aspect-Oriented Software Development (AOSD 2003)"
       sb:month: "April"
       sb:year: "2003"
       (sb:abstract "Aspect-oriented software design will need to support languages with first-class and higher-order procedures, such as Python, Perl, ML and Scheme. These language features present both challenges and benefits for aspects. On the one hand, they force the designer to carefully address issues of scope that do not arise in first-order languages. On the other hand, these distinctions of scope make it possible to define a much richer variety of policies than first-order aspect languages permit."
                    (h4:p)
                    "In this paper, we describe the subtleties of pointcuts and advice for higher-order languages, particularly Scheme. We then resolve these subtleties by alluding to traditional notions of scope. In particular, programmers can now define both dynamic aspects traditional to AOP and static aspects that can capture common security control paradigms. We also describe the implementation of this language as an extension to Scheme. By exploiting two novel features of our Scheme system---continuation marks and language-defining macros---the implementation is lightweight and integrates well into the programmer's toolkit.")
       (ps-link "http://repository.readscheme.org/ftp/papers/tucker-aosd2003.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/tucker-aosd2003.pdf"))
      
      (sb:inproceedings
       sb:key: "Fee:Ser:96"
       sb:author: "Manuel Serrano, Marc Feeley"
       sb:title: "Storage Use Analysis and its Applications"
       sb:booktitle: "ACM SIGPLAN International Conference on Functional Programming"
       sb:month: "May"
       sb:year: "1996"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/icfp96.ps.gz"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor93"
       sb:author: "Luc Moreau and Daniel Ribbens"
       sb:title: "Sound Rules for Parallel Evaluation of a Functional Language with callcc"
       sb:booktitle: "ACM conference on Functional Programming and Computer Architecture (FPCA'93)"
       sb:pages: "125-135"
       sb:month: "June"
       sb:year: "1993"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/fpca93.ps.gz"))
      
      (sb:techreport
       sb:key: "Tucker2003TR"
       sb:author: "David Tucker and Shriram Krishnamurthi"
       sb:title: "A Semantics for Pointcuts and Advice in Higher-Order Languages"
       sb:institution: "Brown University"
       sb:number: "Tech Report CS-02-13"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/tucker-cs0213.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/tucker-cs0213.pdf"))
      
      (sb:mastersthesis
       sb:key: "Sumii:MastersThesis"
       sb:author: "Eijiro Sumii"
       sb:title: "A Hybrid Approach To Online And Offline Partial Evaluation"
       sb:school: "University of Tokyo"
       sb:month: "February"
       sb:year: "2000"
       (ps-link "http://www.yl.is.s.u-tokyo.ac.jp/~sumii/pub/onpe.ps.gz")
       (pdf-link "http://citeseer.nj.nec.com/rd/2643588%2C371973%2C1%2C0.25%2CDownload/http://citeseer.nj.nec.com/cache/papers/cs/17182/http:zSzzSzwww.yl.is.s.u-tokyo.ac.jpzSz%7EsumiizSzpubzSz.zSzm_thesis.pdf/sumii00hybrid.pdf"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor94a"
       sb:author: "Luc Moreau"
       sb:title: "The PCKS-machine: An Abstract Machine for Sound Evaluation of Parallel Functional Programs with First-Class Continuations"
       sb:booktitle: "European Symposium on Programming (ESOP'94)"
       sb:number: "number 788 in Lecture Notes in Computer Science"
       sb:pages: "424-438"
       sb:month: "April"
       sb:year: "1994"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/esop94.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Masuhara2003CC"
       sb:author: "Hidehiko Masuhara, Gregor Kiczales and Christopher Dutchyn"
       sb:title: "A Compilation and Optimization Model for Aspect-Oriented Programs"
       sb:booktitle: "Compiler Construction (CC2003)"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/masuhara-cc2003.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/masuhara-cc2003.pdf"))
      
      (sb:article
       sb:key: "Fee:Dub:96"
       sb:author: "Danny Dubé, Marc Feeley, Manuel Serrano"
       sb:title: "Un GC temps réel semi-compactant"
       sb:journal: "Journées Francophones des Langages Applicatifs"
       sb:month: "January"
       sb:year: "1996"
       sb:pages: "165-181"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/jfla96.ps.gz"))
      
      (sb:article
       sb:key: "Sumii:OnTDPE2000"
       sb:author: "Eijiro Sumii and Naoki Kobayashi"
       sb:title: "Online Type-Directed Partial Evaluation for Dynamically-Typed Languages"
       sb:journal: "Computer Software"
       sb:volume: "Vol. 17"
       sb:number: "No. 3"
       sb:month: "May"
       sb:year: "2000"
       (ps-link "http://web.yl.is.s.u-tokyo.ac.jp/~sumii/pub/dynamic-tdpe.ps.gz")
       (pdf-link "http://web.yl.is.s.u-tokyo.ac.jp/~sumii/pub/dynamic-tdpe.pdf"))
      
      (sb:phdthesis
       sb:key: "LMor:Mor94b"
       sb:author: "Luc Moreau"
       sb:title: "Sound Evaluation of Parallel Functional Programs with First-Class Continuations"
       sb:school: "University of Liège"
       sb:month: "June"
       sb:year: "1994"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/thesis-moreau.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Dutchyn2002AOSD"
       sb:author: "Christopher Dutchyn, Gregor Kiczales and Hidehiko Masuhara"
       sb:title: "AOP Language Exploration Using the Aspect Sand Box"
       sb:booktitle: "Aspect-Oriented Software Development (AOSD 2002)"
       sb:month: "April"
       sb:year: "2002")
      
      (sb:inproceedings
       sb:key: "ConselDanvy:ESOP90"
       sb:author: "Charles Consel and Olivier Danvy"
       sb:title: "From Interpreting to Compiling Binding Times"
       sb:booktitle: "European Symposium on Programming (ESOP 1990)"
       sb:volume: "LNCS 432"
       sb:month: "May"
       sb:year: "1990"
       (ps-link "http://repository.readscheme.org/ftp/papers/brics/consel-danvy-esop90.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/brics/consel-danvy-esop90.pdf"))
      
      (sb:inproceedings
       sb:key: "Orleans2002AOSD"
       sb:author: "Doug Orleans"
       sb:title: "Incremental Programming with Extensible Decisions"
       sb:booktitle: "Aspect-Oriented Software Development (AOSD 2002)"
       sb:month: "April"
       sb:year: "2002"
       (ps-link "http://steak.place.org/dougo/papers/aosd02/aosd02.ps")
       (pdf-link "http://steak.place.org/dougo/papers/aosd02/aosd02.pdf")
       (sb:link sb:url: "http://steak.place.org/dougo/papers/aosd02/slides.pdf"
                sb:format: "slides"))
      
      (sb:inproceedings
       sb:key: "Ser:Ser:00a"
       sb:author: "Manuel Serrano and Hans J. Boehm"
       sb:title: "Understanding Memory allocations of Scheme Programs"
       sb:booktitle: "International Conference on Functional Programming, ICFP'00"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/sb-icfp00.ps.gz"))
      
      (sb:article
       sb:key: "LMor:Mor95b"
       sb:author: "Luc Moreau"
       sb:title: "A Parallel Functional Language with First-Class Continuations (Programming Style and Semantics)"
       sb:journal: "Computers and Artificial Intelligence"
       sb:number: "14(2)"
       sb:pages: "173-205"
       sb:year: "1995"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/caai.ps.gz"))
      
      (sb:techreport
       sb:key: "Orleans2002TR"
       sb:author: "Doug Orleans"
       sb:title: "Incremental Programming with Extensible Decisions"
       sb:institution: "Northeastern University"
       sb:number: "NU-CCS-02-01"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://steak.place.org/dougo/papers/tr/02-01/aosd02.ps")
       (pdf-link "http://steak.place.org/dougo/papers/tr/02-01/aosd02.pdf"))
      
      (sb:inproceedings
       sb:key: "Sperber:PEDagstuhl96"
       sb:author: "Michael Sperber"
       sb:title: "Self-Applicable Online Partial Evaluation"
       sb:booktitle: "Partial Evaluation: Dagstuhl Seminar"
       sb:volume: "LNCS 1110"
       sb:month: "February"
       sb:year: "1996"
       (ps-link "http://repository.readscheme.org/ftp/papers/sperber-pe96.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sperber-pe96.pdf"))
      
      (sb:article
       sb:key: "Que:Que96c"
       sb:author: "Christian Queinnec"
       sb:title: "Bribes de DMeroon"
       sb:journal: "Actes des journées de recherche sur la Mémoire Partagée Répartie"
       sb:number: "MPR 96"
       sb:pages: "51-56"
       sb:month: "May"
       sb:year: "1996")
      
      (sb:inproceedings
       sb:key: "Wand2002FOOL"
       sb:author: "Mitchell Wand, Gregor Kiczales and Christopher Dutchyn"
       sb:title: "A Semantics for Advice and Dynamic Join Points in Aspect-Oriented Programming"
       sb:booktitle: "FOOL9 Workshop"
       sb:year: "2002")
      
      (sb:inproceedings
       sb:key: "Danvy:PEDagstuhl96"
       sb:author: "Olivier Danvy"
       sb:title: "Pragmatics of Type-Directed Partial Evaluation"
       sb:booktitle: "Partial Evaluation: Dagstuhl Seminar"
       sb:volume: "LNCS 1110"
       sb:month: "February"
       sb:year: "1996"
       (ps-link "http://www.brics.dk/RS/96/15/BRICS-RS-96-15.ps.gz")
       (pdf-link "http://www.brics.dk/RS/96/15/BRICS-RS-96-15.pdf"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor95d"
       sb:author: "Luc Moreau and Daniel Ribbens"
       sb:title: "The Semantics of pcall and fork"
       sb:booktitle: "PSLS 95 - Parallel Symbolic Langages and Systems"
       sb:number: "number 1068 in Lecture Notes in Computer Science"
       sb:pages: "52-77"
       sb:month: "October"
       sb:year: "1995"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/psls95.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Ducasse:FSE97"
       sb:author: "Stéphane Ducasse and Tamar Richner"
       sb:title: "Executable Connectors: Towards Reusable Design Elements"
       sb:booktitle: "ESEC/FSE'97 (European Software Engineering Conference)"
       sb:month: "September"
       sb:year: "1997"
       (pdf-link "http://www.iam.unibe.ch/~scg/Archive/Papers/Duca97bExecutableConnectors.pdf"))
      
      (sb:techreport
       sb:key: "Fuse:92-13"
       sb:author: "Erik Ruf and Daniel Weise"
       sb:title: "On the Specialization of Online Program Specializers"
       sb:month: "July"
       sb:year: "1992"
       sb:institution: "Stanford Computer Systems Laboratory"
       sb:number: "CSL-TR-92-534"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-13.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-13.pdf"))
      
      (sb:inproceedings
       sb:key: "Que:Que95a"
       sb:author: "Christian Queinnec"
       sb:title: "DMeroon : Overview of a distributed class-based causally-coherent data model"
       sb:booktitle: "PSLS 95 - Parallel Symbolic Langages and Systems"
       sb:number: "Lecture Notes in Computer Science 1068"
       sb:pages: "297-309"
       sb:month: "October"
       sb:year: "1995"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/psls.ps.gz"))
      
      (sb:inproceedings
       sb:key: "GluckJorgensen:Fast96"
       sb:author: "Robert Glück and Jesper Jørgensen"
       sb:title: "Fast Binding-Time Analysis for Multi-Level Specialization"
       sb:booktitle: "Perspectives of System Informatics"
       sb:volume: "LNCS 1181"
       sb:year: "1996"
       (ps-link "ftp://ftp.diku.dk/diku/semantics/papers/D-279.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Ducasse:ISMIS96"
       sb:author: "Stéphane Ducasse, Mireille Blay-Fornarino and Anne-Marie Pinna"
       sb:title: "Object and Dependency Oriented Programming in FLO"
       sb:booktitle: "ISMIS'96 (International Symposium on Methodologies for Intelligent Systems)"
       sb:month: "June"
       sb:year: "1996"
       (pdf-link "http://www.iam.unibe.ch/~scg/Archive/Papers/Duca96bDependencyOP.pdf"))
      
      (sb:inproceedings
       sb:key: "SW00:Dube"
       sb:author: "Danny Dubé"
       sb:title: "BIT: A very compact Scheme system for embedded applications"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "35"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/dube.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/dube.pdf"))
      
      (sb:inproceedings
       sb:key: "Que:Que94a"
       sb:author: "Christian Queinnec"
       sb:title: "Sharing mutable objects and controlling groups of tasks in a concurrent and distributed language"
       sb:booktitle: "Proceedings of the Workshop on Theory and Practice of Parallel Programming (TPPP'94)"
       sb:number: "Lecture Notes in Computer Science 907"
       sb:pages: "70-93"
       sb:month: "November"
       sb:year: "1994"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/dissem.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Ducasse:IJCAI95"
       sb:author: "Stéphane Ducasse"
       sb:title: "Inheritance Mechanism Reification by Means of First Class Object"
       sb:booktitle: "International IJCAI'95 Workshop on Reflection and Meta - Level Architectures and their Applications in AI"
       sb:year: "1995")
      
      (sb:inproceedings
       sb:key: "SW00:Bou"
       sb:author: "Dominique Boucher"
       sb:title: "GOld: a link-time optimizer for Scheme"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "1"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/boucher.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/boucher.pdf"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor96c"
       sb:author: "Luc Moreau"
       sb:title: "The Semantics of Scheme with Future"
       sb:booktitle: "ACM SIGPLAN International Conference on Functional Programming (ICFP'96)"
       sb:pages: "146-156"
       sb:month: "May"
       sb:year: "1996"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/icfp96.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Friedman2003ILC"
       sb:author: "Daniel P. Friedman"
       sb:title: "Object-Oriented Style"
       sb:booktitle: "International LISP Conference"
       sb:month: "October"
       sb:year: "2003"
       (ps-link "http://www.cs.indiana.edu/hyplan/dfried/ooo.ps")
       (pdf-link "http://www.cs.indiana.edu/hyplan/dfried/ooo.pdf"))
      
      (sb:techreport
       sb:key: "vlisp:prescheme"
       sb:author: "John D. Ramsdell, William M. Farmer, Joshua D. Guttman, Leonard G. Monk, Vipin Swarup"
       sb:title: "The VLISP PreScheme Front End"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/prescheme.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/prescheme.pdf"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor96d"
       sb:author: "Luc Moreau"
       sb:title: "Continuing into the Future: the Return (Invited Paper)"
       sb:booktitle: "8th International Conference in Systems Research Informatics and Cybernetics (InterSymp'96)"
       sb:pages: "104-109"
       sb:month: "August"
       sb:year: "1996"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/intersymp96.ps.gz"))
      
      (sb:techreport
       sb:key: "NoermarkObjects"
       sb:author: "Kurt Nørmark"
       sb:title: "Simulation of Object-oriented Concepts and Mechanisms in Scheme"
       sb:institution: "Aalborg University"
       sb:number: "R-90-01"
       sb:year: "1990"
       (ps-link "http://www.cs.auc.dk/~normark/scheme-oop/scheme-oop.ps"))
      
      (sb:mastersthesis
       sb:key: "IU-SR:Han:92"
       sb:author: "Lars Thomas Hansen"
       sb:title: "The Impact of Programming Style on the Performance of Scheme Programs"
       sb:school: "University of Oregon"
       sb:month: "August"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/impact.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Thiemann:DIKUSummer98"
       sb:author: "Peter Thiemann"
       sb:title: "Aspects of the PGG System: Specialization for Standard Scheme"
       sb:booktitle: "Partial Evaluation: Practice and Theory (DIKU International Summer School 1998)"
       sb:volume: "LNCS 1706"
       sb:month: "June"
       sb:year: "1998")
      
      (sb:inproceedings
       sb:key: "Rees:Rees:88"
       sb:author: "Jonathan A. Rees and Norman I. Adams IV"
       sb:title: "Object-oriented programming in Scheme"
       sb:booktitle: "Proceedings of the 1988 ACM Conference on Lisp and Functional Programming"
       sb:pages: "277-288"
       sb:year: "1988"
       (ps-link "http://mumble.net/~jar/pubs/oopis.ps"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Fin:98"
       sb:author: "Robert Bruce Findler and Matthew Flatt"
       sb:title: "Modular Object-Oriented Programming with Units and Mixins"
       sb:booktitle: "Proceedings of ICFP 98"
       sb:year: "1998"
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/icfp98-ff.pdf")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/icfp98-ff.ps.gz"))
      
      (sb:manual
       sb:key: "Bondorf:SimilixManual"
       sb:author: "Anders Bondorf"
       sb:title: "Similix 5.0 Manual"
       sb:year: "1993"
       (ps-link "ftp://ftp.diku.dk/pub/diku/semantics/similix/similix-manual-5.0.ps.gz")
       (pdf-link "ftp://ftp.diku.dk/pub/diku/semantics/similix/similix-manual-5.0.pdf"))
      
      (sb:article
       sb:key: "Fee:Har:96a"
       sb:author: "Pieter H. Hartel, Marc Feeley, Martin Alt, Lennart Augustsson, Peter Baumann, Marcel Beemster, Emmanuel Chailloux, Christine H. Flood, Wolfgang Grieskamp, John H. G. Van Groningen, Kevin Hammond, Bogumil Hausman, Melody Y. Ivory, Richard E. Jones, Jasper Kamperman, Peter Lee, Xavier Leroy, Rafael D. Lins, Sandra Loosemore, Niklas Röjemo, Manuel Serrano, Jean-Pierre Talpin, Jon Thackray, Stephen Thomas, Pum Walters, Pierre Weis, Peter Wentworth"
       sb:title: "Benchmarking Implementations of Functional Languages with ``Pseudoknot'' a Float-Intensive Benchmark"
       sb:journal: "Journal of Functional Programming"
       sb:volume: "Vol. 6, No. 4"
       sb:pages: "621-655"
       sb:year: "1996"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/pseudoknot.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que93e"
       sb:author: "Christian Queinnec"
       sb:title: "Designing MEROON v3"
       sb:booktitle: "Object-Oriented Programming in Lisp: Languages and Applications"
       sb:month: "September"
       sb:year: "1993"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/oopil.ps.gz"))
      
      (sb:techreport
       sb:key: "Que:Que91e"
       sb:author: "Christian Queinnec"
       sb:title: "MEROON: A small, efficient and enhanced object system"
       sb:number: "Technical Report LIX.RR.92.14"
       sb:institution: "École Polytechnique"
       sb:month: "November"
       sb:year: "1991"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Reports/MeroonV3.ps.gz"))
      
      (sb:techreport
       sb:key: "PLT:TR:00-359"
       sb:author: "Matthias Felleisen and Paul A. Steckler"
       sb:title: "Implementing a Static Debugger for a First-Order Functional Programming Language"
       sb:number: "TR 00-359"
       sb:institution: "Rice University"
       sb:year: "2000"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tr00-359.ps.gz"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor98c"
       sb:author: "Luc Moreau"
       sb:title: "A Distributed Garbage Collector with Diffusion Tree Reorganisation and Object Mobility"
       sb:booktitle: "Proceedings of the Third International Conference of Functional Programming (ICFP'98)"
       sb:pages: "204-215"
       sb:month: "September"
       sb:year: "1998"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/icfp98.ps.gz"))
      
      (sb:article
       sb:key: "Haynes:LogicCont87"
       sb:author: "Christopher T. Haynes"
       sb:title: "Logic Continuations"
       sb:journal: "Journal of Logic Programming"
       sb:pages: "157-176"
       sb:volume: "Vol. 4"
       sb:year: "1987")
      
      (sb:article
       sb:key: "IU-SR:Dic:92b"
       sb:author: "Ken Dickey"
       sb:title: "Scheming with Objects"
       sb:journal: "Computer Language"
       sb:month: "October"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/swob.txt"))
      
      (sb:phdthesis
       sb:key: "IU-SR:Tun:92b"
       sb:author: "Sho-Huan Simon Tung"
       sb:title: "Merging Interactive, Modular and Object-Oriented Programming"
       sb:school: "Computer Science Department, Indiana University"
       sb:number: "TR-349"
       sb:month: "March"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr349.ps.gz"))
      
      (sb:techreport
       sb:key: "Felleisen:Circularity"
       sb:author: "Matthias Felleisen"
       sb:title: "Recursion and Circularity: Extended Puzzle with Solution"
       sb:institution: "Indiana University"
       sb:number: "TR-201"
       sb:month: "October"
       sb:year: "1986")
      
      (sb:inproceedings
       sb:key: "Ser:Ser:99"
       sb:author: "Manuel Serrano"
       sb:title: "Wide Classes"
       sb:booktitle: "European Conference on Object-Oriented Programming, ECOOP'99"
       sb:month: "June"
       sb:year: "1999"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/serrano-ecoop99.ps.gz"))
      
      (sb:article
       sb:key: "NEC:Jag98b"
       sb:author: "Suresh Jagannathan and Andrew K. Wright"
       sb:title: "Polymorphic Splitting: An Effective Polyvariant Flow Analysis"
       sb:journal: "ACM Transactions on Programming Languages and Systems"
       sb:month: "March"
       sb:year: "1998"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/toplas98.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Cle:01b"
       sb:author: "John Clements, Matthew Flatt, Matthias Felleisen"
       sb:title: "Modeling an Algebraic Stepper"
       sb:booktitle: "Proceedings of ESOP 2001"
       sb:year: "2001"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/esop2001-cff.ps.gz")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/esop2001-cff.pdf"))
      
      (sb:article
       sb:key: "RubSalter:Logic1987"
       sb:author: "Michael C. Rubenstein and Richard M. Salter"
       sb:title: "Computationally Extended Logic Programming"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "Vol. 12"
       sb:number: "Num. 1"
       sb:pages: "1-7"
       sb:year: "1987")
      
      (sb:article
       sb:key: "Que:Que98a"
       sb:author: "Christian Queinnec"
       sb:title: "Fast and compact dispatching for dynamic object-oriented languages"
       sb:journal: "Information Processing Letters"
       sb:number: "64(6)"
       sb:pages: "315-321"
       sb:month: "January"
       sb:year: "1998"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/dispatch.ps.gz"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag92c"
       sb:author: "Suresh Jagannathan and Gul Agha"
       sb:title: "A Reflective Model of Inheritance"
       sb:booktitle: "European Conference on Object-Oriented Programming (ECOOP 92)"
       sb:month: "June"
       sb:year: "1992"
       sb:number: "LNCS 615"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/ecoop92.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry118"
       sb:author: "Julia L. Lawall and Daniel P. Friedman"
       sb:title: "Embedding the Self Language in Scheme"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:inproceedings
       sb:key: "Asai:Interpreters2001"
       sb:author: "Kenichi Asai"
       sb:title: "Integrating Partial Evaluators into Interpreters,"
       sb:booktitle: "Semantics, Applications, and Implementation of Program Generation"
       sb:volume: "LNCS 2196"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://pllab.is.ocha.ac.jp/~asai/papers/saig01.ps.gz"))
      
      (sb:techreport
       sb:key: "IU-SR:Bec:90"
       sb:author: "Brian Beckman"
       sb:title: "A Scheme for Interactive Graphics"
       sb:institution: "Computer Graphics Laboratory, NASA JPL"
       sb:month: "July"
       sb:year: "1990"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/schemelittle.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry121"
       sb:author: "J. C. Royer, J. P. Braquelaire, P. Casteran, M. Desainte-Catherine and J. G. Penaud"
       sb:title: "Le modo'e(ga'le OBJScheme: principes et applications"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:inproceedings
       sb:key: "NEC:Jag95a"
       sb:author: "Suresh Jagannathan and Andrew K. Wright"
       sb:title: "Flow-Directed Inlining"
       sb:booktitle: "ACM Symposium on Programming Language Design and Implementation (PLDI96)"
       sb:month: "May"
       sb:year: "1996"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/pldi96.ps.gz"))
      
      (sb:techreport
       sb:key: "Ager:BRICS-03-11"
       sb:author: "Mads Sig Ager, Olivier Danvy and Henning Korsholm Rohde"
       sb:title: "Fast Partial Evaluation of Pattern Matching in Strings"
       sb:number: "BRICS-RS-03-11"
       sb:institution: "University of Aarhus"
       sb:month: "February"
       sb:year: "2003"
       (ps-link "http://www.brics.dk/~hense/papers/BRICS-RS-03-11.ps.gz")
       (pdf-link "http://www.brics.dk/~hense/papers/BRICS-RS-03-11.pdf"))
      
      (sb:inbook
       sb:key: "Oz:entry150"
       sb:author: "Barak A. Pearlmutter and Kevin J. Lang"
       sb:title: "The Implementation of Oaklisp"
       sb:booktitle: "Topics in Advanced Language Implementation"
       sb:publisher: "The MIT Press"
       sb:year: "1991")
      
      (sb:techreport
       sb:key: "Amtoft:BRICS-01-12"
       sb:author: "Torben Amtoft, Charles Consel, Olivier Danvy and Karoline Malmkjær"
       sb:title: "The Abstraction and Instantiation of String-Matching Programs"
       sb:number: "RS-01-12"
       sb:month: "April"
       sb:year: "2001"
       sb:institution: "University of Aarhus"
       (ps-link "http://www.brics.dk/RS/01/12/BRICS-RS-01-12.ps.gz")
       (pdf-link "http://www.brics.dk/RS/01/12/BRICS-RS-01-12.pdf"))
      
      (sb:inproceedings
       sb:key: "Taura1996"
       sb:author: "Kenjiro Taura, Akinori Yonezawa"
       sb:title: "Schematic: A Concurrent Object-Oriented Extension to Scheme"
       sb:booktitle: "Workshop on Object-Based Parallel and Distributed Computing (OBPDC'96)"
       sb:year: "1996"
       (ps-link "http://www.logos.t.u-tokyo.ac.jp/~tau/papers/obpdc-schematic.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Dyb:Bur:98"
       sb:author: "Robert G. Burger and R. Kent Dybvig"
       sb:title: "An infrastructure for profile-driven dynamic recompilation"
       sb:booktitle: "IEEE Computer Society 1998 International Conference on Computer Languages"
       sb:pages: "240-251"
       sb:month: "May"
       sb:year: "1998"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/Infrastructure.ps.gz"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag95b"
       sb:author: "Suresh Jagannathan"
       sb:title: "Virtual Topologies: A New Concurrency Abstraction for High-Level Parallel Programs"
       sb:booktitle: "5th Workshop on Languages and Compilers for Parallel Computing"
       sb:month: "September"
       sb:year: "1995"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/plc95.ps.gz"))
      
      (sb:article
       sb:key: "Tessman95"
       sb:author: "Thant Tessman"
       sb:title: "Adding Generic Functions to Scheme"
       sb:journal: "SIGPLAN Notices"
       sb:volume: "Volume 30"
       sb:number: "Number 5"
       sb:month: "May"
       sb:year: "1995"
       (pdf-link "http://www.standarddeviance.com/p45-tessman.pdf"))
      
      (sb:unpublished
       sb:key: "Friedman:MonadCPS02"
       sb:author: "Daniel P. Friedman"
       sb:title: "From Direct Style to Monadic Style through Continuation-Passing Style"
       sb:year: "2002"
       (ps-link "http://www.cs.indiana.edu/l/www/classes/b621/rember.ps")
       (pdf-link "http://www.cs.indiana.edu/l/www/classes/b621/rember.pdf"))
      
      (sb:inproceedings
       sb:key: "SW00:Rot"
       sb:author: "Jean-Francois Rotge"
       sb:title: "SGDL-Scheme: A high-level algorithmic language for projective solid modeling programming"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "31"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/rotge.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/rotge.pdf"))
      
      (sb:unpublished
       sb:key: "Scheme48Modules"
       sb:author: "Richard A. Kelsey and Jonathan A. Rees"
       sb:title: "Modules (in 'The Incomplete Scheme48 Reference Manual for release 0.57')"
       sb:year: "2001"
       (sb:link sb:url: "http://s48.org/0.57/manual/s48manual_24.html"
                sb:format: "html")
       (ps-link "http://s48.org/0.57/s48manual.ps.gz"))
      
      (sb:article
       sb:key: "NEC:Jag96b"
       sb:author: "Suresh Jagannathan and Andrew K. Wright"
       sb:title: "Compiling with Flow Analysis"
       sb:journal: "ACM Computing Surveys"
       sb:month: "June"
       sb:year: "1996"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/survey96.ps.gz"))
      
      (sb:unpublished
       sb:key: "Friedman:MonadSt02"
       sb:author: "Daniel P. Friedman"
       sb:title: "Direct Style from Monadic Style and Back"
       sb:year: "2002"
       (ps-link "http://www.cs.indiana.edu/l/www/classes/b621/traverseS.ps")
       (pdf-link "http://www.cs.indiana.edu/l/www/classes/b621/traverseS.pdf"))
      
      (sb:inproceedings
       sb:key: "IU-SR:Cur:90"
       sb:author: "Pavel Curtis and James Rauen"
       sb:title: "A Module System for Scheme"
       sb:booktitle: "Proceedings of the 1990 ACM Conference on Lisp and Functional Programming"
       sb:month: "June"
       sb:year: "1990"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/modules.ps.gz")
       (ps-link "http://www.psrg.lcs.mit.edu/publications/Papers/lfp90-rauen.ps")
       (pdf-link "http://www.psrg.lcs.mit.edu/publications/Papers/lfp90-rauen.pdf"))
      
      (sb:manual
       sb:key: "Consel:SchismManual"
       sb:author: "Charles Consel"
       sb:title: "Report on Schism (Manual)"
       sb:institution: "IRISA/University of Rennes I"
       sb:month: "January"
       sb:year: "1996"
       (ps-link "ftp://ftp.irisa.fr/local/lande/Schism/manual.ps.gz"))
      
      (sb:phdthesis
       sb:key: "Rees:thesis"
       sb:author: "Jonathan A. Rees"
       sb:title: "A Security Kernel Based on the Lambda-Calculus"
       sb:institution: "Massachusetts Institute of Technology"
       sb:month: "February"
       sb:year: "1995"
       (ps-link "http://www.swiss.ai.mit.edu/ftpdir/users/jar/archive/whole.ps"))
      
      (sb:inproceedings
       sb:key: "Dyb:Bur:96"
       sb:author: "Robert G. Burger and R. Kent Dybvig"
       sb:title: "Printing Floating Point Numbers Quickly and Accurately"
       sb:booktitle: "ACM SIGPLAN 1996 Conference on Programming Language Design and Implementation"
       sb:month: "June"
       sb:year: "1996"
       (ps-link "http://www.cs.indiana.edu/~dyb/FP-Printing-PLDI96.ps.gz"))
      
      (sb:phdthesis
       sb:key: "Carlstrom:Thesis"
       sb:author: "Brian D. Carlstrom"
       sb:title: "Embedding Scheme in Java"
       sb:school: "Massachusetts Institute of Technlogy"
       sb:month: "February"
       sb:year: "2001"
       (pdf-link "http://www.swiss.ai.mit.edu/~bdc/thesis/thesis.pdf"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Cli:90"
       sb:author: "William D. Clinger"
       sb:title: "How to read floating point numbers accurately"
       sb:pages: "92-101"
       sb:booktitle: "Proceedings of the conference on Programming language design and implementation"
       sb:month: "June"
       sb:year: "1990"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/pldi/93542/p92-clinger/"))
      
      (sb:inproceedings
       sb:key: "lh:icfp2002"
       sb:author: "Lars Thomas Hansen and William D. Clinger"
       sb:title: "An Experimental Study of Renewal-Older-First Garbage Collection"
       sb:booktitle: "International Conference on Functional Programming (ICFP'2002)"
       sb:month: "October"
       sb:year: "2002"
       (pdf-link "ftp://ftp.ccs.neu.edu/pub/people/will/p131-hansen.pdf"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Ste:90"
       sb:author: "Guy Lewis Steele and Jon L. White"
       sb:title: "How to print floating-point numbers accurately"
       sb:pages: "112-126"
       sb:booktitle: "Proceedings of the conference on Programming language design and implementation"
       sb:month: "June"
       sb:year: "1990"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/pldi/93542/p112-steele/"))
      
      (sb:inproceedings
       sb:key: "Fee:Dio:96"
       sb:author: "Carl Dionne, Marc Feeley, Jocelyn Desbiens"
       sb:title: "A Taxonomy of Distributed Debuggers Based on Execution Replay"
       sb:booktitle: "International Conference on Parallel and Distributed Processing Techniques"
       sb:month: "August"
       sb:year: "1996"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/pdpta96.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Fuse:91-6"
       sb:author: "Daniel Weise, Roland Conybeare, Erik Ruf and Scott Seligman"
       sb:title: "Automatic Online Partial Evaluation"
       sb:booktitle: "Proceedings of the Conference on Functional Programming Languages and Computer Architecture, 1991"
       sb:month: "June"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-91-6.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-91-6.pdf"))
      
      (sb:techreport
       sb:key: "Fee:Fee95"
       sb:author: "Marc Feeley"
       sb:title: "Lazy Remote Procedure Call and its Implementation in a Parallel Variant of C"
       sb:year: "1995"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/pslsw95.ps.gz"))
      
      (sb:inproceedings
       sb:key: "DanvyMalmkjaer:PEPM94"
       sb:author: "Olivier Danvy, Karoline Malmkjær and Jens Palsberg"
       sb:title: "The Essence of Eta-Expansion in Partial Evaluation"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM'94)"
       sb:month: "June"
       sb:year: "1994"
       (ps-link "ftp://ftp.dina.kvl.dk/pub/Staff/Peter.Sestoft/pepm94-proceedings/danvy.ps.gz"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag91b"
       sb:author: "Suresh Jagannathan"
       sb:title: "Customization of First-Class Tuple-Spaces in a Higher-Order Language"
       sb:booktitle: "Parallel Languages and Architectures"
       sb:month: "June"
       sb:year: "1991"
       sb:number: "LNCS 506"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/parle91.ps.gz"))
      
      (sb:incollection
       sb:key: "Shi:Shi:96"
       sb:author: "Olin Shivers"
       sb:title: "A universal scripting framework or Lambda: the ultimate little language"
       sb:booktitle: "Concurrency and Parallelism, Programming, Networking, and Security"
       sb:number: "Lecture Notes in Computer Science #1179"
       sb:pages: "254-265"
       sb:year: "1996"
       (ps-link "http://www.cc.gatech.edu/fac/Olin.Shivers/ll.ps"))
      
      (sb:inproceedings
       sb:key: "Lawall:Proofs93"
       sb:author: "Julia L. Lawall"
       sb:title: "Proofs by structural induction using partial evaluation"
       sb:booktitle: "Proceedings of the ACM SIGPLAN symposium on Partial evaluation and semantics-based program manipulation (PEPM'93)"
       sb:year: "1993"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=154646&dl=ACM&coll=portal"))
      
      (sb:inproceedings
       sb:key: "SW00:Sum"
       sb:author: "Eijiro Sumii"
       sb:title: "An implementation of transparent migration on standard Scheme"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "61"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/sumii.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/sumii.pdf"))
      
      (sb:inproceedings
       sb:key: "Mossin:Parsers"
       sb:author: "Christian Mossin"
       sb:title: "Partial evaluation of general parsers"
       sb:booktitle: "Proceedings of the ACM SIGPLAN symposium on Partial evaluation and semantics-based program manipulation (PEPM'93)"
       sb:year: "1993"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=154632&coll=portal&dl=ACM"))
      
      (sb:inproceedings
       sb:key: "BerlinSurati:PEPM94"
       sb:author: "Andrew A. Berlin and Rajeev J. Surati"
       sb:title: "Partial Evaluation for Scientific Computing: The Supercomputer Toolkit Experience"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM'94)"
       sb:month: "June"
       sb:year: "1994"
       (ps-link "http://repository.readscheme.org/ftp/papers/berlinsurati-pepm94.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/berlinsurati-pepm94.pdf"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag90b"
       sb:author: "Suresh Jagannathan"
       sb:title: "Optimizing Analysis for First-Class Tuple-Spaces"
       sb:booktitle: "3rd Workshop on Parallel Languages and Compilers"
       sb:month: "August"
       sb:year: "1990"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/plc91.ps.gz"))
      
      (sb:phdthesis
       sb:key: "Fee:Fee:93c"
       sb:author: "Marc Feeley"
       sb:title: "An Efficient and General Implementation of Futures on Large Scale Shared-Memory Multiprocessors"
       sb:school: "Brandeis University"
       sb:month: "April"
       sb:year: "1993"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/futures.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Flan:95"
       sb:author: "Cormac Flanagan and Matthias Felleisen"
       sb:title: "The Semantics of Future and Its Use in Program Optimizations"
       sb:booktitle: "Proceedings of POPL 95"
       sb:year: "1995"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/popl95-ff.ps.gz"))
      
      (sb:inproceedings
       sb:key: "LeePleban86"
       sb:author: "Peter Lee and Uwe F. Pleban"
       sb:title: "On the use of LISP in implementing denotational semantics"
       sb:booktitle: "Proceedings of the 1986 ACM conference on LISP and functional programming"
       sb:year: "1986"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=319866&coll=portal&dl=ACM"))
      
      (sb:article
       sb:key: "Shi:Shi:lsc"
       sb:author: "Olin Shivers"
       sb:title: "A Scheme Shell - The design paper on the Scheme shell scsh"
       sb:institution: "MIT Laboratory for Computer Science"
       sb:number: "Personal Information Architecture Note 3"
       sb:month: "April"
       sb:year: "1994"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/scsh-paper.ps.gz"))
      
      (sb:inproceedings
       sb:key: "asai2002"
       sb:author: "Kenichi Asai"
       sb:title: "Online partial evaluation for shift and reset"
       sb:booktitle: "Proceedings of the 2002 ACM SIGPLAN workshop on Partial evaluation and semantics-based program manipulation (PEPM'02)"
       sb:month: "January"
       sb:year: "2002"
       (ps-link "http://pllab.is.ocha.ac.jp/~asai/papers/pepm02.ps.gz")
       (acmdl-link "http://portal.acm.org/citation.cfm?id=503034&coll=portal&dl"))
      
      (sb:inproceedings
       sb:key: "Radestock:ILC2003"
       sb:author: "Matthias Radestock"
       sb:title: "Run Once, Write Anyway"
       sb:booktitle: "International Lisp Conference (ILC) 2003"
       sb:month: "October"
       sb:year: "2003"
       (pdf-link "http://www.lshift.com/ilc2003.pdf")
       (sb:link sb:url: "http://www.lshift.com/matthias.presentation.pdf"
                sb:format: "slides"))
      
      (sb:inproceedings
       sb:key: "Fell:2002a"
       sb:author: "Matthias Felleisen, Robert Bruce Findler, Matthew Flatt and Shriram Krishnamurthi"
       sb:title: "The Structure and Interpretation of the Computer Science Curriculum"
       sb:month: "October"
       sb:year: "2002"
       sb:booktitle: "Functional and Declarative Programming in Education (FDPE2002)"
       (sb:abstract "Nearly twenty years ago, " (h4:em "Structure and Interpretation of Computer Programs (SICP)") " changed the intellectual landscape of introductory computing courses. Unfortunately, three problems---its lack of an explicit program design methodology, its reliance on domain knowledge, and the whimsies of Scheme---have made it integrate poorly with the rest of the curriculum and fail to maintain its position in several departments."
                    (h4:p)
                    "In this paper we analyze the structural constraints of the typical computer science curriculum and interpret " (h4:em "SICP")
                    " and Scheme from this perspective. We then discuss how our new book, " (h4:em "How to Design Programs") ", overcomes " (h4:em "SICP") "'s problems. We hope that this discussion helps instructors understand the structure and interpretation of introductory courses on computer science.")
       (ps-link "http://people.cs.uchicago.edu/~robby/publications/papers/htdp-sicp-fdpe2002.ps")
       (pdf-link "http://people.cs.uchicago.edu/~robby/publications/papers/htdp-sicp-fdpe2002.pdf"))
      
      (sb:techreport
       sb:key: "Rees:AIM:Baw:88"
       sb:author: "Alan Bawden and Jonathan A. Rees"
       sb:title: "Syntactic Closures"
       sb:number: "AI Lab Memo AIM-1049"
       sb:institution: "MIT AI Lab"
       sb:month: "June"
       sb:year: "1988"
       (sb:abstract "In this paper we describe " (h4:em "syntactic closures") ". Syntactic closures address the scoping problems that arise when writing macros. We discuss some issues raised by introducing syntactic closures into the macro expansion interface, and we compare syntactic closures with other approaches. Included is a complete implementation.")
       (ps-link "ftp://publications.ai.mit.edu/ai-publications/1000-1499/AIM-1049.ps")
       (pdf-link "ftp://publications.ai.mit.edu/ai-publications/pdf/AIM-1049.pdf"))
      
      (sb:techreport
       sb:key: "PLT:TR:94-238"
       sb:author: "Cormac Flanagan and Matthias Felleisen"
       sb:title: "The Semantics of Futures"
       sb:number: "TR 94-238"
       sb:institution: "Rice University"
       sb:year: "1994"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tr94-238.ps.gz"))
      
      (sb:inproceedings
       sb:key: "HalsteadMulti89"
       sb:author: "David A. Kranz, Robert H. Halstead and Eric Mohr"
       sb:title: "Mul-T: a high-performance parallel Lisp"
       sb:booktitle: "Programming language design and implementation 1989"
       sb:year: "1989"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=74825&dl=ACM&coll=portal"))
      
      (sb:inproceedings
       sb:key: "Ser:Ser:97a"
       sb:author: "Manuel Serrano"
       sb:title: "Inline expansion: when and how?"
       sb:booktitle: "Programming Language Implementation and Logic Programming, PLILP'97"
       sb:month: "September"
       sb:year: "1997"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/serrano-plilp97.ps.gz"))
      
      (sb:inproceedings
       sb:key: "HalsteadMulti90"
       sb:author: "Eric Mohr, David A. Kranz and Robert H. Halstead"
       sb:title: "Lazy task creation: a technique for increasing the granularity of parallel programs"
       sb:booktitle: "Proceedings of the 1990 ACM conference on LISP and functional programming"
       sb:year: "1990"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=91631&coll=portal"))
      
      (sb:article
       sb:key: "gallesio:JFP2003"
       sb:author: "Erick Gallesio and Manuel Serrano"
       sb:title: "Programming Graphical User Interfaces with Scheme"
       sb:journal: "Journal of Functional Programming"
       sb:number: "Vol. 13, No. 5"
       sb:month: "September"
       sb:year: "2003"
       (ps-link "http://www-sop.inria.fr/mimosa/Manuel.Serrano/publi/gs-jfp03.ps.gz"))
      
      (sb:article
       sb:key: "Fee:Bou:94"
       sb:author: "Dominique Boucher, Marc Feeley"
       sb:title: "Construction parallèle de l'automate LR(0): Une application de Multilisp à la compilation"
       sb:journal: "Actes des 6ème Rencontres Francophones du Parallélisme"
       sb:month: "Juin"
       sb:year: "1994"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/renpar6.ps.gz"))
      
      (sb:inproceedings
       sb:key: "HalsteadMulti84"
       sb:author: "Robert H. Halstead"
       sb:title: "Implementation of multilisp: Lisp on a multiprocessor"
       sb:booktitle: "Proceedings of the 1984 ACM Symposium on LISP and functional programming"
       sb:year: "1984"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802017&coll=portal"))
      
      (sb:article
       sb:key: "Fee:Fee:94"
       sb:author: "Marc Feeley, Marcel Turcotte, Guy Lapalme"
       sb:title: "Using Multilisp for Solving Constraint Satisfaction Problems: An Application to Nucleic Acid 3D Structure Determination"
       sb:journal: "Lisp and Symbolic Computation"
       sb:volume: "Vol. 7"
       sb:pages: "231-247"
       sb:year: "1994"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/nucleic.ps.gz"))
      
      (sb:article
       sb:key: "HalsteadMulti87"
       sb:author: "Robert H. Halstead"
       sb:title: "Overview of concert multilisp: a multiprocessor symbolic computing system"
       sb:booktitle: "ACM SIGARCH Computer Architecture News"
       sb:volume: "15"
       sb:number: "1"
       sb:month: "March"
       sb:year: "1987"
       sb:pages: "5-14")
      
      (sb:inproceedings
       sb:key: "Ser:Ser:95a"
       sb:author: "Manuel Serrano"
       sb:title: "A Fresh Look to Inlining Decision"
       sb:booktitle: "International Computer Symposium, ICS'95"
       sb:month: "November"
       sb:year: "1995"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/serrano-ics95.ps.gz"))
      
      (sb:article
       sb:key: "Fee:Fee:93a"
       sb:author: "Marc Feeley"
       sb:title: "A Message Passing Implementation of Lazy Task Creation"
       sb:booktitle: "Parallel Symbolic Computing: Languages, Systems, and Applications"
       sb:series: "Springer-Verlag Lecture Notes in Computer Science"
       sb:volume: "748"
       sb:month: "November"
       sb:year: "1993"
       sb:pages: "94-107"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/pscw92.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry6"
       sb:author: "Guy Lewis Steele, Jr."
       sb:title: "Macaroni is Better than Spaghetti"
       sb:booktitle: "Proceedings of the Symposium on Artificial Intelligence and Programming Languages"
       sb:pages: "60-66"
       sb:month: "August"
       sb:year: "1977"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=806933&coll=portal&dl=ACM"))
      
      (sb:article
       sb:key: "PLT:Pub:Fin:01c"
       sb:author: "Robert Bruce Findler, John Clements, Cormac Flanagan, Matthew Flatt, Shriram Krishnamurthi, Paul A. Steckler and Matthias Felleisen"
       sb:title: "DrScheme: A Programming Environment for Scheme"
       sb:journal: "Journal of Functional Programming"
       sb:year: "2002"
       (sb:abstract "DrScheme is a programming environment for Scheme. It fully integrates a graphics-enriched editor, a parser for multiple variants of Scheme, a functional read-eval-print loop, and an algebraic printer. The environment is especially useful for students, because it has a tower of syntactically restricted variants of Scheme that are designed to catch typical student mistakes and explain them in terms the students understand. The environment is also useful for professional programmers, due to its sophisticated programming tools, such as the static debugger, and its advanced language features, such as units and mixins."
                    (h4:p)
                    "Beyond the ordinary programming environment tools, DrScheme provides an algebraic stepper, a context-sensitive syntax checker, and a static debugger. The stepper reduces Scheme programs to values, according to the reduction semantics of Scheme. It is useful for explaining the semantics of linguistic facilities and for studying the behavior of small programs. The syntax checker annotates programs with font and color changes based on the syntactic structure of the program. On demand, it draws arrows that point from bound to binding occurrences of identifiers. It also supports alpha-renaming. Finally, the static debugger provides a type inference system that explains specific inferences in terms of a value-flow graph, selectively overlaid on the program text.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/jfp01-fcffksf.ps")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/jfp01-fcffksf.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry15"
       sb:author: "Guy Lewis Steele, Jr. and Gerald Jay Sussman"
       sb:title: "The Dream of a Lifetime: a Lazy Variable Extent Mechanism"
       sb:booktitle: "Conference Record of the 1980 Lisp Conference"
       sb:pages: "163-172"
       sb:year: "1980"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802802&coll=portal&dl=ACM"))
      
      (sb:article
       sb:key: "Rees:Rees:93a"
       sb:author: "Jonathan A. Rees"
       sb:title: "Implementing lexically scoped macros"
       sb:number: "'The Scheme of Things' (column)"
       sb:organization: "Association of Computer Machinery"
       sb:journal: "Lisp Pointers"
       sb:year: "1993"
       (ps-link "http://mumble.net/~jar/pubs/scheme-of-things/easy-macros.ps"))
      
      (sb:inproceedings
       sb:key: "Fee:Fee:90"
       sb:author: "Marc Feeley, James S. Miller"
       sb:title: "A Parallel Virtual Machine for Efficient Scheme Compilation"
       sb:booktitle: "Proceedings of the 1990 ACM SIGPLAN Conference on Lisp and Functional Programming"
       sb:month: "June"
       sb:year: "1990"
       sb:pages: "119-130"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/pvm.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry15a"
       sb:author: "Guy Lewis Steele, Jr. and Gerald Jay Sussman"
       sb:title: "The Dream of a Lifetime: a Lazy Variable Extent Mechanism"
       sb:institution: "MIT AI Laboratory"
       sb:pages: "AI Memo 527"
       sb:year: "1979"
       (sb:abstract "We define a rack, a data abstraction hybrid of a register and a stack. It is used for encapsulating the behavior of the kind of register whose contents may have an extent which requires that it be saved during the execution of an unknown piece of code. A rack can be implemented cleverly to achieve performance benefits over the usual implementation of a stack discipline. The basic idea is that we interpose a state machine controller between the rack abstraction and its stack/registers. This controller can act as an on-the-fly run-time peephole optimizer, eliding unnecessary stack operations. We demonstrate the sorts of savings one might expect by using cleverly implemented racks in the context of a particular caller-saves implementation of an interpreter for the SCHEME dialect of LISP. For sample problems we can expect that only one out of every four pushes that would be done by a conventional machine will be done by a clever version.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-527.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-527.pdf"))
      
      (sb:techreport
       sb:key: "vlisp:image_builder"
       sb:author: "Vipin Swarup, William M. Farmer, Joshua D. Guttman, Leonard G. Monk and John D. Ramsdell"
       sb:title: "The VLISP Image Builder"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/image_builder.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/image_builder.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry16"
       sb:author: "Drew McDermott"
       sb:title: "An Efficient Environment Allocation Scheme in an Interpreter for a Lexically-Scoped Lisp"
       sb:booktitle: "Conference Record of the 1980 Lisp Conference"
       sb:pages: "154-162"
       sb:year: "1980"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802801&coll=portal&dl=ACM"))
      
      (sb:inproceedings
       sb:key: "Ser:Ser:95c"
       sb:author: "Manuel Serrano"
       sb:title: "Control flow analysis: a functional languages compilation paradigm"
       sb:booktitle: "Symposium on Applied Computing, SAC'95"
       sb:month: "February"
       sb:year: "1995"
       (ps-link "http://repository.readscheme.org/ftp/papers/serrano95control.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/serrano95control.pdf"))
      
      (sb:inproceedings
       sb:key: "PE:Con:93c"
       sb:author: "Charles Consel"
       sb:title: "A tour of Schism: a partial evaluation system for higher-order applicative languages"
       sb:booktitle: "ACM Symposium on Partial Evaluation and Semantics-Based Program Manipulation (PEPM '93)"
       sb:pages: "pages 66-77"
       sb:month: "June"
       sb:year: "1993"
       (ps-link "http://compose.labri.fr/documentation/papers/tour-schism.ps.gz"))
      
      (sb:techreport
       sb:key: "Oz:entry22"
       sb:author: "Rex A. Dwyer and R. Kent Dybvig"
       sb:title: "A SCHEME for Distributed Processes"
       sb:number: "Computer Science Department Technical Report 107"
       sb:institution: "Indiana University"
       sb:month: "April"
       sb:year: "1981")
      
      (sb:article
       sb:key: "Oz:entry23"
       sb:author: "Gerald Jay Sussman, Jack Holloway, Guy Lewis Steele, Jr. and Alan Bell"
       sb:title: "Scheme-79 - Lisp on a Chip"
       sb:journal: "IEEE Computer"
       sb:volume: "14"
       sb:number: "7"
       sb:pages: "10-21"
       sb:publisher: "IEEE"
       sb:month: "July"
       sb:year: "1981")
      
      (sb:techreport
       sb:key: "Fuse:90-2"
       sb:author: "Andrew A. Berlin and Daniel Weise"
       sb:title: "Compiling Scientific Code using Partial Evaluation"
       sb:month: "March"
       sb:year: "1990"
       sb:institution: "Stanford Computer Systems Laboratory"
       sb:number: "CSL-TR-90-422"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-90-2.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-90-2.pdf"))
      
      (sb:techreport
       sb:key: "Oz:entry23a"
       sb:author: "Gerald Jay Sussman, Jack Holloway, Guy Lewis Steele, Jr. and Alan Bell"
       sb:title: "The Scheme-79 Chip"
       sb:number: "AI Memo 559"
       sb:institution: "MIT AI Laboratory"
       sb:month: "January"
       sb:year: "1980"
       (sb:abstract "We have designed and implemented a single-chip microcomputer (which we call SCHEME-79) which directly interprets a typed pointer variant of SCHEME, a dialect of the language LISP. To support this interpreter the chip implements an automatic storage allocation system for heap-allocated data and an interrupt facility for user interrupt routines implemented in SCHEME. We describe how the machine architecture is tailored to support the language, and the design methodology by which the hardware was synthesized. We develop an interpreter for SCHEME written in LISP which may be viewed as a microcode specification. This is converted by successive compilation passes into actual hardware structures on the chip. We develop a language embedded in LSIP for describing layout artwork so we can procedurally define generators for generalized macro components. The generators accept parameters to produce the specialized instances used in a particular design. We discuss the performance of the current design and directions for improvement, both in the circuit performance and in the algorithms implemented by the chip. A complete annotated listing of the microcode embodied by the chip is included.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-559.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-559.pdf"))
      
      (sb:inproceedings
       sb:key: "Dyb:Wad:99"
       sb:author: "Oscar Waddell and R. Kent Dybvig"
       sb:title: "Extending the Scope of Syntactic Abstraction"
       sb:booktitle: "Conference Record of POPL'99: The 26th ACM SIGPLAN-SIGACT Symposium on Principles of Programming Languages"
       sb:pages: "203-213"
       sb:month: "January"
       sb:year: "1999"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/popl99.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Fin:97"
       sb:author: "Robert Bruce Findler, Cormac Flanagan, Matthew Flatt, Shriram Krishnamurthi and Matthias Felleisen"
       sb:title: "DrScheme: A Pedagogic Programming Environment for Scheme"
       sb:booktitle: "International Symposium on Programming Languages: Implementations, Logics, and Programs (PLILP 97)"
       sb:year: "1997"
       (sb:abstract "Teaching introductory computing courses with Scheme elevates the intellectual level of the course and thus makes the subject more appealing to students with scientific interests. Unfortunately, the poor quality of the available programming environments negates many of the pedagogic advantages. To overcome this problem, we have developed DrScheme, a comprehensive programming environment for Scheme. It fully integrates a graphics enriched editor, a multi lingual parser that can process a hierarchy of syntactically restrictive variants of Scheme, a functional read eval print loop, and an algebraically sensible printer. The environment catches the typical syntactic mistakes of beginners and pinpoints the exact source location of run time exceptions."
                    (h4:p)
                    "DrScheme also provides an algebraic stepper, a syntax checker and a static debugger. The first reduces Scheme programs, including programs with assignment and control effects, to values (and effects). The tool is useful for explaining the semantics of linguistic facilities and for studying the behavior of small programs. The syntax checker annotates programs with font and color changes based on the syntactic structure of the program. It also draws arrows on demand that point from bound to binding occurrences of identifiers. The static debugger, roughly speaking, provides a type inference system with explanatory capabilities. Preliminary experience with the environment shows that Rice University students find it helpful and that they greatly prefer it to shell  or Emacs based systems.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/plilp97-fffkf.ps.gz"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Bon:92"
       sb:author: "Anders Bondorf"
       sb:title: "Improving binding times without explicit CPS-conversion"
       sb:pages: "1-10"
       sb:booktitle: "Proceedings of the conference on Lisp and functional programming"
       sb:month: "June"
       sb:year: "1992"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/lfp/141471/p1-bondorf/"))
      
      (sb:phdthesis
       sb:key: "IUplg:Wad99"
       sb:author: "Oscar Waddell"
       sb:title: "Extending the Scope of Syntactic Abstraction"
       sb:month: "August"
       sb:year: "1999"
       sb:school: "Indiana University Computer Science Department"
       (ps-link "http://www.cs.indiana.edu/~owaddell/papers/thesis.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Fee:Bou:96"
       sb:author: "Dominique Boucher, Marc Feeley"
       sb:title: "Abstract Compilation: a New Implementation Paradigm for Static Analysis"
       sb:booktitle: "Compiler Construction Conference"
       sb:month: "April"
       sb:year: "1996"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/cc96.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PE:Con:93b"
       sb:author: "Charles Consel"
       sb:title: "Polyvariant binding-time analysis for higher-order, applicative languages"
       sb:booktitle: "ACM Symposium on Partial Evaluation and Semantics-Based Program Manipulation (PEPM '93)"
       sb:pages: "pages 145-154"
       sb:month: "June"
       sb:year: "1993"
       (ps-link "http://compose.labri.fr/documentation/papers/bta.ps.gz"))
      
      (sb:phdthesis
       sb:key: "Shi:Shi:91b"
       sb:author: "Olin Shivers"
       sb:title: "Control-Flow Analysis of Higher-Order Languages"
       sb:school: "Carnegie Mellon University"
       sb:month: "May"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/shivers-diss.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/shivers-diss.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry24"
       sb:author: "John Batali, Edmund Goodhue, Chris Hanson, Howie Shrobe, Richard M. Stallman and Gerald Jay Sussman"
       sb:title: "The Scheme-81 Architecture - System and Chip"
       sb:booktitle: "Proceedings, Conference on Advanced Research in VLSI"
       sb:pages: "69-77"
       sb:year: "1982")
      
      (sb:techreport
       sb:key: "Fee:Bou:95"
       sb:author: "Dominique Boucher, Marc Feeley"
       sb:title: "Un système pour l'optimisation globale de programmes d'ordre supérieur par compilation abstraite séparée"
       sb:number: "Rapport technique 992"
       sb:institution: "département d'informatique et r.o., Université de Montréal"
       sb:month: "Septembre"
       sb:year: "1995"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/tr992.ps.gz"))
      
      (sb:article
       sb:key: "Dyb:Dyb:88"
       sb:author: "R. Kent Dybvig, Daniel P. Friedman and Christopher T. Haynes"
       sb:title: "Expansion-Passing Style: A General Macro Mechanism"
       sb:journal: "Lisp and Symbolic Computation"
       sb:volume: "1, 1"
       sb:pages: "53-75"
       sb:month: "June"
       sb:year: "1988"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/eps.ps"))
      
      (sb:unpublished
       sb:key: "Friedman2004Logic"
       sb:author: "Daniel P. Friedman and Oleg Kiselyov"
       sb:title: "A Logic System with First-Class Relations"
       sb:month: "May"
       sb:year: "2004"
       (ps-link "http://www.cs.indiana.edu/l/www/classes/b521/qs.ps")
       (pdf-link "http://www.cs.indiana.edu/l/www/classes/b521/qs.pdf"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Flan:98"
       sb:author: "Cormac Flanagan and Matthias Felleisen"
       sb:title: "A New Way of Debugging LISP Programs"
       sb:booktitle: "Proceedings of LUGM 98"
       sb:year: "1998"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/lugm98-ff.ps.gz"))
      
      (sb:techreport
       sb:key: "Oz:entry28"
       sb:author: "Pee Hong Chen, W. Y. Chi, Eric M. Ost, L. David Sabbagh and George Springer"
       sb:title: "Scheme Graphics Reference Manual"
       sb:number: "Computer Science Technical Report No. 145"
       sb:institution: "Indiana University "
       sb:month: "August"
       sb:year: "1983")
      
      (sb:techreport
       sb:key: "Wand:Logic1983"
       sb:author: "Mitchell Wand"
       sb:title: "A Semantic Algebra for Logic Programming"
       sb:institution: "Indiana University"
       sb:number: "TR-148"
       sb:month: "August"
       sb:year: "1983")
      
      (sb:techreport
       sb:key: "PE:Con:93a"
       sb:author: "Charles Consel and Siau Cheng Khoo"
       sb:title: "On-line and Off-line Partial Evaluation: Semantic Specifications and Correctness Proofs"
       sb:institution: "Yale University"
       sb:year: "1993"
       (ps-link "http://compose.labri.fr/documentation/papers/sem-fope.ps.gz"))
      
      (sb:article
       sb:key: "GluckJorg:HOSC97"
       sb:author: "Robert Glück and Jesper Jørgensen"
       sb:title: "An Automatic Program Generator for Multi-Level Specialization"
       sb:journal: "Higher-Order and Symbolic Computing"
       sb:volume: "Vol. 10"
       sb:number: "No. 2"
       sb:month: "July"
       sb:year: "1997"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-325.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-325.pdf"))
      
      (sb:article
       sb:key: "PLT:Pub:Flan:99"
       sb:author: "Cormac Flanagan and Matthias Felleisen"
       sb:title: "Componential Set-Based Analysis"
       sb:journal: "Transactions on Programming Languages and Systems"
       sb:year: "1999"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/toplas99-ff.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Ser:Ser:94b"
       sb:author: "Manuel Serrano and Pierre Weis"
       sb:title: "1+1=1: an optimizing Caml compiler"
       sb:booktitle: "Workshop on ML and its Applications, WML'94"
       sb:year: "1994"
       (ps-link "http://repository.readscheme.org/ftp/papers/serrano94optimizing.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/serrano94optimizing.pdf"))
      
      (sb:techreport
       sb:key: "Oz:entry29"
       sb:author: "Pee Hong Chen and Daniel P. Friedman"
       sb:title: "Prototyping Data Flow by Translation Into Scheme"
       sb:number: "Computer Science Technical Report 147"
       sb:institution: "Indiana University"
       sb:month: "August"
       sb:year: "1983")
      
      (sb:techreport
       sb:key: "Oz:entry37"
       sb:author: "Guillermo J. Rozas"
       sb:title: "Liar, an Algol-like Compiler for Scheme"
       sb:number: "S. B. Thesis"
       sb:institution: "Massachusetts Institute of Technology"
       sb:month: "January"
       sb:year: "1984")
      
      (sb:inproceedings
       sb:key: "Fuse:92-12"
       sb:author: "Morry Katz and Daniel Weise"
       sb:title: "Towards a New Perspective on Partial Evaluation"
       sb:booktitle: "1992 ACM SIGPLAN Workshop on Partial Evaluation and Semantics-Directed Program Manipulation, pp. 67-74, San Francisco, June, 1992"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-12.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-12.pdf"))
      
      (sb:techreport
       sb:key: "Oz:entry38"
       sb:author: "Richard Schooler and James W. Stamos"
       sb:title: "Proposal For a Small Scheme Implementation"
       sb:number: "MIT LCS Memo TM-267"
       sb:institution: "Massachusetts Institute of Technology"
       sb:month: "October"
       sb:year: "1984")
      
      (sb:inproceedings
       sb:key: "Oz:entry43"
       sb:author: "Amitabh Srivastava, Don Oxley and Aditya Srivastava"
       sb:title: "An (other) Integration of Logic and Functional Programming"
       sb:booktitle: "Proceedings of the Symposium on Logic Programming"
       sb:pages: "254-260"
       sb:publisher: "IEEE"
       sb:year: "1985")
      
      (sb:article
       sb:key: "Oz:entry149"
       sb:author: "James S. Miller and Guillermo J. Rozas"
       sb:title: "Free Variables and First-Class Environments"
       sb:journal: "Lisp and Symbolic Computation: An International Journal"
       sb:volume: "3"
       sb:number: "4"
       sb:pages: "107-141"
       sb:publisher: "Kluwer Academic Publishers"
       sb:year: "1991")
      
      (sb:techreport
       sb:key: "Oz:entry47"
       sb:author: "Pee Hong Chen and L. David Sabbagh"
       sb:title: "Scheme as an Interactive Graphics Programming Environment"
       sb:number: "Computer Science Technical Report No. 166"
       sb:institution: "Indiana University"
       sb:month: "March"
       sb:year: "1985")
      
      (sb:inproceedings
       sb:key: "ConselDanvy:FPCA91"
       sb:author: "Charles Consel and Olivier Danvy"
       sb:title: "For a Better Support of Static Data Flow"
       sb:booktitle: "Functional Programming and Computer Architecture (FPCS'91)"
       sb:year: "1991"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/danvy/Papers/consel-danvy-fpca91.ps.gz"))
      
      (sb:phdthesis
       sb:key: "PLT:Thesis:Flan"
       sb:author: "Cormac Flanagan"
       sb:title: "Effective Static Debugging via Componential Set-Based Analysis"
       sb:school: "Rice University"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/thesis-flanagan.ps.gz"))
      
      (sb:inproceedings
       sb:key: "MeunierSilva:SW2003"
       sb:author: "Philippe Meunier and Daniel Silva"
       sb:title: "From Python to PLT Scheme"
       sb:booktitle: "Scheme Workshop 2003"
       sb:month: "November"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2003/SPY.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2003/SPY.pdf"))
      
      (sb:techreport
       sb:key: "Oz:entry50"
       sb:author: "Michael A. Eisenberg"
       sb:title: "Bochser: An Integrated Scheme Programming System"
       sb:number: "MIT Computer Science Technical Report 349"
       sb:institution: "Massachusetts Institute of Technology"
       sb:month: "October"
       sb:year: "1985")
      
      (sb:techreport
       sb:key: "PLT:TR:96-266"
       sb:author: "Cormac Flanagan and Matthias Felleisen"
       sb:title: "Modular and Polymorphic Set-Based Analysis: Theory and Practice"
       sb:number: "TR 96-266"
       sb:institution: "Rice University"
       sb:year: "1996"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tr96-266.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry58"
       sb:author: "Mitchell Wand"
       sb:title: "Finding the Source of Type Errors"
       sb:booktitle: "Conference Record of the Thirteenth Annual Symposium on Principles of Programming Languages"
       sb:pages: "38-43"
       sb:publisher: "ACM"
       sb:year: "1986")
      
      (sb:inbook
       sb:key: "Oz:entry59"
       sb:author: "Mitchell Wand"
       sb:title: "From Interpreter to Compiler: A Representational Derivation"
       sb:booktitle: "Programs as Data Objects"
       sb:number: "Lecture Notes in Computer Science"
       sb:year: "1986")
      
      (sb:inproceedings
       sb:key: "Jorgensen:POPL92"
       sb:author: "Jesper Jørgensen"
       sb:title: "Generating a compiler for a lazy language by partial evaluation"
       sb:booktitle: "Principles of Programming Languages (POPL'92)"
       sb:month: "January"
       sb:year: "1992"
       (ps-link "ftp://ftp.diku.dk/diku/semantics/papers/D-98.ps.Z")
       (acmdl-link "http://doi.acm.org/10.1145/143165.143220"))
      
      (sb:article
       sb:key: "Oz:entry95"
       sb:author: "Hal Abelson and Gerald Jay Sussman"
       sb:title: "Lisp: A Language for Stratified Design"
       sb:journal: "BYTE"
       sb:pages: "207-218"
       sb:month: "February"
       sb:year: "1988")
      
      (sb:techreport
       sb:key: "Oz:entry102"
       sb:author: "John Franco and Daniel P. Friedman"
       sb:title: "Creating Efficient Programs by Exchanging Data for Procedures"
       sb:number: "Computer Science Technical Report 245"
       sb:institution: "Indiana University"
       sb:month: "March"
       sb:year: "1988")
      
      (sb:inproceedings
       sb:key: "Oz:entry108"
       sb:author: "Steven R. Vegdahl and Uwe F. Pleban"
       sb:title: "The Runtime Environment for Screme, a Scheme Implementation on the 88000"
       sb:booktitle: "Proceedings of the Third International Conference on Architectural Support for Programming Languages and Operating Systems"
       sb:pages: "172-182"
       sb:month: "April"
       sb:year: "1989"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=68199&coll=portal&dl=ACM"))
      
      (sb:article
       sb:key: "Oz:entry110"
       sb:author: "J. Michael Ashley and Richard M. Salter"
       sb:title: "A Revised State Space Model for a Logic Programming Embedding in Scheme"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:techreport
       sb:key: "Hickey2002TAGroup"
       sb:author: "Timothy J. Hickey, R. Alterman, J. Langton"
       sb:title: "TA Groupware"
       sb:number: "Tech. Rep. CS-02-222"
       sb:institution: "Brandeis University"
       sb:month: "January"
       sb:year: "2002"
       (pdf-link "http://www.cs.brandeis.edu/~tim/Papers/sigcse-tatool.ps"))
      
      (sb:article
       sb:key: "Sumii:HOSC-Onpe2001"
       sb:author: "Eijiro Sumii and Naoki Kobayashi"
       sb:title: "A Hybrid Approach to Online and Offline Partial Evaluation"
       sb:journal: "Higher-Order and Symbolic Computation"
       sb:volume: "Vol. 14"
       sb:number: "No. 2/3"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://web.yl.is.s.u-tokyo.ac.jp/~sumii/pub/onpe-hosc.ps.gz")
       (pdf-link "http://web.yl.is.s.u-tokyo.ac.jp/~sumii/pub/onpe-hosc.pdf"))
      
      (sb:article
       sb:key: "Oz:entry112"
       sb:author: "Olivier Danvy"
       sb:title: "Combiner Logiquement en Scheme"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:article
       sb:key: "PLT:Pub:Car:96"
       sb:author: "Robert Cartwright and Matthias Felleisen"
       sb:title: "Program Verification through Soft Typing"
       sb:journal: "Computing Surveys"
       sb:year: "1996"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/cs96-cf.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry113"
       sb:author: "Vincent Delacour"
       sb:title: "Picolo Expresso"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:techreport
       sb:key: "PLT:TR:95-254"
       sb:author: "Cormac Flanagan and Matthias Felleisen"
       sb:title: "Set-Based Analysis for Full Scheme and Its Use in Soft-Typing"
       sb:number: "TR 95-254"
       sb:institution: "Rice University"
       sb:year: "1995"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tr95-254.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry115"
       sb:author: "Simon M. Kaplan and Joseph P. Loyall"
       sb:title: "GARP/Scheme: Implementing a Concurrent, Object-Based Language"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:techreport
       sb:key: "IU-SR:Sim:92b"
       sb:author: "John Wiseman Simmons II, Stanley Jefferson and Daniel P. Friedman"
       sb:title: "Language Extension via First-class Interpreters"
       sb:institution: "Computer Science Department, Indiana University"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/iucstr362.ps.gz"))
      
      (sb:inproceedings
       sb:key: "sw2:Gas"
       sb:author: "Martin Gasbichler, Holger Gast"
       sb:title: "Soft Interfaces: Typing Scheme At The Module Level"
       sb:booktitle: "2nd Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2001/gasbichler.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2001/gasbichler.pdf"))
      
      (sb:article
       sb:key: "PLT:Pub:Wri:95"
       sb:author: "Andrew K. Wright"
       sb:title: "Simple Imperative Polymorphism"
       sb:journal: "LISP and Symbolic Computation"
       sb:year: "1995"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/lasc95-w.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry116"
       sb:author: "Tan Gon Kim and Bernard P. Zeigler"
       sb:title: "The DEVS-Scheme Modelling and Simulation Environment"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:techreport
       sb:key: "Fuse:92-9"
       sb:author: "Erik Ruf and Daniel Weise"
       sb:title: "Avoiding Redundant Specialization During Partial Evaluation"
       sb:month: "April"
       sb:year: "1992"
       sb:institution: "Stanford Computer Systems Laboratory"
       sb:number: "CSL-TR-92-518"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-9.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-9.pdf"))
      
      (sb:inproceedings
       sb:key: "JScm:And99"
       sb:author: "Kenneth R. Anderson and Timothy J. Hickey"
       sb:title: "Reflecting Java into Scheme"
       sb:booktitle: "Proceedings of Reflection 99"
       sb:number: "Lecture Notes in Computer Science, v. 1616"
       sb:year: "1999")
      
      (sb:inproceedings
       sb:key: "Shi:Shi:88"
       sb:author: "Olin Shivers"
       sb:title: "Control-flow analysis in Scheme"
       sb:booktitle: "Proceedings of the SIGPLAN '88 Conference on Programming Language Design and Implementation"
       sb:month: "June"
       sb:year: "1988"
       (ps-link "http://repository.readscheme.org/ftp/papers/shivers-pldi88.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/shivers-pldi88.pdf"))
      
      (sb:article
       sb:key: "Oz:entry119"
       sb:author: "Andréa Pic and Michel Briand"
       sb:title: "Visual Programming with Generators"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:techreport
       sb:key: "nwu:depri:00"
       sb:author: "Mark DePristo"
       sb:title: "SINTL: A Strongly-Typed Generic Intermediate Language for Scheme"
       sb:institution: "Northwestern University"
       sb:month: "May"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/depristo00sintl.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/depristo00sintl.pdf"))
      
      (sb:article
       sb:key: "PLT:Pub:Wri:94a"
       sb:author: "Andrew K. Wright and Matthias Felleisen"
       sb:title: "A Syntactic Approach to Type Soundness"
       sb:journal: "Information and Computation"
       sb:year: "1994"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/ic94-wf.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry122"
       sb:author: "Robert Strandh"
       sb:title: "OOOZ, A multi-User Programming Environment Based on Scheme"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:inproceedings
       sb:key: "debray:pepm97"
       sb:author: "Saumya Debray"
       sb:title: "Resource-bounded partial evaluation"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM'97)"
       sb:month: "June"
       sb:year: "1997"
       (acmdl-link "http://doi.acm.org/10.1145/258993.259017"))
      
      (sb:article
       sb:key: "Oz:entry123"
       sb:author: "Nitsan Séniak"
       sb:title: "Compilation de Scheme par spécialisation explicite"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Wri:94b"
       sb:author: "Andrew K. Wright and Robert Cartwright"
       sb:title: "A Practical Soft Type System for Scheme"
       sb:booktitle: "Proceedings of LFP 94"
       sb:year: "1994"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/lfp94-wc.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry124"
       sb:author: "John Wade Ulrich"
       sb:title: "Enumeration Algorithms and Non-deterministic Programming in Scheme"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:techreport
       sb:key: "LMor:Mor95a"
       sb:author: "Luc Moreau"
       sb:title: "The Semantics of Scheme with Future"
       sb:number: "Technical Report M95/7"
       sb:institution: "University of Southampton"
       sb:year: "1995"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/future.ps.gz"))
      
      (sb:techreport
       sb:key: "Shi:Shi:90d"
       sb:author: "Olin Shivers"
       sb:title: "Super-beta: Copy, constant, and lambda propagation in Scheme"
       sb:month: "May"
       sb:year: "1990"
       sb:institution: "CMU School of Computer Science"
       (ps-link "http://repository.readscheme.org/ftp/papers/shivers-superbeta.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/shivers-superbeta.pdf"))
      
      (sb:article
       sb:key: "Oz:entry126"
       sb:author: "Williams Ludwell Harrison III"
       sb:title: "The Interprocedural Analysis and Automatic Parallellization of Scheme Programs"
       sb:journal: "Lisp and Symbolic Computation: An International Journal"
       sb:volume: "2"
       sb:number: "3/4"
       sb:publisher: "Kluwer Academic Publishers"
       sb:month: "October"
       sb:year: "1989"
       (sb:abstract "Lisp and its descendants are among the most important and widely used of programming languages. At the same time, parallelism in the architecture of computer systems is becoming commonplace. There is a pressing need to extend the technology of automatic parallelization that has become available to Fortran programmers of parallel machines, to the realm of Lisp programs and symbolic computing. In this paper we present a comprehensive approach to the compilation of Scheme programs for shared-memory multiprocessors. Our strategy has two principal components: interprocedural analysis and program restructuring. We introduce procedure strings and stack configurations as a framework in which to reason about interprocedural side-effects and object lifetimes, and develop a system of interprocedural analysis, using abstract interpretation, that is used in the dependence analysis and memory management of Scheme programs. We introduce the transformations of exit-loop translation and recursion splitting to treat the control structures of iteration and recursion that arise commonly in Scheme programs. We propose an alternative representation for s-expressions that facilitates the parallel creation and access of lists. We have implemented these ideas in a parallelizing Scheme compiler and run-time system, and we complement the theory of our work with \"snapshots\" of programs during the restructuring process, and some preliminary performance results of the execution of object codes produced by the compiler."))
      
      (sb:unpublished
       sb:key: "debray:rbpe98"
       sb:author: "Saumya Debray"
       sb:title: "Resource-bounded partial evaluation"
       sb:institution: "University of Arizona"
       sb:month: "January"
       sb:year: "1998"
       (ps-link "http://www.cs.arizona.edu/people/debray/papers/rbpa.ps"))
      
      (sb:inproceedings
       sb:key: "Oz:entry136"
       sb:author: "Chris Hanson"
       sb:title: "Efficient Stack Allocation for Tail-Recursive Languages"
       sb:booktitle: "Proceedings of the 1990 ACM Conference on Lisp and Functional Programming"
       sb:month: "June"
       sb:year: "1990"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=91603&coll=Portal"))
      
      (sb:inproceedings
       sb:key: "Fuse:92-11"
       sb:author: "Erik Ruf and Daniel Weise"
       sb:title: "Improving the Accuracy of Higher-Order Specialization using Control Flow Analysis"
       sb:booktitle: "1992 ACM SIGPLAN Workshop on Partial Evaluation and Semantics-Directed Program Manipulation, pp. 67-74, San Francisco, June, 1992"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-11.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-11.pdf"))
      
      (sb:inproceedings
       sb:key: "debray:cc99"
       sb:author: "Saumya Debray, Robert Muth and Scott Watterson"
       sb:title: "Link-time Improvement of Scheme Programs"
       sb:booktitle: "International Conference on Compiler Construction (CC'99)"
       sb:month: "March"
       sb:year: "1999"
       (ps-link "http://www.cs.arizona.edu/people/debray/papers/scheme.ps"))
      
      (sb:unpublished
       sb:key: "bawden:quasi-unpublished"
       sb:author: "Alan Bawden"
       sb:title: "Quasiquotation in Lisp"
       sb:year: "1999"
       (ps-link "http://people.csail.mit.edu/alan/ftp/quasiquote-v59.ps.gz"))
      
      (sb:mastersthesis
       sb:key: "Oz:entry139"
       sb:author: "Dan Teodosiu"
       sb:title: "HARE: A Compiler for Scheme"
       sb:number: "Master's Thesis"
       sb:institution: "Bucharest Polytechnic Institute"
       sb:month: "June"
       sb:year: "1990")
      
      (sb:inproceedings
       sb:key: "LMor:Mor95c"
       sb:author: "Luc Moreau"
       sb:title: "Non-speculative and Upward Invocation of Continuations in a Parallel Language"
       sb:booktitle: "International Joint Conference on Theory and Practice of Software Development (TAPSOFT/FASE'95)"
       sb:number: "number 915 in Lecture Notes in Computer Science"
       sb:pages: "726-740"
       sb:month: "May"
       sb:year: "1995"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/tapsoft95.ps.gz"))
      
      (sb:techreport
       sb:key: "PLT:TR:93-218"
       sb:author: "Andrew K. Wright and Robert Cartwright"
       sb:title: "A Practical Soft Type System for Scheme"
       sb:number: "TR 93-218"
       sb:institution: "Rice University"
       sb:year: "1993"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tr93-218.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Ager:PEPM02"
       sb:author: "Mads Sig Ager, Olivier Danvy and Henning Korsholm Rohde"
       sb:title: "On Obtaining Knuth, Morris, and Pratt's String Matcher by Partial Evaluation"
       sb:booktitle: "ASIAN Symposium on Partial Evaluation and Semantics-Based Program Manipulation, ASIA-PEPM '02"
       sb:month: "July"
       sb:year: "2002"
       (ps-link "http://www.brics.dk/RS/02/32/BRICS-RS-02-32.ps.gz")
       (pdf-link "http://www.brics.dk/RS/02/32/BRICS-RS-02-32.pdf"))
      
      (sb:article
       sb:key: "NEC:Jag94g"
       sb:author: "Suresh Jagannathan"
       sb:title: "TS-Scheme: Distributed Data Structures in Lisp"
       sb:journal: "Lisp and Symbolic Computation"
       sb:month: "December"
       sb:year: "1994"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/lasc94-1.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Shi:Shi:90c"
       sb:author: "Olin Shivers"
       sb:title: "Useless-variable elimination"
       sb:booktitle: "Proceedings of the Workshop on Static Analysis of Equational, Functional and Logic Programs"
       sb:month: "April"
       sb:year: "1990"
       (ps-link "http://repository.readscheme.org/ftp/papers/shivers-useless.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/shivers-useless.pdf"))
      
      (sb:inbook
       sb:key: "Oz:entry148"
       sb:author: "Alessandro Forin"
       sb:title: "Futures"
       sb:booktitle: "Topics in Advanced Language Implementation"
       sb:publisher: "The MIT Press"
       sb:year: "1991")
      
      (sb:unpublished
       sb:key: "malmkjaer:D-50"
       sb:author: "Karoline Malmkjær and Olivier Danvy"
       sb:title: "Preprocessing by Specialization"
       sb:year: "1990")
      
      (sb:inbook
       sb:key: "Oz:entry151"
       sb:author: "Uwe F. Pleban"
       sb:title: "Compilation Issues in the Screme Implementation for the 88000"
       sb:booktitle: "Topics in Advanced Language Implementation"
       sb:publisher: "The MIT Press"
       sb:year: "1991")
      
      (sb:inproceedings
       sb:key: "jorgensen:D-59"
       sb:author: "Jesper Jørgensen"
       sb:title: "Generating a Pattern Matching Compiler by Partial Evaluation"
       sb:booktitle: "Glasgow Workshop on Functional Programming"
       sb:month: "July"
       sb:year: "1990"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-59.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-59.pdf"))
      
      (sb:techreport
       sb:key: "LMor:Mor95e"
       sb:author: "Luc Moreau"
       sb:title: "The Semantics of Future in the Presence of First-Class Continuations and Side-effects"
       sb:number: "Technical Report M95/3"
       sb:institution: "University of Southampton"
       sb:month: "November"
       sb:year: "1995"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/tech95-3.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry154"
       sb:author: "Brian Beckman"
       sb:title: "A Scheme for Little Languages in Interactive Graphics"
       sb:journal: "Software-Practice and Experience"
       sb:institution: "John Wiley & Sons, Ltd"
       sb:volume: "21"
       sb:number: "2"
       sb:pages: "187-207"
       sb:month: "Feb"
       sb:year: "1991")
      
      (sb:article
       sb:key: "Oz:entry155"
       sb:author: "Dan Teodosiu"
       sb:title: "HARE: An Optimizing Portable Compiler for Scheme"
       sb:journal: "ACM Sigplan Notices"
       sb:volume: "26"
       sb:number: "1"
       sb:month: "Jan"
       sb:year: "1991"
       (ps-link "http://www-flash.stanford.edu/~dant/papers/hare.ps.Z")
       (pdf-link "http://citeseer.nj.nec.com/rd/2643588%2C30693%2C1%2C0.25%2CDownload/http%3A%252F%252Fciteseer.nj.nec.com%252Fcache%252Fpapers%252Fcs%252F5642%252Fhttp%253AzSzzSzwww-flash.stanford.eduzSz%257EdantzSzpaperszSzhare.pdf/hare-an-optimizing-portable.pdf"))
      
      (sb:techreport
       sb:key: "LMor:Mor96b"
       sb:author: "Luc Moreau"
       sb:title: "Correctness of a Distributed-Memory Model for Scheme"
       sb:number: "Technical Report M96/3"
       sb:institution: "University of Southampton"
       sb:year: "1996"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/tech963.ps.gz"))
      
      (sb:article
       sb:key: "NEC:Jag94d"
       sb:author: "Suresh Jagannathan, Stephen Weeks and James Philbin"
       sb:title: "A Concurrent Abstract Interpreter"
       sb:journal: "Lisp and Symbolic Computation"
       sb:month: "April"
       sb:year: "1994"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/lasc94-2.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry169"
       sb:author: "Fritz Henglein"
       sb:title: "Global Tagging Optimization by Type Inference"
       sb:booktitle: "Proceedings of the 1992 ACM Conference on Lisp and Functional Programming"
       sb:pages: "205-215"
       sb:month: "June"
       sb:year: "1992"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=141542&coll=Portal"))
      
      (sb:mastersthesis
       sb:key: "jorgensen:D-95"
       sb:author: "Jesper Jørgensen"
       sb:title: "Compiler Generation by Partial Evaluation"
       sb:school: "DIKU, University of Copenhagen"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-95.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-95.pdf"))
      
      (sb:inproceedings
       sb:key: "ACM:henglein95"
       sb:author: "Fritz Henglein and Jakob Rehof"
       sb:title: "Safe polymorphic type inference for a Dynamically Typed Language: Translating Scheme to ML"
       sb:booktitle: "ACM Conference on Functional Programming Languages and Computer Architecture (FPCA'95)"
       sb:year: "1995"
       (ps-link "http://citeseer.nj.nec.com/rd/2643588%2C140352%2C1%2C0.25%2CDownload/http%253A%252F%252Fciteseer.nj.nec.com/compress/0/papers/cs/7451/http%253AzSzzSzresearch.microsoft.comzSz%257ErehofzSzfpca95.ps.gz/henglein95safe.ps")
       (pdf-link "http://citeseer.nj.nec.com/rd/2643588%2C140352%2C1%2C0.25%2CDownload/http%253A%252F%252Fciteseer.nj.nec.com/cache/papers/cs/7451/http%253AzSzzSzresearch.microsoft.comzSz%257ErehofzSzfpca95.pdf/henglein95safe.pdf"))
      
      (sb:inproceedings
       sb:key: "Jorgensen:DIKUSummer98"
       sb:author: "Jesper Jørgensen"
       sb:title: "Similix: A Self-Applicable Partial Evaluator for Scheme"
       sb:booktitle: "Partial Evaluation: Practice and Theory (DIKU International Summer School 1998)"
       sb:volume: "LNCS 1706"
       sb:month: "June"
       sb:year: "1998"
       (sb:link sb:url: "http://www.dina.dk/~jesper/PEsummerschool/Similix/similix.html"
                sb:format: "html"))
      
      (sb:mastersthesis
       sb:key: "SuratiSMThesis"
       sb:author: "Rajeev J. Surati"
       sb:title: "Practical Partial Evaluation"
       sb:school: "Massachussets Institute of Technology"
       sb:month: "May"
       sb:year: "1995"
       (ps-link "http://repository.readscheme.org/ftp/papers/surati-smthesis.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/surati-smthesis.pdf"))
      
      (sb:article
       sb:key: "malmkjaer:D-103"
       sb:author: "Karoline Malmkjær"
       sb:title: "On Static Properties of Specialized Programs"
       sb:journal: "BIGRE journal"
       sb:number: "number 74"
       sb:month: "October"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-103.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-103.pdf"))
      
      (sb:phdthesis
       sb:key: "SperberThesis"
       sb:author: "Michael Sperber"
       sb:title: "Computer-Assisted Lighting Design and Control"
       sb:school: "University of Tübingen"
       sb:month: "June"
       sb:year: "2001"
       (ps-link "http://w210.ub.uni-tuebingen.de/dbt/volltexte/2001/266/pdf/lula-thesis.pdf"))
      
      (sb:inproceedings
       sb:key: "CulpepperFelleisen:SW2003"
       sb:author: "Ryan Culpepper and Matthias Felleisen"
       sb:title: "Well-Shaped Macros"
       sb:booktitle: "Scheme Workshop 2003"
       sb:month: "November"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2003/macros.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2003/macros.pdf"))
      
      (sb:inproceedings
       sb:key: "thiemann95a"
       sb:author: "Michael Sperber and Peter Thiemann"
       sb:title: "The Essence of LR Parsing"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation PEPM '95"
       sb:pages: "146-155"
       sb:month: "June"
       sb:year: "1995"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/pepm95.ps.gz"))
      
      (sb:inproceedings
       sb:key: "thiemann95b"
       sb:author: "Peter Thiemann and Robert Glück"
       sb:title: "The Generation of a Higher-Order Online Partial Evaluator"
       sb:booktitle: "Fuji Workshop on Functional and Logic Programming"
       sb:month: "July"
       sb:year: "1995"
       sb:pages: "239-253"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/fuji95.ps.gz"))
      
      (sb:techreport
       sb:key: "danvy-schultz:brics-97-6"
       sb:author: "Olivier Danvy and Ulrik Pagh Schultz"
       sb:title: "Lambda-Dropping: Transforming Recursive Equations into Programs with Block Structure "
       sb:institution: "University of Aarhus"
       sb:number: "RS-97-6"
       sb:month: "March"
       sb:year: "1997"
       (ps-link "http://www.brics.dk/RS/97/6/BRICS-RS-97-6.ps.gz")
       (pdf-link "http://www.brics.dk/RS/97/6/BRICS-RS-97-6.pdf"))
      
      (sb:inproceedings
       sb:key: "thiemann96a"
       sb:author: "Michael Sperber, Robert Glück and Peter Thiemann"
       sb:title: "Bootstrapping Higher-Order Program Transformers from Interpreters"
       sb:booktitle: "Proceedings 11th Annual ACM Symposium on Applied Computing, SAC (SAC '96)"
       sb:pages: "408-413"
       sb:month: "February"
       sb:year: "1996"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/bootstrap-transformers.ps.gz"))
      
      (sb:techreport
       sb:key: "asai96a"
       sb:author: "Kenichi Asai, Hidehiko Masuhara and Akinori Yonezawa"
       sb:title: "Partial Evaluation of Call-by-value lambda-calculus with Side-effects"
       sb:institution: "University of Tokyo"
       sb:number: "96-04"
       sb:month: "November"
       sb:year: "1996"
       (ps-link "http://www.is.s.u-tokyo.ac.jp/tech-reports/TR96-04-a4.ps.gz"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Car:91"
       sb:author: "Robert Cartwright and Mike Fagan"
       sb:title: "Soft Typing"
       sb:booktitle: "Proceedings of PLDI 91"
       sb:year: "1991"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/pldi91-cf.ps.gz"))
      
      (sb:inproceedings
       sb:key: "thiemann96b"
       sb:author: "Peter Thiemann"
       sb:title: "Cogen in Six Lines"
       sb:booktitle: "Proc. ACM SIGPLAN International Conference on Functional Programming 1996"
       sb:pages: "180-189"
       sb:month: "May"
       sb:year: "1996"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/icfp96.ps.gz"))
      
      (sb:techreport
       sb:key: "danvy-schultz:brics-99-27"
       sb:author: "Olivier Danvy and Ulrik Pagh Schultz"
       sb:title: "Lambda-Dropping: Transforming Recursive Equations into Programs with Block Structure "
       sb:institution: "University of Aarhus"
       sb:number: "RS-99-27"
       sb:month: "September"
       sb:year: "1999"
       (ps-link "http://www.brics.dk/RS/99/27/BRICS-RS-99-27.ps.gz")
       (pdf-link "http://www.brics.dk/RS/99/27/BRICS-RS-99-27.pdf"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag94c"
       sb:author: "Suresh Jagannathan, Stephen Weeks"
       sb:title: "Analyzing Stores and References in Parallel Symbolic Languages"
       sb:booktitle: "ACM Symposium on Lisp and Functional Programming (LFP94)"
       sb:month: "June"
       sb:year: "1994"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/lfp94.ps.gz"))
      
      (sb:inproceedings
       sb:key: "thiemann96c"
       sb:author: "Michael Sperber and Peter Thiemann"
       sb:title: "Realistic Compilation by Partial Evaluation"
       sb:booktitle: "Proc. of the ACM SIGPLAN '96 Conference on Programming Language Design and Implementation"
       sb:pages: "206-214"
       sb:month: "May"
       sb:year: "1996"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/realistic.ps.gz"))
      
      (sb:techreport
       sb:key: "malmkjaer:D-148"
       sb:author: "Karoline Malmkjær"
       sb:title: "Predicting Properties of Specialized Programs"
       sb:number: "PhD proposal"
       sb:institution: "Kansas State University"
       sb:month: "November"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-148.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-148.pdf"))
      
      (sb:article
       sb:key: "ConselDanvy:Journal-Tutorial"
       sb:author: "Charles Consel and Olivier Danvy"
       sb:title: "Partial Evaluation: Principles and Perspectives"
       sb:journal: "Journees Francophones des Langages Applicatifs"
       sb:month: "February"
       sb:year: "1993"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/danvy/Papers/consel-danvy-tutorial-PE.ps.gz"))
      
      (sb:inproceedings
       sb:key: "thiemann96d"
       sb:author: "Peter Thiemann"
       sb:title: "Towards Partial Evaluation of Full Scheme"
       sb:booktitle: "Reflection'96"
       sb:pages: "95-106"
       sb:month: "April"
       sb:year: "1996"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/reflection96.ps.gz"))
      
      (sb:inproceedings
       sb:key: "thiemann96e"
       sb:author: "Peter Thiemann and Michael Sperber"
       sb:title: "Polyvariant Expansion and Compilergenerators"
       sb:booktitle: "PSI-96: Andrei Ershov Second International Memorial Conference, Perspectives of System Informatics"
       sb:month: "June"
       sb:year: "1996"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/poly.ps.gz"))
      
      (sb:techreport
       sb:key: "BerlinWu:Scheme86-AIM-1040"
       sb:author: "Andrew A. Berlin and Henry M. Wu"
       sb:title: "Scheme86: A System for Interpreting Scheme"
       sb:number: "AIM-1040"
       sb:institution: "Massachusetts Institute of Technology"
       sb:month: "April"
       sb:year: "1988"
       (sb:abstract "Scheme86 is a computer system designed to interpret programs written in the Scheme dialect of Lisp. A specialized architecture, coupled with new techniques for optimizing register management in the interpreter, allows Scheme86 to execute interpreted Scheme at a speed comparable to that of compiled Lisp on conventional workstations.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1040.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1040.pdf"))
      
      (sb:inproceedings
       sb:key: "thiemann96f"
       sb:author: "Peter Thiemann"
       sb:title: "Implementing Memoization for Partial Evaluation"
       sb:booktitle: "Programming Languages, Implementations, Logics, and Programs (PLILP '96)"
       sb:pages: "198-212"
       sb:number: "volume 1140 of Lecture Notes in Computer Science"
       sb:month: "September"
       sb:year: "1996"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/memoization.ps.gz"))
      
      (sb:inproceedings
       sb:key: "malmkjaer:D-149"
       sb:author: "Karoline Malmkjær"
       sb:title: "Predicting Properties of Residual Programs"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM'92)"
       sb:month: "June"
       sb:year: "1992")
      
      (sb:inproceedings
       sb:key: "thiemann97a"
       sb:author: "Michael Sperber and Peter Thiemann"
       sb:title: "Two for the Price of One: Composing Partial Evaluation and Compilation"
       sb:booktitle: "Proc. of the ACM SIGPLAN '97 Conference on Programming Language Design and Implementation"
       sb:month: "June"
       sb:year: "1997"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/compose.ps.gz"))
      
      (sb:inproceedings
       sb:key: "GomardJones:DIKUSummer98"
       sb:author: "Carsten K. Gomard and Neil D. Jones"
       sb:title: "Partial evaluation of lambda calculus"
       sb:booktitle: "1998 DIKU International Summerschool"
       sb:volume: "LNCS 1706"
       sb:year: "1999"
       (ps-link "http://repository.readscheme.org/ftp/papers/pe98-school/D-413.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/pe98-school/D-413.pdf"))
      
      (sb:inproceedings
       sb:key: "mossin:D-158"
       sb:author: "Christian Mossin"
       sb:title: "Partial evaluation of General Parsers"
       sb:booktitle: "Partial Evaluation and Semantics Based Program Manipulation (PEPM'93)"
       sb:month: "June"
       sb:year: "1993"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-158.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-158.pdf"))
      
      (sb:inproceedings
       sb:key: "thiemann97b"
       sb:author: "Michael Sperber, Peter Thiemann and Herbert Klaeren"
       sb:title: "Distributed Partial Evaluation"
       sb:booktitle: "Proc. of the Second International Symposium on Parallel Symbolic Computation, PASCO'97"
       sb:pages: "80-87"
       sb:month: "July"
       sb:year: "1997"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/distpe.ps.gz"))
      
      (sb:book
       sb:key: "JonesGomardSestoft:PEBook"
       sb:author: "Neil D. Jones, Carsten K. Gomard and Peter Sestoft"
       sb:title: "Partial Evaluation and Automatic Program Generation"
       sb:publisher: "Prentice-Hall International"
       sb:year: "1993"
       (ps-link "http://www.dina.kvl.dk/~sestoft/pebook/jonesgomardsestoft.ps")
       (pdf-link "http://www.dina.kvl.dk/~sestoft/pebook/jonesgomardsestoft-letter.pdf")
       (sb:link sb:url: "http://www.dina.kvl.dk/~sestoft/pebook/pebook.html"
                sb:format: "book website"))
      
      (sb:inproceedings
       sb:key: "thiemann98"
       sb:author: "Simon Helsen and Peter Thiemann"
       sb:title: "Two Flavors of Offline Partial Evaluation"
       sb:booktitle: "Asian Computing Science Conference, ASIAN'98"
       sb:month: "December"
       sb:year: "1998"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/flavors.ps.gz"))
      
      (sb:inproceedings
       sb:key: "gluck:D-170"
       sb:author: "Robert Glück and A. V. Klimov"
       sb:title: "Occam's Razor in Metacomputation: the Notion of a Perfect Process Tree"
       sb:booktitle: "Static Analysis 1993"
       sb:year: "1993"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-170.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-170.pdf"))
      
      (sb:phdthesis
       sb:key: "Esp:95"
       sb:author: "David Espinosa"
       sb:title: "Semantic Lego"
       sb:institution: "Department of Computer Science, Columbia University"
       sb:year: "1995"
       (ps-link "http://www.swiss.ai.mit.edu/~dae/papers/thesis.ps.Z"))
      
      (sb:inproceedings
       sb:key: "thiemann99a"
       sb:author: "Peter Thiemann"
       sb:title: "Higher-Order Code Splicing"
       sb:booktitle: "European Symposium on Programming, ESOP '99"
       sb:number: "volume 1576 of Lecture Notes in Computer Science"
       sb:month: "March"
       sb:year: "1999"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/esop99.ps.gz"))
      
      (sb:mastersthesis
       sb:key: "mossin:D-174"
       sb:author: "Christian Mossin"
       sb:title: "Polymorphic Binding Time Analysis"
       sb:school: "DIKU, University of Copenhagen"
       sb:month: "July"
       sb:year: "1993"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-174.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-174.pdf"))
      
      (sb:unpublished
       sb:key: "thiemann99b"
       sb:author: "Peter Thiemann and Dirk Dussart"
       sb:title: "Partial Evaluation for Higher-Order Languages with State"
       sb:month: "July"
       sb:year: "1999"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/mlpe.ps.gz"))
      
      (sb:manual
       sb:key: "thiemann2000a"
       sb:author: "Peter Thiemann"
       sb:title: "The PGG System - User Manual"
       sb:institution: "University at Freiburg"
       sb:month: "March"
       sb:year: "2000"
       (ps-link "http://www.informatik.uni-freiburg.de/proglang/software/pgg/pgg-manual.ps.gz")
       (sb:link sb:url: "http://www.informatik.uni-freiburg.de/proglang/software/pgg/pgg-manual.html"
                sb:format: "html"))
      
      (sb:article
       sb:key: "DanvyMalmkjaerPalsberg:TOPLAS96"
       sb:author: "Olivier Danvy, Karoline Malmkjær and Jens Palsberg"
       sb:title: "Eta-Expansion Does the Trick"
       sb:journal: "Transactions on Programming Languages and Systems"
       sb:volume: "Vol. 18"
       sb:number: "No. 4"
       sb:month: "November"
       sb:year: "1996"
       (ps-link "http://www.brics.dk/RS/96/17/BRICS-RS-96-17.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oops:Wil:92a"
       sb:author: "Paul R. Wilson, Michael S. Lam and Thomas G. Moher"
       sb:title: "Caching Considerations for Generational Garbage Collection"
       sb:booktitle: "1992 ACM Symposium on Lisp and Functional Programming"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.utexas.edu/pub/garbage/cache.ps"))
      
      (sb:techreport
       sb:key: "Shi:Shi:90a"
       sb:author: "Olin Shivers"
       sb:title: "Data-flow analysis and type recovery in Scheme"
       sb:number: "Technical Report CMU-CS-90-115"
       sb:institution: "CMU School of Computer Science"
       sb:month: "March"
       sb:year: "1990"
       (ps-link "http://repository.readscheme.org/ftp/papers/shivers-trec.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/shivers-trec.pdf"))
      
      (sb:inproceedings
       sb:key: "thiemann2000b"
       sb:author: "Peter Thiemann"
       sb:title: "Compiling Adaptive Programs by Partial Evaluation"
       sb:booktitle: "CC 2000"
       sb:number: "volume 1781 of Lecture Notes in Computer Science"
       sb:month: "March"
       sb:year: "2000"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/compile.ps.gz"))
      
      (sb:inproceedings
       sb:key: "IU-SR:Tun:92a"
       sb:author: "Sho-Huan Simon Tung"
       sb:title: "Interactive Modular Programming in Scheme"
       sb:booktitle: "Proceedings of the 1992 ACM Conference on Lisp and Functional Programming"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/imp.ps.gz"))
      
      (sb:inproceedings
       sb:key: "thiemann2000c"
       sb:author: "Simon Helsen and Peter Thiemann"
       sb:title: "Fragmental Specialization"
       sb:booktitle: "Semantics, Applications and Implementation of Program Generation (SAIG'00)"
       sb:number: "volume 1927 of Lecture Notes in Computer Science"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://www.informatik.uni-freiburg.de/~thiemann/papers/saig2000.ps.gz"))
      
      (sb:article
       sb:key: "Dyb:Tung:96"
       sb:author: "Sho-Huan Simon Tung and R. Kent Dybvig"
       sb:title: "Reliable Interactive Programming with Modules"
       sb:journal: "Lisp and Symbolic Computation"
       sb:volume: "9, 4"
       sb:pages: "343-358"
       sb:month: "December"
       sb:year: "1996"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/lasc-imp.ps.gz"))
      
      (sb:unpublished
       sb:key: "Oleg:Oleg2002b"
       sb:author: "Oleg Kiselyov"
       sb:title: "Monadic Programming in Scheme"
       sb:month: "January"
       sb:year: "2002"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Scheme/monad-in-Scheme.html"
                sb:format: "html"))
      
      (sb:article
       sb:key: "Steckler2002"
       sb:author: "Paul A. Steckler"
       sb:title: "Component Support in PLT Scheme"
       sb:journal: "Software Practice and Experience"
       sb:volume: "32"
       sb:number: "10"
       sb:year: "2002"
       sb:pages: "933-954")
      
      (sb:techreport
       sb:key: "Que:Que93d"
       sb:author: "Christian Queinnec"
       sb:title: "Literate programming from scheme to TEX"
       sb:number: "Research Report LIX RR 93.05"
       sb:institution: "Laboratoire d'Informatique de l'École Polytechnique"
       sb:month: "November"
       sb:year: "1993")
      
      (sb:inproceedings
       sb:key: "SW00:Ste"
       sb:author: "Paul A. Steckler"
       sb:title: "Component support for PLT Scheme"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "67"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/steckler.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/steckler.pdf"))
      
      (sb:inproceedings
       sb:key: "IUplg:Tun94"
       sb:author: "M. Esen Tuna, Steven D. Johnson and Robert G. Burger"
       sb:title: "Continuations in Hardware-Software Codesign"
       sb:booktitle: "IEEE Proceedings of the International Conference on Computer Design"
       sb:pages: "264-269"
       sb:month: "October"
       sb:year: "1994"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/techreports/TR409.ps.Z"))
      
      (sb:techreport
       sb:key: "DanvyMalmkjaerPalsberg:Eta95"
       sb:author: "Olivier Danvy, Karoline Malmkjær and Jens Palsberg"
       sb:title: "Eta-Expansion Does the Trick"
       sb:institution: "University of Aarhus"
       sb:number: "BRICS RS-95-41"
       sb:month: "November"
       sb:year: "1995"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/danvy/Papers/danvy-malmkjaer-palsberg-brics95.ps.gz"))
      
      (sb:inproceedings
       sb:key: "gluck:D-186"
       sb:author: "Robert Glück and Jesper Jørgensen"
       sb:title: "Generating Optimizing Specializers"
       sb:booktitle: "IEEE International Conference on Computer Languages"
       sb:year: "1994"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-186.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-186.pdf"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Ste:99"
       sb:author: "Paul A. Steckler"
       sb:title: "MysterX: A Scheme Toolkit for Building Interactive Applications with COM"
       sb:booktitle: "Proceedings of TOOLS 99"
       sb:organization: "IEEE"
       sb:year: "1999"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/tools99.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Dyb:Bur:95"
       sb:author: "Robert G. Burger, Oscar Waddell and R. Kent Dybvig"
       sb:title: "Register Allocation Using Lazy Saves, Eager Restores, and Greedy Shuffling"
       sb:booktitle: "ACM SIGPLAN 1995 Conference on Programming Language Design and Implementation"
       sb:pages: "130-138"
       sb:month: "June"
       sb:year: "1995"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/Reg-Alloc-PLDI95.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que90a"
       sb:author: "Christian Queinnec"
       sb:title: "Struggle, The First Denotational Game"
       sb:booktitle: "EuroPal '90 - European Conference on Lisp and its Practical Applications"
       sb:pages: "351-361"
       sb:month: "March"
       sb:year: "1990"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/strugman.ps.gz"))
      
      (sb:inproceedings
       sb:key: "gluck:D-195"
       sb:author: "Robert Glück and Jesper Jørgensen"
       sb:title: "Generating Transformers for Deforestation and Supercompilation"
       sb:booktitle: "Static Analysis 1994"
       sb:year: "1994"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-195.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-195.pdf"))
      
      (sb:unpublished
       sb:key: "Blume:sc-draft"
       sb:author: "Matthias Blume"
       sb:title: "Separate Compilation for Scheme, draft paper"
       sb:year: "1997"
       (pdf-link "http://ttic.uchicago.edu/~blume/papers/scm-sc.pdf"))
      
      (sb:inproceedings
       sb:key: "ConselDanvy:POPL93-Tutorial"
       sb:author: "Charles Consel and Olivier Danvy"
       sb:title: "Tutorial Notes on Partial Evaluation"
       sb:booktitle: "Principles of Programming Languages (POPL'93)"
       sb:month: "January"
       sb:year: "1993"
       (ps-link "http://compose.labri.fr/documentation/papers/pe-tutorial.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que90c"
       sb:author: "Christian Queinnec"
       sb:title: "Compilation of Non-Linear, Second Order Patterns on S-Expressions"
       sb:booktitle: "International Workshop PLILP '90 - Programming Language: Implementation and Logic Programming"
       sb:number: "Lecture Notes in Computer Science 456"
       sb:pages: "340-357"
       sb:month: "August"
       sb:year: "1990"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/csm.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que96a"
       sb:author: "Christian Queinnec and David DeRoure"
       sb:title: "Sharing code through first-class environments"
       sb:booktitle: "Proceedings of ICFP'96 International Conference on Functional Programming"
       sb:pages: "251-261"
       sb:month: "May"
       sb:year: "1996"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/modenv.ps.gz"))
      
      (sb:article
       sb:key: "Que:Que89"
       sb:author: "Christian Queinnec"
       sb:title: "Validation Suite Generation"
       sb:journal: "Revue Bigre+Globule"
       sb:number: "(65)"
       sb:pages: "134-144"
       sb:month: "July"
       sb:year: "1989"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/vsg.ps.gz"))
      
      (sb:article
       sb:key: "NEC:Jag94b"
       sb:author: "Suresh Jagannathan"
       sb:title: "Meta-Level Building Blocks for Modular Systems"
       sb:journal: "ACM Transactions on Programming Languages and Systems"
       sb:month: "May"
       sb:year: "1994"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/toplas94.ps.gz"))
      
      (sb:article
       sb:key: "Fee:Fee:92"
       sb:author: "Marc Feeley, Guy Lapalme"
       sb:title: "Closure Generation Based on Viewing LAMBDA As EPSILON Plus COMPILE"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "Vol. 17, No. 4"
       sb:pages: "251-267"
       sb:year: "1992"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/complang92.ps.gz"))
      
      (sb:mastersthesis
       sb:key: "Fee:Fee:86"
       sb:author: "Marc Feeley"
       sb:title: "Deux approches à l'implantation du language Scheme"
       sb:school: "Université de Montréal"
       sb:month: "May"
       sb:year: "1986"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/msc.ps.gz"))
      
      (sb:inproceedings
       sb:key: "gluck:D-380"
       sb:author: "Robert Glück, John Hatcliff and Jesper Jørgensen"
       sb:title: "Generalization in Hierarchies of Online Program Specialization Systems"
       sb:booktitle: "Logic-Based Program Synthesis and Transformation 1999"
       sb:year: "1999"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-380.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-380.pdf"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag94a"
       sb:author: "Suresh Jagannathan"
       sb:title: "Dynamic Modules in Higher-Order Languages"
       sb:booktitle: "IEEE International Conference on Computer Languages"
       sb:month: "May"
       sb:year: "1994"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/iccl94.ps.gz"))
      
      (sb:techreport
       sb:key: "Shi:Shi:95"
       sb:author: "Olin Shivers and Brian D. Carlstrom"
       sb:title: "Scsh reference manual"
       sb:month: "November"
       sb:year: "1995"
       sb:institution: "MIT Laboratory for Computer Science"
       (ps-link "ftp://ftp.scsh.net/pub/scsh/0.6/scsh-manual.ps.gz"))
      
      (sb:mastersthesis
       sb:key: "glenstrup:D-401"
       sb:author: "Arne J. Glenstrup"
       sb:title: "Terminator II: Stopping Partial Evaluation of Fully Recursive Programs"
       sb:school: "DIKU, University of Copenhagen"
       sb:month: "June"
       sb:year: "1999"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-401.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-401.pdf"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag92d"
       sb:author: "Suresh Jagannathan"
       sb:title: "Reflective Building Blocks for Modular Systems"
       sb:booktitle: "International Workshop on Reflection and Meta-Level Architectures"
       sb:month: "November"
       sb:year: "1992"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/reflect92.ps.gz"))
      
      (sb:inproceedings
       sb:key: "gluck:D-490"
       sb:author: "Robert Glück, Y. Kawada and T. Hashimoto"
       sb:title: "Transforming Interpreters into Inverse Interpreters by Partial Evaluation"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM 2003)"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-490.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-490.pdf"))
      
      (sb:article
       sb:key: "Oz:entry55"
       sb:author: "Matthias Felleisen and Daniel P. Friedman"
       sb:title: "A Closer Look At Export and Import Statements"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "11"
       sb:number: "1"
       sb:pages: "29-37"
       sb:publisher: "Pergamon Press"
       sb:year: "1986")
      
      (sb:techreport
       sb:key: "Danvy:BRICS-96-13"
       sb:author: "Olivier Danvy and René Vestergaard"
       sb:title: "Semantics-Based Compiling: A Case Study in Type-Directed Partial Evaluation"
       sb:institution: "University of Aarhus"
       sb:number: "BRICS 96-13"
       sb:month: "May"
       sb:year: "1996"
       (ps-link "http://www.brics.dk/RS/96/13/BRICS-RS-96-13.ps.gz")
       (pdf-link "http://www.brics.dk/RS/96/13/BRICS-RS-96-13.pdf"))
      
      (sb:inproceedings
       sb:key: "Rees:Rees:92"
       sb:author: "Jonathan A. Rees and Bruce R. Donald"
       sb:title: "Program mobile robots in Scheme"
       sb:booktitle: "Proceedings of the 1992 IEEE International Conference on Robotics and Automation"
       sb:pages: "2681-2688"
       sb:year: "1992"
       (ps-link "http://mumble.net/~jar/pubs/scheme-mobile-robots.ps"))
      
      (sb:phdthesis
       sb:key: "Dyb:Dyb:87"
       sb:author: "R. Kent Dybvig"
       sb:title: "Three Implementation Models for Scheme"
       sb:school: "University of North Carolina, Computer Science Department"
       sb:number: "Technical Report 87-011"
       sb:month: "April"
       sb:year: "1987"
       (pdf-link "http://www.cs.indiana.edu/~dyb/papers/3imp.pdf"))
      
      (sb:phdthesis
       sb:key: "Banavar1995"
       sb:author: "Guruduth S. Banavar"
       sb:title: "An Application Framework For Compositional Modularity"
       sb:school: "University of Utah"
       sb:year: "1995"
       (ps-link "http://citeseer.nj.nec.com/cache/papers/cs/2623/http:zSzzSzwww.cs.utah.eduzSz~banavarzSzthesis.ps.gz/banavar95application.ps.gz")
       (pdf-link "http://citeseer.nj.nec.com/cache/papers/cs/2623/http:zSzzSzwww.cs.utah.eduzSz~banavarzSzthesis.pdf/banavar95application.pdf"))
      
      (sb:inproceedings
       sb:key: "goldberg:sw2002"
       sb:author: "Mayer Goldberg"
       sb:title: "A variadic extension of Curry's fixed-point combinator"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2002/goldberg.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2002/goldberg.pdf"))
      
      (sb:techreport
       sb:key: "Ser:Ser:00b"
       sb:author: "Manuel Serrano"
       sb:title: "Vers une programmation fonctionnelle praticable"
       sb:booktitle: "These d'Habilitation 2000"
       sb:year: "2000"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/serrano-hdr00.ps.gz"))
      
      (sb:techreport
       sb:key: "Fee:Fee:97a"
       sb:author: "Marc Feeley, Martin Larose"
       sb:title: "Etos: an Erlang to Scheme compiler"
       sb:number: "Rapport technique 1079"
       sb:institution: "département d'informatique et r.o., Université de Montréal"
       sb:month: "Aout"
       sb:year: "1997"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/tr1079.ps.gz"))
      
      (sb:article
       sb:key: "ndjones:D-498"
       sb:author: "Neil D. Jones and Arne J. Glenstrup"
       sb:title: "Partial Evaluation Termination Analysis and Specialization-Point Insertion"
       sb:journal: "Transactions on Programming Languages and Systems"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-498.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-498.pdf"))
      
      (sb:inproceedings
       sb:key: "SW00:And"
       sb:author: "Kenneth R. Anderson, Timothy J. Hickey and Peter Norvig"
       sb:title: "SILK: a playful blend of Scheme and Java"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "13"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/anderson.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/anderson.pdf"))
      
      (sb:techreport
       sb:key: "Suss:75"
       sb:author: "Gerald Jay Sussman and Guy Lewis Steele, Jr."
       sb:title: "Scheme: An Interpreter for Extended Lambda Calculus"
       sb:number: "AI Lab Memo AIM-349"
       sb:institution: "MIT AI Lab"
       sb:month: "December"
       sb:year: "1975"
       (sb:abstract "Inspired by ACTORS [Greif and Hewitt] [Smith and Hewitt], we have implemented an interpreter for a LISP-like language, SCHEME, based on the lambda calculus [Church], but extended for side effects, multiprocessing, and process synchronization. The purpose of this implementation is tutorial. We wish to: (1) alleviate the confusion caused by Micro-PLANNER, CONNIVER, etc. by clarifying the embedding of non-recursive control structures in a recursive host language like LISP. (2) explain how to use these control structures, independent of such issues as pattern matching and data base manipulation. (3) have a simple concrete experimental domain for certain issues of programming semantics and style.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-349.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-349.pdf"))
      
      (sb:inproceedings
       sb:key: "Sarkar:icfp2004"
       sb:author: "Dipanwita Sarkar, Oscar Waddell and R. Kent Dybvig"
       sb:title: "A Nanopass Infrastructure for Compiler Education"
       sb:booktitle: "International Conference on Functional Programming 2004 (ICFP2004)"
       sb:month: "September"
       sb:year: "2004")
      
      (sb:inproceedings
       sb:key: "Dyb:Wad:97"
       sb:author: "Oscar Waddell and R. Kent Dybvig"
       sb:title: "Fast and Effective Procedure Inlining"
       sb:booktitle: "Proceedings of the Fourth International Symposium on Static Analysis (SAS '97)"
       sb:series: "Springer-Verlag Lecture Notes in Computer Science"
       sb:volume: "1302"
       sb:pages: "35-52"
       sb:month: "September"
       sb:year: "1997"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/sas-97.ps.gz"))
      
      (sb:techreport
       sb:key: "Ste:76a"
       sb:author: "Guy Lewis Steele, Jr. and Gerald Jay Sussman"
       sb:title: "Lambda: The Ultimate Imperative"
       sb:number: "AI Lab Memo AIM-353"
       sb:institution: "MIT AI Lab"
       sb:month: "March"
       sb:year: "1976"
       (sb:abstract "We demonstrate how to model the following common programmingsconstructs in terms of an applicative order language similar to LISP: Simple Recursion, Iteration, Compound Statements and Expressions, GO TO and Assignment, Continuation-Passing, Escape Expressions, Fluid Variables, Call by Name, Call by Need, and Call by Reference. The models require only (possibly self-referent) lambda application, conditionals, and (rarely) assignment. No complex data structures such as stacks are used. The models are transparent, involving only local syntactic transformations. This paper is partly tutorial in intent, gathering all the models together for purposes of context.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-353.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-353.pdf"))
      
      (sb:techreport
       sb:key: "Ste:76b"
       sb:author: "Guy Lewis Steele, Jr."
       sb:title: "Lambda: The Ultimate Declarative"
       sb:number: "AI Lab Memo AIM-379"
       sb:institution: "MIT AI Lab"
       sb:month: "November"
       sb:year: "1976"
       (sb:abstract "In this paper, a sequel to \"LAMBDA: The U ltimate Imperative\", a new view of LAMBDA as a renaming operator is presented and contrasted with the usual functional view taken by LISP. This view, combined with the view of function invocation as a kind of generalized GOTO, leads to several new insights into the nat ure of the LISP evaluation mechanism and the symmetry between form and function, evaluation and application, and control and environment. It also complements Hewitt's actors theory nicely, explaining the intent of environment manipulation as cleanly, generally, and intu itively as the actors theory explains control structures. The relationship between functional and continuation-passing styles of progra mming is also clarified. This view of LAMBDA leads directly to a number of specific techniques for use by an optimizing compiler: 1.) Temporary locations and user-declared variables may be allocated in a uniform manner. 2.) Procedurally defined data structures may compi le into code as good as would be expected for data defined by the more usual declarative means. 3.) Lambda-calculus-theoretic models of such constructs as GOTO, DO loops, call-by-name, etc. may be used directly as macros, the expansion of which may then compile into code  as good as that produced by compilers which are designed especially to handle GOTO, DO, etc. The necessary characteristics of such a compiler designed according to this philosophy are discussed. Such a compiler is to be built in the near future as a testing ground for these ideas.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-379.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-379.pdf"))
      
      (sb:techreport
       sb:key: "Ste:77"
       sb:author: "Guy Lewis Steele, Jr."
       sb:title: "Debunking the 'Expensive Procedure Call' Myth, or, Procedure Call Implementations Considered Harmful, or, Lambda: The Ultimate GOTO"
       sb:number: "AI Lab Memo AIM-443"
       sb:institution: "MIT AI Lab"
       sb:month: "October"
       sb:year: "1977"
       (sb:abstract "Folklore states that GOTO statements are 'cheap', while procedure calls are 'expensive'. This myth is largely a result of poorly designed language implementations. The historical growth of this myth is considered. Both theoretical ideas and an existing implementation are discussed which debunk this myth. It is shown that the unrestricted use of procedure calls permits great stylistic freedom. In particular, any flowchart can be written as a 'structured' program without introducing extra variables. The difficulty with the GOTO statement and the procedure call is characterized as a conflict between abstract programming concepts and concrete language constructs.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-443.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-443.pdf"))
      
      (sb:techreport
       sb:key: "Ste:78a"
       sb:author: "Guy Lewis Steele, Jr. and Gerald Jay Sussman"
       sb:title: "The Art of the Interpreter of, the Modularity Complex (Parts Zero, One, and Two)"
       sb:number: "AI Lab Memo AIM-453"
       sb:institution: "MIT AI Lab"
       sb:month: "May"
       sb:year: "1978"
       (sb:abstract "We examine the effects of various language design decisions on theprogramming styles available to a user of the language, with particular emphasis on the ability to incrementally construct modular systems. At each step we exhibit an interactive meta- circular interpreter for the language under consideration. Each new interpreter is the result of an incremental change to a previous interpreter. We explore the consequences of various variable binding disciplines and the introduction of side effects. We find that dynamic scoping is unsuitable for constructing procedural abstractions, but has another role as agent of modularity, being a structured form of side effect. More general side effects are also found to be necessary to promote modular style. We find that the notion of side effect and the notion of equality (object identity) are mutually constraining; to define one is to define the other. The interpreters we exhibit are all written in a simple dialect of LISP, and all implement LISP-like languages. A subset of these interpreters constitute a partial historical reconstruction of the actual evaluation of LISP.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-453.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-453.pdf"))
      
      (sb:mastersthesis
       sb:key: "Ste:78b"
       sb:author: "Guy Lewis Steele, Jr."
       sb:title: "RABBIT: A Compiler for SCHEME"
       sb:number: "AI Lab Technical Report AITR-474"
       sb:school: "MIT AI Lab"
       sb:month: "May"
       sb:year: "1978"
       (sb:abstract "We have developed a compiler for the lexically-scoped dialect of LISP known as SCHEME. The compiler knows relatively little about specific data manipulation primitives such as arithmetic operators, but concentrates on general issues of environment and control. Rather than having specialized knowledge about a large variety of control and environment constructs, the compiler handles only a small basis set which reflects the semantics of lambda- calculus. All of the traditional imperative constructs, such as sequencing, assignment, looping, GOTO, as well as many standard LISP constructs such as AND, OR, and COND, are expressed in macros in terms of the applicative basis set. A small number of optimization techniques, coupled with the treatment of function calls as GOTO statements, serve to produce code as good as that produced by more traditional compilers. The macro approach enables speedy implementation of new constructs as desired without sacrificing efficiency in the generated code. A fair amount of analysis is devoted to determining whether environments may be stack-allocated or must be heap- allocated. Heap-allocated environments are necessary in general because SCHEME (unlike Algol 60 and Algol 68, for example) allows procedures with free lexically scoped variables to be returned as the values of other procedures; the Algol stack-allocation environment strategy does not suffice. The methods used here indicate that a heap- allocating generalization of the \"display\" technique leads to an efficient implementation of such \"upward funargs\". Moreover, compile- time optimization and analysis can eliminate many \"funargs\" entirely, and so far fewer environment structures need be allocated at run time than might be expected. A subset of SCHEME (rather than triples, for example) serves as the representation intermediate between the optimized SCHEME code and the final output code; code is expressed in this subset in the so-called continuation-passing style. As a subset of SCHEME, it enjoys the same theoretical properties; one could even apply the same optimizer used on the input code to the intermediate code. However, the subset is so chosen that all temporary quantities are made manifest as variables, and no control stack is needed to evaluate it. As a result, this apparently applicative representation admits an imperative interpretation which permits easy transcription to final imperative machine code. These qualities suggest that an applicative language like SCHEME is a better candidate for an UNCOL than the more imperative candidates proposed to date.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-474.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-474.pdf"))
      
      (sb:techreport
       sb:key: "Ste:79"
       sb:author: "Guy Lewis Steele, Jr. and Gerald Jay Sussman"
       sb:title: "Design of LISP-based Processors, or SCHEME: A Dielectric LISP, or Finite Memories Considered Harmful, or LAMBDA: The Ultimate Opcode"
       sb:number: "AI Lab Memo AIM-514"
       sb:institution: "MIT AI Lab"
       sb:month: "March"
       sb:year: "1979"
       (sb:abstract "We present a design for a class of computers whose 'instruction sets' are based on LISP. LISP, like traditional stored-program machine languages and unlike most high-level languages, conceptually stores programs and data in the same way and explicitly allows programs to be manipulated as data. LISP is therefore a suitable language around which to design a stored-program computer architecture. LISP differs from traditional machine languages in that the program/data storage is conceptually an unordered set of linked record structures of various sizes, rather than an ordered, indexable vector of integers or bit fields of fixed size. The record structures can be organized into trees or graphs. An instruction set can be designed for programs expressed as such trees. A processor can interpret these trees in a recursive fashion, and provide automatic storage management for the record structures. We describe here the basic ideas behind the architecture, and for concreteness give a specific instruction set (on which variations are certainly possible). We also discuss the similarities and differences between these ideas and those of traditional architectures. A prototype VLSI microprocessor has been designed and fabricated for testing. It is a small-scale version of the ideas presented here, containing a sufficiently complete instruction interpreter to execute small programs, and a rudimentary storage allocator. We intend to design and fabricate a full-scale VLSI version of this architecture in 1979.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-514.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-514.pdf"))
      
      (sb:inproceedings
       sb:key: "Herman:icfp2004"
       sb:author: "David Herman and Philippe Meunier"
       sb:title: "Improving the Static Analysis of Embedded Languages via Partial Evaluation"
       sb:booktitle: "International Conference on Functional Programming (ICFP2004)"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://www.ccs.neu.edu/home/dherman/research/publications/dsel-cfa.ps")
       (pdf-link "http://www.ccs.neu.edu/home/dherman/research/publications/dsel-cfa.pdf"))
      
      (sb:inproceedings
       sb:key: "Cli:98"
       sb:author: "William D. Clinger"
       sb:title: "Proper tail recursion and space efficiency"
       sb:booktitle: "Proceedings of the 1998 ACM Conference on Programming Language Design and Implementation"
       sb:month: "June"
       sb:year: "1998"
       sb:pages: "174-185"
       (ps-link "ftp://ftp.ccs.neu.edu/pub/people/will/tail.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Ser:Ser:92"
       sb:author: "Manuel Serrano"
       sb:title: "Rgc: un générateur d'analyseurs lexicaux efficaces en Scheme"
       sb:booktitle: "Proceedings of JFLA'92"
       sb:year: "1992"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/serrano-jfla92.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Asai:pepm04"
       sb:author: "Kenichi Asai"
       sb:title: "Offline Partial Evaluation for Shift and Reset"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM '04)"
       sb:month: "August"
       sb:year: "2004"
       (ps-link "http://pllab.is.ocha.ac.jp/~asai/papers/pepm04.ps.gz"))
      
      (sb:article
       sb:key: "Cli:91b"
       sb:author: "William D. Clinger"
       sb:title: "Hygienic macros through explicit renaming"
       sb:journal: "Lisp Pointers"
       sb:number: "IV(4)"
       sb:pages: "25-28"
       sb:month: "December"
       sb:year: "1991"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/prop/exrename.ps.gz"))
      
      (sb:article
       sb:key: "Briot86"
       sb:author: "Jean-Pierre Briot, Pierre Cointe and Emmanuel Saint-James"
       sb:title: "Reécriture et récursion dans une fermeture - Etude dans un Lisp à liaison superficielle - Application aux objets"
       sb:journal: "Actes des Journées AFCET-Informatique Langages Orientés Objet, BIGRE+Globule"
       sb:number: "48"
       sb:pages: "90-100"
       sb:month: "January"
       sb:year: "1986")
      
      (sb:techreport
       sb:key: "Haa:90"
       sb:author: "Kenneth Haase"
       sb:title: "Soft Objects: A Paradigm For Object Oriented Programming"
       sb:institution: "MIT AI Lab"
       sb:number: "AIM-1014"
       sb:month: "March"
       sb:year: "1990"
       (sb:abstract "This paper introduces soft objects, a new paradigm for object oriented programming. This paradigm replaces the traditional notion of object classes with the specification of transforming procedures which transform simpler objects into more complicated objects. These transforming procedures incrementally construct new objects by adding new state or providing handlers for new messages. Unlike other incremental approaches (e.g. the inherited exist handlers of Object Logo [Drescher, 1987]), transforming procedures are strict functions which always return new objects; rather than conflating objects and object abstractions (classes), soft objects distinctly separates objects and their abstractions. The composition of these transforming procedures replaces the inheritance schemes of class oriented approaches; order of composition of transforming procedure makes explicit the inheritance indeterminancies introduced by multiple super classes. Issues regarding semantics, efficiency, and security are discussed in the context of several alternative implementation models and the code of a complete implementation is provided in an appendix.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1014.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1014.pdf"))
      
      (sb:techreport
       sb:key: "Ganz:00"
       sb:author: "Steven E. Ganz and Daniel P. Friedman"
       sb:title: "A Modular Monadic Interpreter In Scheme With Objects"
       sb:institution: "Indiana University Computer Science Department"
       sb:number: "Technical Report #548"
       sb:month: "October"
       sb:year: "2000"
       (ps-link "http://www.cs.indiana.edu/hyplan/sganz/publications/sfp00/paper.ps")
       (pdf-link "http://www.cs.indiana.edu/hyplan/sganz/publications/sfp00/paper.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2004:normark"
       sb:author: "Kurt Nørmark"
       sb:title: "Scheme Program Documentation Tools"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/normark.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/normark.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2:Lux"
       sb:author: "Augustin Lux"
       sb:title: "Tools for Automatic Interface Generation in Scheme"
       sb:booktitle: "2nd Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2001/lux.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2001/lux.pdf"))
      
      (sb:inproceedings
       sb:key: "SW00:Luc"
       sb:author: "Bradley J. Lucier"
       sb:title: "Numerical partial differential equations in Scheme"
       sb:booktitle: "Scheme and Functional Programming 2000"
       sb:pages: "27"
       sb:month: "September"
       sb:year: "2000"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2000/lucier.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2000/lucier.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2004:carl"
       sb:author: "Stephen Paul Carl"
       sb:title: "A Framework for Memory-Management Experimentation"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/carl.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/carl.pdf"))
      
      (sb:inproceedings
       sb:key: "Kel:89"
       sb:author: "Richard A. Kelsey and Paul Hudak"
       sb:title: "Realistic Compilation by Program Transformation"
       sb:booktitle: "Principles of Programming Languages (POPL89)"
       sb:organization: "Association of Computer Machinery"
       sb:month: "January"
       sb:year: "1989"
       (ps-link "http://citeseer.nj.nec.com/rd/0%2C179975%2C1%2C0.25%2CDownload/http://citeseer.nj.nec.com/compress/0/papers/cs/210/ftp:zSzzSzftp.nj.nec.comzSzpubzSzkelseyzSzcomp-by-prog-trans.ps.gz/kelsey89realistic.ps")
       (pdf-link "http://citeseer.nj.nec.com/rd/0%2C179975%2C1%2C0.25%2CDownload/http://citeseer.nj.nec.com/cache/papers/cs/210/ftp:zSzzSzftp.nj.nec.comzSzpubzSzkelseyzSzcomp-by-prog-trans.pdf/kelsey89realistic.pdf"))
      
      (sb:inproceedings
       sb:key: "Ganz:99"
       sb:author: "Steven E. Ganz, Daniel P. Friedman and Mitchell Wand"
       sb:title: "Trampolined Style"
       sb:booktitle: "International Conference on Functional Programming (ICFP 99)"
       sb:month: "September"
       sb:year: "1999"
       (ps-link "http://www.cs.indiana.edu/hyplan/sganz/publications/icfp99/paper.ps")
       (pdf-link "http://www.cs.indiana.edu/hyplan/sganz/publications/icfp99/paper.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2:Fee"
       sb:author: "Marc Feeley"
       sb:title: "A Better API for First-Class Continuations"
       sb:booktitle: "2nd Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2001/feeley.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2001/feeley.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2:Lis"
       sb:author: "Kirill Lisovsky"
       sb:title: "Scheme program souce code as a semistructured data"
       sb:booktitle: "2nd Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2001/lisovsky.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2001/lisovsky.pdf"))
      
      (sb:techreport
       sb:key: "Roz:93"
       sb:author: "Guillermo J. Rozas"
       sb:title: "Translucent Procedures, Abstraction Without Opacity"
       sb:institution: "MIT AI Lab"
       sb:number: "AITR-1427"
       sb:month: "October"
       sb:year: "1993"
       (sb:abstract "This report introduces TRANSLUCENT PROCEDURES as a new mechanism for implementing behavioral abstractions. Like an ordinary procedure, a translucent procedure can be invoked, and thus provides an obvious way to capture a BEHAVIOR. Translucent procedures, like ordinary procedures, can be manipulated as first-class objects and combined using functional composition. But unlike ordinary procedures, translucent procedures have structure that can be examined in well-specified non- destructive ways, without invoking the procedure.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-1427.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-1427.pdf"))
      
      (sb:article
       sb:key: "asai96b"
       sb:author: "Kenichi Asai, S. Matsuoka and Akinori Yonezawa"
       sb:title: "Duplication and Partial Evaluation - For a Better Understanding of Reflective Languages"
       sb:journal: "Lisp and Symbolic Computation"
       sb:number: "Vol. 9, Nos. 2/3"
       sb:pages: "203-241"
       sb:month: "May/June"
       sb:year: "1996"
       (ps-link "http://pllab.is.ocha.ac.jp/~asai/papers/lasc96-letter.ps.gz"))
      
      (sb:techreport
       sb:key: "asai95"
       sb:author: "Kenichi Asai, Hidehiko Masuhara, S. Matsuoka and Akinori Yonezawa"
       sb:title: "Partial evaluation as a compiler for reflective languages"
       sb:institution: "University of Tokyo"
       sb:number: "95-10"
       sb:month: "December"
       sb:year: "1995"
       (ps-link "http://www.is.s.u-tokyo.ac.jp/tech-reports/TR95-10-a4.ps.gz"))
      
      (sb:inproceedings
       sb:key: "sw2004:bagrak"
       sb:author: "Ilya Bagrak and Olin Shivers"
       sb:title: "trx: Regular-Tree Expressions, now in Scheme"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/bagrak.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/bagrak.pdf"))
      
      (sb:techreport
       sb:key: "asai94"
       sb:author: "Kenichi Asai, S. Matsuoka and Akinori Yonezawa"
       sb:title: "Roles of a Partial Evaluator for the Reflective Language Black"
       sb:institution: "University of Tokyo"
       sb:number: "94-11"
       sb:month: "May"
       sb:year: "1994"
       (ps-link "http://www.is.s.u-tokyo.ac.jp/tech-reports/TR94-11-letter.ps.gz"))
      
      (sb:inproceedings
       sb:key: "sw2:Bay"
       sb:author: "Fred Bayer"
       sb:title: "LispMe: An Implementation of Scheme for the PalmPilot"
       sb:booktitle: "2nd Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2001/bayer.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2001/bayer.pdf"))
      
      (sb:inproceedings
       sb:key: "Dyb:Wad:98"
       sb:author: "Oscar Waddell and R. Kent Dybvig"
       sb:title: "Visualizing partial evaluation"
       sb:booktitle: "ACM Computing Surveys Symposium on Partial Evaluation"
       sb:volume: "30(3es):24-es"
       sb:month: "September"
       sb:year: "1998"
       (acmdl-link "http://doi.acm.org/10.1145/289121.289145"))
      
      (sb:inproceedings
       sb:key: "sw2:Dub"
       sb:author: "Danny Dubé, Marc Feeley"
       sb:title: "Demand-Driven Type Analysis: an Introduction"
       sb:booktitle: "2nd Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2001/dube.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2001/dube.pdf"))
      
      (sb:inproceedings
       sb:key: "Ser:Ser:95b"
       sb:author: "Manuel Serrano and Pierre Weis"
       sb:title: "Bigloo: a portable and optimizing compiler for strict functional languages"
       sb:booktitle: "Static Analysis Symposium, SAS'95"
       sb:month: "September"
       sb:year: "1995"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/sw-sas95.ps.gz"))
      
      (sb:inproceedings
       sb:key: "sw2004:machenry"
       sb:author: "Mike MacHenry and Jacob Matthews"
       sb:title: "Topsl: a Domain-Specific Language for On-Line Surveys"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/machenry.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/machenry.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2:Pes"
       sb:author: "Frédéric Peschanski"
       sb:title: "Jargons: Experimenting Composable Domain-Specific Languages"
       sb:booktitle: "2nd Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2001/peschanski.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2001/peschanski.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2:Meu"
       sb:author: "Philippe Meunier, Robert Bruce Findler, Paul A. Steckler, Mitchell Wand"
       sb:title: "Selectors Make Set-Based Analysis Too Hard"
       sb:booktitle: "2nd Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2001/steckler.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2001/steckler.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2:Wid"
       sb:author: "Manfred Widera"
       sb:title: "An Algorithm for Checking the Disjointness of Types"
       sb:booktitle: "2nd Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2001/widera.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2001/widera.pdf"))
      
      (sb:article
       sb:key: "Rees:Kel:94"
       sb:author: "Richard A. Kelsey and Jonathan A. Rees"
       sb:title: "A tractable Scheme implementation"
       sb:journal: "Lisp and Symbolic Computation"
       sb:number: "7(4)"
       sb:pages: "315-335"
       sb:year: "1994"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp-lasc/scheme48.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp-lasc/scheme48.pdf"))
      
      (sb:inproceedings
       sb:key: "asai97"
       sb:author: "Kenichi Asai, Hidehiko Masuhara and Akinori Yonezawa"
       sb:title: "Partial Evaluation of Call-by-value Lambda-calculus with Side-effects"
       sb:booktitle: "ACM SIGPLAN Conference on Partial Evaluation and Semantics-Based Program Manipulation (PEPM '97)"
       sb:pages: "12-21"
       sb:month: "June"
       sb:year: "1997"
       (ps-link "http://pllab.is.ocha.ac.jp/~asai/papers/pepm97.ps.gz"))
      
      (sb:inproceedings
       sb:key: "sw2004:owens"
       sb:author: "Scott Owens, Matthew Flatt, Olin Shivers and Benjamin McMullan"
       sb:title: "Lexer and Parser Generators in Scheme"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/owens.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/owens.pdf"))
      
      (sb:inproceedings
       sb:key: "NEC:Phil92a"
       sb:author: "James Philbin"
       sb:title: "Customizable Policy Management in the Sting Operating System"
       sb:booktitle: "US/Japan Workshop on Parallel Symbolic Computing, Springer-Verlag LNCS 748"
       sb:month: "October"
       sb:year: "1992"
       sb:pages: "380-401"
       ;(ps-link "ftp://ftp.nj.nec.com/pub/pls/psc92.ps")
       )
      
      (sb:unpublished
       sb:key: "orbak94"
       sb:author: "Peter Ørbæk"
       sb:title: "POPE: An On-line Partial Evaluator"
       sb:institution: "University of Aarhus"
       sb:month: "June"
       sb:year: "1994"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/poe/pope.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Dyb:Hil:95"
       sb:author: "Erik Hilsdale, J. Michael Ashley, R. Kent Dybvig and Daniel P. Friedman"
       sb:title: "Compiler Construction Using Scheme"
       sb:booktitle: "First International Symposium, Functional Programming Languages in Education"
       sb:year: "1995"
       (pdf-link "http://repository.readscheme.org/ftp/papers/jmashley/fple95.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2004:gray"
       sb:author: "Kathryn E. Gray and Matthew Flatt"
       sb:title: "Compiling Java to PLT Scheme"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/gray.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/gray.pdf"))
      
      (sb:inproceedings
       sb:key: "ConselDanvy:POPL91Static"
       sb:author: "Charles Consel and Olivier Danvy"
       sb:title: "Static and Dynamic Semantics Processing"
       sb:booktitle: "Principles of Programming Languages (POPL'91)"
       sb:month: "January"
       sb:year: "1991"
       (ps-link "ftp://ftp.daimi.au.dk/pub/empl/danvy/Papers/consel-danvy-popl91.ps.gz"))
      
      (sb:techreport
       sb:key: "Abe:87"
       sb:author: "Hal Abelson and Gerald Jay Sussman"
       sb:title: "LISP: A Language for Stratified Design"
       sb:number: "AI Lab Memo AIM-986"
       sb:institution: "MIT AI Lab"
       sb:month: "August"
       sb:year: "1987"
       (sb:abstract "We exhibit programs that illustrate the power of Lisp as a language for expressing the design and organization of computational systems. The examples are chosen to highlight the importance of abstraction in program design and to draw attention to the use of procedures to express abstractions.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-986.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-986.pdf"))
      
      (sb:unpublished
       sb:key: "Esp:93"
       sb:author: "David Espinosa"
       sb:title: "Language Extensibility via First-class Interpreters and Constructive Modules"
       sb:institution: "Department of Computer Science, Columbia University"
       sb:month: "April"
       sb:year: "1993"
       (ps-link "http://www.swiss.ai.mit.edu/~dae/papers/generic.ps.Z"))
      
      (sb:techreport
       sb:key: "Shi:Shi:90b"
       sb:author: "Olin Shivers"
       sb:title: "CPS data-flow analysis example"
       sb:month: "May"
       sb:year: "1990"
       sb:institution: "CMU School of Computer Science"
       (ps-link "http://repository.readscheme.org/ftp/papers/shivers-flowex.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/shivers-flowex.pdf"))
      
      (sb:unpublished
       sb:key: "Esp:94a"
       sb:author: "David Espinosa"
       sb:title: "Semantic Lego"
       sb:institution: "Department of Computer Science, Columbia University"
       sb:month: "January"
       sb:year: "1994"
       (ps-link "http://www.swiss.ai.mit.edu/~dae/papers/sl.ps.Z"))
      
      (sb:inproceedings
       sb:key: "Bondorf:ESOP90Autoproject"
       sb:author: "Anders Bondorf"
       sb:title: "Automatic Autoprojection of Higher Order Recursive Equations"
       sb:booktitle: "European Symposium on Programming (ESOP 1990)"
       sb:volume: "LNCS 432"
       sb:month: "May"
       sb:year: "1990"
       sb:pages: "70-87"
       (ps-link "http://repository.readscheme.org/ftp/papers/bondorf-esop90.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/bondorf-esop90.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2004:barzilay"
       sb:author: "Eli Barzilay and Dmitry Orlovsky"
       sb:title: "Foreign Interface for PLT Scheme"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/barzilay.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/barzilay.pdf"))
      
      (sb:unpublished
       sb:key: "Esp:94b"
       sb:author: "David Espinosa"
       sb:title: "Building Interpreters by Transforming Stratified Monads"
       sb:institution: "Department of Computer Science, Columbia University"
       sb:month: "April"
       sb:year: "1994"
       (ps-link "http://www.swiss.ai.mit.edu/~dae/papers/sm.ps.Z"))
      
      (sb:inproceedings
       sb:key: "sw2004:ciabrini"
       sb:author: "Damien Ciabrini"
       sb:title: "Debugging Scheme Fair Threads"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/ciabrini.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/ciabrini.pdf"))
      
      (sb:techreport
       sb:key: "Eis:91"
       sb:author: "Michael A. Eisenberg"
       sb:title: "Programmable Applications: Interpreter Meets Interface"
       sb:institution: "MIT AI Lab"
       sb:number: "AIM-1325"
       sb:month: "October"
       sb:year: "1991"
       (sb:abstract "Current fashion in \"user-friendly\" software design tends to place an overreliance on direct manipulation interfaces. To be truly expressive (and thus truly user-friendly), applications need both learnable interfaces and domain-enriched languages that are accessible to the user. This paper discusses some of the design issues that arise in the creation of such programmable applications. As an example, we present \"SchemePaint\", a graphics application that combines a MacPaint-like interface with an interpreter for (a \"graphics-enriched\") Scheme.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1325.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1325.pdf"))
      
      (sb:techreport
       sb:key: "Rees:96"
       sb:author: "Jonathan A. Rees"
       sb:title: "A Security Kernel Based on the Lambda-Calculus"
       sb:institution: "MIT AI Lab"
       sb:number: "AIM-1564"
       sb:month: "March"
       sb:year: "1996"
       (sb:abstract "Cooperation between independent agents depends upon establishing adegree of security. Each of the cooperating agents needs assurance that the cooperation will not endanger resources of value to that agent. In a computer system, a computational mechanism can assure safe cooperation among the system's users by mediating resource access according to desired security policy. Such a mechanism, which is called a security kernel, lies at the heart of many operating systems and programming environments.The report describes Scheme 48, a programming environment whose design is guided by established principles of operating system security. Scheme 48's security kernel is small, consisting of the call- by-value $lambda$-calculus with a few simple extensions to support abstract data types, object mutation, and access to hardware resources. Each agent (user or subsystem) has a separate evaluation environment that holds objects representing privileges granted to that agent. Because environments ultimately determine availability of object references, protection and sharing can be controlled largely by the way in which environments are constructed. I will describe experience with Scheme 48 that shows how it serves as a robust and flexible experimental platform. Two successful applications of Scheme 48 are the programming environment for the Cornell mobile robots, where Scheme 48 runs with no (other) operating system support; and a secure multi- user environment that runs on workstations.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1564.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1564.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2004:epardaud"
       sb:author: "Stéphane Epardaud"
       sb:title: "Mobile Reactive Programming in ULM"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/epardaud.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/epardaud.pdf"))
      
      (sb:inproceedings
       sb:key: "Kra:86"
       sb:author: "David A. Kranz, Richard A. Kelsey, Jonathan A. Rees, Paul Hudak and James Philbin"
       sb:title: "ORBIT: an optimizing compiler for scheme"
       sb:booktitle: "Proceedings of the SIGPLAN symposium on Compiler contruction"
       sb:pages: "219-233"
       sb:organization: "Association of Computer Machinery"
       sb:month: "June"
       sb:year: "1986"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/plan/12276/p219-kranz/"))
      
      (sb:inproceedings
       sb:key: "Flatt:PLDI2004"
       sb:author: "Matthew Flatt, Robert Bruce Findler"
       sb:title: "Kill-Safe Synchronization Abstractions"
       sb:booktitle: "Programming Language Design and Implementation (PLDI 2004)"
       sb:year: "2004"
       (pdf-link "http://www.cs.utah.edu/plt/publications/pldi04-ff.pdf"))
      
      (sb:phdthesis
       sb:key: "Kra:88"
       sb:author: "David A. Kranz"
       sb:title: "ORBIT: An Optimizing Compiler for Scheme"
       sb:school: "Yale"
       sb:year: "1988"
       (ps-link "http://repository.readscheme.org/ftp/papers/orbit-thesis.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/orbit-thesis.pdf"))
      
      (sb:inproceedings
       sb:key: "Kawa:Bot:98a"
       sb:author: "Per Bothner"
       sb:title: "Kawa - Compiling Dynamic Languages to the Java VM"
       sb:booktitle: "1998 Usenix"
       sb:month: "June"
       sb:year: "1998"
       (ps-link "http://sources.redhat.com/kawa/papers/Freenix98.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Cli:94"
       sb:author: "William D. Clinger and Lars Thomas Hansen"
       sb:title: "Lambda, the ultimate label, or a simple optimizing compiler for Scheme"
       sb:booktitle: "Proceedings of the 1994 ACM conference on LISP and Functional Programming"
       sb:year: "1994"
       sb:pages: "128-139"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/lfp/182409/p128-clinger/"))
      
      (sb:techreport
       sb:key: "Mil:94"
       sb:author: "James S. Miller and Guillermo J. Rozas"
       sb:title: "Garbage Collection is Fast, But a Stack is Faster"
       sb:institution: "MIT AI Lab"
       sb:number: "AIM-1462"
       sb:month: "March"
       sb:year: "1994"
       (sb:abstract "Prompted by claims that garbage collection can outperform stack allocation when sufficient physical memory is available, we present a careful analysis and set of cross-architecture measurements comparing these two approaches for the implementation of continuation (procedure call) frames. When the frames are allocated on a heap they require additional space, increase the amount of data transferred between memory and registers, and, on current architectures, require more instructions. We find that stack allocation of continuation frames outperforms heap allocation in some cases by almost a factor of three. Thus, stacks remain an important implementation technique for procedure calls, even in the presence of an efficient, compacting garbage collector and large amounts of memory.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1462.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1462.pdf"))
      
      (sb:inproceedings
       sb:key: "HatcliffGluck:PEDagstuhl96"
       sb:author: "John Hatcliff and Robert Glück"
       sb:title: "Reasoning about Hierarchies of Online Program Specialization Systems"
       sb:booktitle: "Partial Evaluation: Dagstuhl Seminar"
       sb:volume: "LNCS 1110"
       sb:month: "February"
       sb:year: "1996"
       (ps-link "ftp://ftp.diku.dk/diku/semantics/papers/D-269.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Marceau:ASE2004"
       sb:author: "Guillaume Marceau and Gregory H. Cooper and Shriram Krishnamurthi and Steven P. Reiss"
       sb:title: "A Dataflow Language for Scriptable Debugging"
       sb:booktitle: "IEEE International Symposium on Automated Software Engineering (ASE2004)"
       sb:month: "September"
       sb:year: "2004"
       (sb:abstract "Debugging is a laborious, manual activity that often involves the repetition of common operations. Ideally, users should be able to describe these repetitious operations as little programs. Debuggers should therefore be programmable, or scriptable. The operating environment of these scripts, however, imposes interesting design challenges on the programming language in which these scripts will be written."
                    (h4:p)
                    "This paper presents our design of a language for scripting debuggers. The language offers powerful primitives that can precisely and concisely capture many important debugging and comprehension metaphors. The paper also describes a debugger for the Java language built in accordance with these principles. We have implemented this debugger to run alongside the Java Virtual Machine. The paper includes concrete examples of applying the debugger to programs.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/mckr-dataflow-lang-script-debug/"))
      
      (sb:inproceedings
       sb:key: "Wick:ISMM2004"
       sb:author: "Adam Wick and Matthew Flatt"
       sb:title: "Memory Accounting without Partitions"
       sb:booktitle: "ISMM 2004"
       sb:year: "2004"
       (pdf-link "http://www.cs.utah.edu/plt/publications/ismm04-wf.pdf"))
      
      (sb:inproceedings
       sb:key: "Shi:Shi:91a"
       sb:author: "Olin Shivers"
       sb:title: "The semantics of Scheme control-flow analysis"
       sb:booktitle: "Proceedings of the First ACM SIGPLAN and IFIP Symposium on Partial Evaluation and Semantics-Based Program Manipulation"
       sb:month: "June"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/shivers-pepm91.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/shivers-pepm91.pdf"))
      
      (sb:inproceedings
       sb:key: "Kawa:Bot:98b"
       sb:author: "Per Bothner"
       sb:title: "Kawa: Compiling Scheme to Java"
       sb:booktitle: "Lisp Users Conference: Lisp in the Mainstream (40th Anniversary of Lisp)"
       sb:month: "November"
       sb:year: "1998"
       (ps-link "http://sources.redhat.com/kawa/papers/KawaLisp98.ps.gz"))
      
      (sb:inproceedings
       sb:key: "sw2004:shan"
       sb:author: "Chung-chieh Shan"
       sb:title: "Shift to Control"
       sb:booktitle: "2004 Scheme Workshop"
       sb:month: "September"
       sb:year: "2004"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2004/shan.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2004/shan.pdf"))
      
      (sb:article
       sb:key: "PLT:Pub:Wri:97"
       sb:author: "Andrew K. Wright and Robert Cartwright"
       sb:title: "A Practical Soft Type System for Scheme"
       sb:journal: "Transactions on Programming Languages and Systems"
       sb:year: "1997"
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/toplas97-wc.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Sitaram:SW2003a"
       sb:author: "Dorai Sitaram"
       sb:title: "Unwind-protect in portable Scheme"
       sb:booktitle: "Scheme Workshop 2003"
       sb:month: "November"
       sb:year: "2003"
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2003/Unwind.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2003/Unwind.pdf"))
      
      (sb:inproceedings
       sb:key: "Danvy:IFL1988"
       sb:author: "Olivier Danvy"
       sb:title: "On some Functional Aspects of Control"
       sb:booktitle: "Workshop on the Implementation of Lazy Functional Languages"
       sb:month: "October"
       sb:year: "1988"
       (ps-link "http://www.daimi.au.dk/~danvy/Papers/fac.ps.gz")
       (pdf-link "http://citeseer.nj.nec.com/rd/2643588%2C295233%2C1%2C0.25%2CDownload/http://citeseer.nj.nec.com/cache/papers/cs/14165/http:zSzzSzwww.daimi.au.dkzSz%7EdanvyzSzPaperszSzfac.pdf/danvy88some.pdf"))
      
      (sb:inproceedings
       sb:key: "Cli:ContImpl99"
       sb:author: "William D. Clinger, Anne Hartheimer and Eric M. Ost"
       sb:title: "Implementation strategies for continuations"
       sb:pages: "7-45"
       sb:journal: "Higher-Order and Symbolic Computation"
       sb:volume: "Vol. 12"
       sb:number: "No. 1"
       sb:year: "1999")
      
      (sb:techreport
       sb:key: "IU-SR:Bart89"
       sb:author: "Joel F. Bartlett"
       sb:title: "SCHEME->C: A Portable Scheme-to-C Compiler"
       sb:organization: "Digital Equipment Corporation Western Research Laboratory technical report 89/1"
       sb:year: "1989"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/s2c.ps.gz"))
      
      (sb:inproceedings
       sb:key: "widera:wflp2001"
       sb:author: "Manfred Widera"
       sb:title: "A Sketch of Complete Type Inference for Functional Programming"
       sb:booktitle: "International Workshop on Functional and (Constraint) Logic Programming (WLFP 2001)"
       sb:month: "September"
       sb:year: "2001"
       (ps-link "http://citeseer.ist.psu.edu/rd/29997463%2C497735%2C1%2C0.25%2CDownload/http://citeseer.ist.psu.edu/compress/0/papers/cs/24467/http:zSzzSzwww.informatik.uni-kiel.dezSz~wflp2001zSzproceedingszSzpaperszSzpaper1.ps.gz/widera01sketch.ps")
       (pdf-link "http://citeseer.ist.psu.edu/rd/29997463%2C497735%2C1%2C0.25%2CDownload/http://citeseer.ist.psu.edu/cache/papers/cs/24467/http:zSzzSzwww.informatik.uni-kiel.dezSz%7Ewflp2001zSzproceedingszSzpaperszSzpaper1.pdf/widera01sketch.pdf"))
      
      (sb:inproceedings
       sb:key: "graunke2002"
       sb:author: "Paul T. Graunke and Shriram Krishnamurthi"
       sb:title: "Advanced Control Flows for Flexible Graphical User Interfaces"
       sb:booktitle: "International Conference on Software Engineering"
       sb:year: "2002"
       (sb:abstract "Web and GUI programs represent two extremely common and popular modes of human-computer interaction. Many GUI programs share the Web's notion of " (h4:em "browsing") " through data- and decision-trees. This paper compares the user's browsing power in the two cases and illustrates that many GUI programs fall short of the Web's power to clone windows and bookmark applications. It identifies a key implementation problem that GUI programs must overcome to provide this power. It then describes a theoretically well-founded programming pattern, which we have automated, that endows GUI programs with these capabilities. The paper provides concrete examples of the transformation in action.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/icse2002-gk.ps.gz")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/icse2002-gk.pdf.gz"))
      
      (sb:article
       sb:key: "vlisp:lasc95a"
       sb:author: "Joshua D. Guttman, John D. Ramsdell and Mitchell Wand"
       sb:title: "VLISP: A Verified Implementation of Scheme"
       sb:journal: "Lisp and Symbolic Computation"
       sb:number: "Vol. 8 No. 1/2"
       sb:pages: "5-32"
       sb:year: "1995"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp-lasc/results.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp-lasc/results.pdf"))
      
      (sb:inproceedings
       sb:key: "plt:Gra01"
       sb:author: "Paul T. Graunke, Robert Bruce Findler, Shriram Krishnamurthi, Matthias Felleisen"
       sb:title: "Automatically Restructuring Programs for the Web"
       sb:booktitle: "IEEE International Symposium on Automated Software Engineering (ASE 2001)"
       sb:year: "2001"
       (sb:abstract "The construction of interactive server-side Web applications differs substantially from the construction of traditional interactive programs. In contrast, existing Web programming paradigms force programmers to save and restore control state between user interactions. We present an automated transformation that converts traditional interactive programs into standard CGI programs. This enables reuse of existing software development methodologies. Furthermore, an adaptation of existing programming environments supports the development of Web programs.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/ase2001-gfkf.ps.gz")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/ase2001-gfkf.pdf"))
      
      (sb:inproceedings
       sb:key: "NEC:Phil92b"
       sb:author: "James Philbin"
       sb:title: "An Overview of the Sting Operating System"
       sb:booktitle: "Proceedings of the 4th NEC Software Conference"
       sb:month: "October"
       sb:year: "1992"
       (ps-link "ftp://ftp.nj.nec.com/pub/pls/nec92.ps"))
      
      (sb:inproceedings
       sb:key: "PLT:Pub:Gra:01"
       sb:author: "Paul T. Graunke, Shriram Krishnamurthi, Van der Hoeven and Matthias Felleisen"
       sb:title: "Programming the Web with High-Level Programming Languages"
       sb:booktitle: "European Symposium on Programming (ESOP 2001)"
       sb:year: "2001"
       (sb:abstract "Many modern programs provide operating system-style services to extension modules. A Web server, for instance, behaves like a simple OS kernel. It invokes programs that dynamically generate Web pages and manages their resource consumption. Most Web servers, however, rely on conventional operating systems to provide these services. As a result, the solutions are inefficient, and impose a serious overhead on the programmer of dynamic extensions."
                    (h4:p)
                    "In this paper, we show that a Web server implemented in a suitably extended high-level programming language overcomes all these problems. First, building a server in such a language is straightforward. Second, the server delivers static content at performance levels comparable to a conventional server. Third, the Web server delivers dynamic content at a much higher rate than a conventional server, which is important because a significant portion of Web content is now dynamically generated. Finally, the server provides programming mechanisms for the dynamic generation of Web content that are difficult to support in a conventional server architecture.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/esop2001-gkvf.ps.gz")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/esop2001-gkvf.pdf.gz"))
      
      (sb:phdthesis
       sb:key: "Ser:Ser:94a"
       sb:author: "Manuel Serrano"
       sb:title: "Vers une compilation portable et performante des langages fonctionnels"
       sb:school: "l'Université Paris VI"
       sb:month: "December"
       sb:year: "1994"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/serrano-these94.ps.gz"))
      
      (sb:article
       sb:key: "vlisp:lasc95b"
       sb:author: "Joshua D. Guttman, John D. Ramsdell and Vipin Swarup"
       sb:title: "The VLISP Verified Scheme System"
       sb:journal: "Lisp and Symbolic Computation"
       sb:number: "Vol. 8 No. 1/2"
       sb:pages: "33-110"
       sb:year: "1995"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp-lasc/vlisp.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp-lasc/vlisp.pdf"))
      
      (sb:article
       sb:key: "Oz:entry111"
       sb:author: "Olivier Danvy"
       sb:title: "Programming with Tighter Control"
       sb:journal: "BIGRE Bulletin"
       sb:number: "65"
       sb:month: "July"
       sb:year: "1989")
      
      (sb:article
       sb:key: "vlisp:lasc95c"
       sb:author: "Dino P. Oliva, John D. Ramsdell and Mitchell Wand"
       sb:title: "The VLISP Verified PreScheme Compiler"
       sb:journal: "Lisp and Symbolic Computation"
       sb:number: "Vol. 8 No. 1/2"
       sb:pages: "111-182"
       sb:year: "1995"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp-lasc/prescheme.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp-lasc/prescheme.pdf"))
      
      (sb:article
       sb:key: "Ser:Ser:00c"
       sb:author: "Manuel Serrano"
       sb:title: "Bee: an Integrated Development Environment for the Scheme Programming Language"
       sb:journal: "Journal of Functional Programming '00"
       sb:month: "May"
       sb:year: "2000"
       (ps-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/serrano-jfp00.ps.gz"))
      
      (sb:unpublished
       sb:key: "Tam:Hobbit"
       sb:author: "Tanel Tammet"
       sb:title: "Lambda-lifting as an optimization for compiling Scheme to C"
       sb:institution: "Chalmers University of Technology"
       (ps-link "http://repository.readscheme.org/ftp/papers/tammet-hobbit.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/tammet-hobbit.pdf"))
      
      (sb:inproceedings
       sb:key: "Oleg:LICS2003"
       sb:author: "Oleg Kiselyov"
       sb:title: "An applicative-order term rewriting system for code generation, and its termination analysis"
       sb:booktitle: "Eighteenth Annual IEEE Symposium on Logic in Computer Science (LICS 2003)"
       sb:month: "June"
       sb:year: "2003"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Scheme/PostL-paper.html"
                sb:format: "html"))
      
      (sb:inproceedings
       sb:key: "IU-SR:Ben:94"
       sb:author: "Brent W. Benson, Jr."
       sb:title: "libscheme: Scheme as a C Library"
       sb:booktitle: "Proceedings of the 1994 USENIX Symposium on Very High Level Languages"
       sb:year: "1994"
       (ps-link "ftp://ftp.cs.indiana.edu/pub/scheme-repository/doc/pubs/libscheme-vhll.ps.gz"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag92b"
       sb:author: "Suresh Jagannathan, James Philbin"
       sb:title: "A Customizable Substrate for Concurrent Languages"
       sb:booktitle: "ACM Conference on Programming Language Design and Implementation (PLDI92)"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/pldi92.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oleg:LL3"
       sb:author: "Oleg Kiselyov"
       sb:title: "Towards the best collection API (extended abstract)"
       sb:booktitle: "Lightweight Languages 2003 (LL3) workshop"
       sb:month: "November"
       sb:year: "2003"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Computation/Computation.html#enumerator-stream"
                sb:format: "html"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag92a"
       sb:author: "Suresh Jagannathan, James Philbin"
       sb:title: "A Foundation for an Efficient Multi-Threaded Scheme System"
       sb:booktitle: "ACM Conference on Lisp and Functional Programming (LFP92)"
       sb:month: "June"
       sb:year: "1992"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/lfp92.ps.gz"))
      
      (sb:inproceedings
       sb:key: "GluckJorgensen:DIKUSummer98"
       sb:author: "Robert Glück and Jesper Jørgensen"
       sb:title: "Multi-Level Specialization (Extended Abstract)"
       sb:booktitle: "Partial Evaluation - Practice and Theory, DIKU 1998 International Summer School"
       sb:volume: "LNCS 1706"
       sb:month: "June"
       sb:year: "1998"
       (ps-link "http://repository.readscheme.org/ftp/papers/pe98-school/D-363.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/pe98-school/D-363.pdf"))
      
      (sb:inproceedings
       sb:key: "AcmDL:Ros:92"
       sb:author: "John R. Rose and Hans Muller"
       sb:title: "Integrating the Scheme and C languages"
       sb:pages: "247-259"
       sb:booktitle: "Proceedings of the conference on Lisp and functional programming"
       sb:month: "June"
       sb:year: "1992"
       (acmdl-link "http://www.acm.org/pubs/citations/proceedings/lfp/141471/p247-rose/"))
      
      (sb:inproceedings
       sb:key: "NEC:Jag91a"
       sb:author: "Suresh Jagannathan"
       sb:title: "Expressing Fine-Grained Parallelism Using Distributed Data Structures"
       sb:booktitle: "Workshop on Research Directions in High-Level Parallel Languages"
       sb:month: "June"
       sb:year: "1991"
       sb:number: "Springer-Verlag LNCS 574"
       (ps-link "http://www.cs.purdue.edu/homes/suresh/papers/hlpl91.ps.gz"))
      
      (sb:inbook
       sb:key: "Que:Que2000b"
       sb:author: "Christian Queinnec"
       sb:title: "Distributed generic functions"
       sb:booktitle: "Object-Oriented Parallel and Distributed Programming"
       sb:pages: "135-150"
       sb:year: "2000"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/gendist.ps.gz"))
      
      (sb:techreport
       sb:key: "vlisp:compiler"
       sb:author: "Joshua D. Guttman, John D. Ramsdell, Leonard G. Monk, William M. Farmer, Vipin Swarup"
       sb:title: "The VLISP Byte-Code Compiler"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/compiler.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/compiler.pdf"))
      
      (sb:article
       sb:key: "JenkinsLeavens:TypeCheck"
       sb:author: "Steven L. Jenkins and Gary T. Leavens"
       sb:title: "Ploymorphic Type-Checking in Scheme"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "Vol. 22"
       sb:number: "Num. 4"
       sb:pages: "215-223"
       sb:year: "1996")
      
      (sb:unpublished
       sb:key: "LAML:Nor02d"
       sb:author: "Kurt Nørmark"
       sb:title: "Development of LAML - A Suite of Web Software for Scheme"
       sb:month: "May"
       sb:year: "2002"
       (ps-link "http://www.cs.auc.dk/~normark/laml/papers/scheme2002-paper.ps")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/scheme2002-paper.pdf"))
      
      (sb:techreport
       sb:key: "Fee:Fee:97b"
       sb:author: "Marc Feeley, James S. Miller, Guillermo J. Rozas, Jason A. Wilson"
       sb:title: "Compiling Higher-Order Languages into Fully Tail-Recursive Portable C"
       sb:number: "Rapport technique 1078"
       sb:institution: "département d'informatique et r.o., Université de Montréal"
       sb:month: "Aout"
       sb:year: "1997"
       (ps-link "http://www.iro.umontreal.ca/~feeley/papers/tr1078.ps.gz"))
      
      (sb:techreport
       sb:key: "vlisp:flattener"
       sb:author: "Joshua D. Guttman, Leonard G. Monk, John D. Ramsdell, William M. Farmer, Vipin Swarup"
       sb:title: "The VLISP Flattener"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/flattener.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/flattener.pdf"))
      
      (sb:unpublished
       sb:key: "LAML:Nor02b"
       sb:author: "Kurt Nørmark"
       sb:title: "Web Programming in Scheme - the LAML approach"
       sb:month: "April"
       sb:year: "2002"
       (ps-link "http://www.cs.auc.dk/~normark/laml/papers/long-laml-approach.ps")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/papers/long-laml-approach.pdf")
       (sb:link sb:url: "http://www.cs.auc.dk/~normark/scheme/examples/jfp/index.html"
                sb:format: "examples"))
      
      (sb:article
       sb:key: "Dyb:Ash:98"
       sb:author: "J. Michael Ashley and R. Kent Dybvig"
       sb:title: "A Practical and Flexible Flow Analysis for Higher-Order Languages"
       sb:journal: "ACM Transactions on Programming Languages and Systems"
       sb:volume: "Vol. 20, Num. 4"
       sb:pages: "845-868"
       sb:month: "July"
       sb:year: "1998"
       (pdf-link "http://repository.readscheme.org/ftp/papers/jmashley/toplas97.pdf"))
      
      (sb:techreport
       sb:key: "Que:Que98c"
       sb:author: "Christian Queinnec"
       sb:title: "Marshaling/unmarshaling as a compilation/interpretation process"
       sb:number: "Research Report LIP6/1998/049, LIP6"
       sb:month: "December"
       sb:year: "1998"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/marsh.ps.gz"))
      
      (sb:mastersthesis
       sb:key: "Hansen2002b"
       sb:author: "Mikael Hansen, Paw Iversen and Jimmy Juncker"
       sb:title: "SLAML - Server side LAML"
       sb:month: "June"
       sb:year: "2002"
       sb:school: "Aalborg University"
       (ps-link "http://www.cs.auc.dk/library/files/rapbibfiles1/1024042183.ps"))
      
      (sb:techreport
       sb:key: "Siskind:99"
       sb:author: "Jeffrey Mark Siskind"
       sb:title: "Flow-Directed Lightweight Closure Conversion"
       sb:number: "Technical Report 99-190R"
       sb:institution: "NEC Research Institute, Inc."
       sb:month: "December"
       sb:year: "1999"
       (pdf-link "ftp://ftp.ecn.purdue.edu/qobi/fdlcc.pdf"))
      
      (sb:inproceedings
       sb:key: "Que:Que97a"
       sb:author: "Christian Queinnec"
       sb:title: "Sérialisation-désérialisation en DMeroon"
       sb:booktitle: "NOTERE97 -- Colloque international sur les NOuvelles TEchnologies de la RÉpartition"
       sb:pages: "333-346"
       sb:month: "November"
       sb:year: "1997"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/serdes.ps.gz"))
      
      (sb:techreport
       sb:key: "Hansen2002a"
       sb:author: "Mikael Hansen, Paw Iversen and Jimmy Juncker"
       sb:title: "SLAML - Server side LAML (Preliminary Masters Thesis Report)"
       sb:month: "January"
       sb:year: "2002"
       sb:institution: "Aalborg University"
       (ps-link "http://www.cs.auc.dk/library/files/rapbibfiles1/1010132379.ps"))
      
      (sb:techreport
       sb:key: "Dyb:Dyb:90b"
       sb:author: "R. Kent Dybvig, Robert Hieb and Tom Butler"
       sb:title: "Destination-Driven Code Generation"
       sb:institution: "Indiana University Computer Science Department"
       sb:number: "Technical Report #302"
       sb:month: "February"
       sb:year: "1990"
       (ps-link "http://www.cs.indiana.edu/~dyb/papers/ddcg.ps"))
      
      (sb:inproceedings
       sb:key: "Que:Que97b"
       sb:author: "Christian Queinnec"
       sb:title: "Distributed generic functions"
       sb:booktitle: "Second France-Japan workshop on Object-Based Parallel and Distributed Computing -- OBPDC '97"
       sb:month: "October"
       sb:year: "1997"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/gendist.ps.gz"))
      
      (sb:mastersthesis
       sb:key: "Hellegaard2000"
       sb:author: "Carsten Hellegaard"
       sb:title: "POWER - Program Oriented Web EngineeRing"
       sb:month: "June"
       sb:year: "2000"
       sb:school: "Aalborg University"
       (ps-link "http://www.cs.auc.dk/~normark/laml/reports/samlet-konge.ps")
       (pdf-link "http://www.cs.auc.dk/~normark/laml/reports/samlet-konge.pdf"))
      
      (sb:inproceedings
       sb:key: "SerranoScribe"
       sb:author: "Manuel Serrano and Erick Gallesio"
       sb:title: "This is Scribe!"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (ps-link "http://www-sop.inria.fr/mimosa/fp/Scribe/doc/scribe.ps")
       (sb:link sb:url: "http://www-sop.inria.fr/mimosa/Manuel.Serrano/scribe/doc/scribe.html"
                sb:format: "html"))
      
      (sb:techreport
       sb:key: "vlisp:vm"
       sb:author: "Vipin Swarup, William M. Farmer, Joshua D. Guttman, Leonard G. Monk, John D. Ramsdell"
       sb:title: "VLISP Byte Code Interpreter"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/vm.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/vm.pdf"))
      
      (sb:techreport
       sb:key: "vlisp:guide"
       sb:author: "Joshua D. Guttman, Leonard G. Monk, John D. Ramsdell, William M. Farmer, Vipin Swarup"
       sb:title: "A Guide to VLISP, A Verifed Programming Language Implementation"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/guide.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/guide.pdf"))
      
      (sb:inproceedings
       sb:key: "Oleg:Oleg2002a"
       sb:author: "Oleg Kiselyov"
       sb:title: "A better XML parser through functional programming"
       sb:booktitle: "Fourth International Symposium on Practical Aspects of Declarative Languages (PADL '02)"
       sb:month: "January"
       sb:year: "2002"
       (ps-link "http://pobox.com/~oleg/ftp/papers/XML-parsing.ps.gz")
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/papers/XML-parsing-talk.ps.gz"
                sb:format: "slides"))
      
      (sb:techreport
       sb:key: "vlisp:linker"
       sb:author: "William M. Farmer, Joshua D. Guttman, Leonard G. Monk, John D. Ramsdell, Vipin Swarup"
       sb:title: "The VLISP Linker"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/linker.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/linker.pdf"))
      
      (sb:article
       sb:key: "Oz:entry7"
       sb:author: "Mitchell Wand"
       sb:title: "Continuation-Based Program Transformation Strategies"
       sb:journal: "Journal of the ACM"
       sb:volume: "27"
       sb:number: "1"
       sb:pages: "164-180"
       sb:month: "January"
       sb:year: "1980"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=322183&coll=portal&dl=ACM"))
      
      (sb:unpublished
       sb:key: "Oleg:Oleg2001c"
       sb:author: "Oleg Kiselyov"
       sb:title: "The SXML Specification, Revision 2.5"
       sb:month: "September"
       sb:year: "2002"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Scheme/SXML.html"
                sb:format: "html"))
      
      (sb:techreport
       sb:key: "vlisp:mtps"
       sb:author: "William M. Farmer and John D. Ramsdell"
       sb:title: "A Verifed Compiler for Multithreaded PreScheme"
       sb:institution: "MITRE Corporation"
       sb:month: "January"
       sb:year: "1996"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/mtps.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/mtps.pdf"))
      
      (sb:article
       sb:key: "Oz:entry8"
       sb:author: "Mitchell Wand and Daniel P. Friedman"
       sb:title: "Compiling Lambda Expressions Using Continuations and Factorizations"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "3"
       sb:pages: "241-263"
       sb:year: "1978")
      
      (sb:unpublished
       sb:key: "Oleg:Oleg2001d"
       sb:author: "Oleg Kiselyov"
       sb:title: "Literate XML/DTD programming"
       sb:month: "April"
       sb:year: "2001"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Scheme/xml.html#literate-DTD"
                sb:format: "html"))
      
      (sb:article
       sb:key: "FFFK:2003JFP"
       sb:author: "Matthias Felleisen, Robert Bruce Findler, Matthew Flatt and Shriram Krishnamurthi"
       sb:title: "The Structure and Interpretation of the Computer Science Curriculum"
       sb:year: "2004"
       sb:journal: "Journal of Functional Programming"
       (sb:abstract "Twenty years ago Abelson and Sussman's " (h4:em "Structure and Interpretation of Computer Programs") " radically changed the intellectual landscape of introductory computing courses. Instead of teaching some currently fashionable programming language, it employed Scheme and functional programming to teach important ideas. Introductory courses based on the book showed up around the world and made Scheme and functional programming popular. Unfortunately, these courses quickly disappeared again due to shortcomings of the book and the whimsies of Scheme. Worse, the experiment left people with a bad impression of Scheme and functional programming in general. In this pearl, we propose an alternative role for functional programming in the first-year curriculum. Specifically, we present a framework for discussing the first-year curriculum and, based on it, the design rationale for our book and course, dubbed " (h4:em "How to Design Programs") ". The approach emphasizes the systematic design of programs. Experience shows that it works extremely well as a preparation for a course on object-oriented programming.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/fffk-jfp.ps")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/fffk-jfp.pdf"))
      
      (sb:inproceedings
       sb:key: "Que:Que93a"
       sb:author: "Christian Queinnec and David DeRoure"
       sb:title: "Design of a concurrent and distributed language"
       sb:booktitle: "Parallel Symbolic Computing: Languages, Systems, and Applications, (US/Japan Workshop Proceedings)"
       sb:number: "Lecture Notes in Computer Science 748"
       sb:pages: "234-259"
       sb:month: "October"
       sb:year: "1993"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/pwb.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry19"
       sb:author: "Mitchell Wand"
       sb:title: "Continuation-Based Multiprocessing"
       sb:booktitle: "Conference Record of the 1980 Lisp Conference"
       sb:pages: "19-28"
       sb:year: "1980"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802786&coll=portal&dl=ACM"))
      
      (sb:unpublished
       sb:key: "Oleg:Oleg2001e"
       sb:author: "Oleg Kiselyov"
       sb:title: "HTML/XML authoring in Scheme"
       sb:month: "February"
       sb:year: "2001"
       (sb:link sb:url: "http://pobox.com/~oleg/ftp/Scheme/xml.html#XML-authoring"
                sb:format: "html"))
      
      (sb:techreport
       sb:key: "vlisp:runtime"
       sb:author: "Dino P. Oliva and Mitchell Wand"
       sb:title: "A Verifed Run-Time Structure for Pure PreScheme"
       sb:institution: "MITRE Corporation"
       sb:month: "September"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/vlisp/runtime.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vlisp/runtime.pdf"))
      
      (sb:inproceedings
       sb:key: "Oz:entry141"
       sb:author: "R. Kent Dybvig and Robert Hieb"
       sb:title: "Continuations and Concurrency"
       sb:booktitle: "Proceedings of the Second ACM SIGPLAN Symposium on Principles and Practice of Parallel Programming"
       sb:pages: "128-136"
       sb:month: "March"
       sb:year: "1990"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=99178&coll=Portal"))
      
      (sb:inproceedings
       sb:key: "th:sw2002"
       sb:author: "Timothy J. Hickey"
       sb:title: "Incorporating Scheme-based web programming in computer-literacy courses"
       sb:booktitle: "Workshop on Scheme and Functional Programming (2002)"
       sb:month: "October"
       sb:year: "2002"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2002/hickey.pdf"))
      
      (sb:inproceedings
       sb:key: "Que:Que92b"
       sb:author: "Christian Queinnec"
       sb:title: "A concurrent and distributed extension to scheme"
       sb:booktitle: "PARLE '92 - Parallel Architectures and Languages Europe"
       sb:pages: "431-446"
       sb:month: "June"
       sb:year: "1992"
       sb:number: "Lecture Notes in Computer Science 605"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/parle.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry153"
       sb:author: "Dorai Sitaram and Matthias Felleisen"
       sb:title: "Modeling Continuations Without Continuations"
       sb:booktitle: "Proceedings of the Eighteenth ACM Symposium on Principles of Programming Languages"
       sb:pages: "185-196"
       sb:year: "1991"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=99611&coll=portal&dl=ACM"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor96e"
       sb:author: "Luc Moreau"
       sb:title: "Correctness of a Distributed-Memory Model for Scheme"
       sb:booktitle: "Second International Europar Conference (EURO-PAR'96)"
       sb:number: "number 1123 in Lecture Notes in Computer Science"
       sb:pages: "615-624"
       sb:month: "August"
       sb:year: "1996"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/europar96.ps.gz"))
      
      (sb:inbook
       sb:key: "Oz:entry32"
       sb:author: "Daniel P. Friedman, Christopher T. Haynes and Eugene E. Kohlbecker"
       sb:title: "Programming with Continuations"
       sb:booktitle: "Program Transformation and Programming Environments"
       sb:pages: "263-274"
       sb:publisher: "Springer-Verlag"
       sb:year: "1984")
      
      (sb:techreport
       sb:key: "LMor:Mor97a"
       sb:author: "Luc Moreau and David DeRoure"
       sb:title: "A Distributed Garbage Collector for NeXeme"
       sb:institution: "University of Southampton"
       sb:year: "1997"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/rj97.ps.gz"))
      
      (sb:article
       sb:key: "Que:Piq92"
       sb:author: "José M. Piquer and Christian Queinnec"
       sb:title: "Transpive: A distributed lisp system"
       sb:journal: "La lettre du Transputer"
       sb:institution: "Laboratoire d'Informatique de Besançon"
       sb:number: "16"
       sb:pages: "55-68"
       sb:month: "December"
       sb:year: "1992"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/transpive.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry33"
       sb:author: "Christopher T. Haynes and Daniel P. Friedman"
       sb:title: "Engines Build Process Abstractions"
       sb:booktitle: "Conference Record of the 1984 ACM Symposium on Lisp and Functional Programming"
       sb:pages: "18-24"
       sb:year: "1984"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802018&coll=portal"))
      
      (sb:techreport
       sb:key: "LMor:Mor97b"
       sb:author: "Luc Moreau and Christian Queinnec"
       sb:title: "On the Finiteness of Resources in Distributed Computing"
       sb:number: "Research Report RR-3147"
       sb:institution: "INRIA"
       sb:month: "April"
       sb:year: "1997"
       (ps-link "ftp://ftp.inria.fr/INRIA/publication/RR/RR-3147.ps.gz")
       (pdf-link "ftp://ftp.inria.fr/INRIA/publication/publi-pdf/RR/RR-3147.pdf"))
      
      (sb:inproceedings
       sb:key: "Que:Que91b"
       sb:author: "Christian Queinnec"
       sb:title: "Crystal Scheme, A Language for Massively Parallel Machines"
       sb:booktitle: "Second Symposium on High Performance Computing"
       sb:pages: "91-102"
       sb:month: "October"
       sb:year: "1991"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/shpc.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Oz:entry34"
       sb:author: "Christopher T. Haynes, Daniel P. Friedman and Mitchell Wand"
       sb:title: "Continuations and Coroutines"
       sb:booktitle: "Conference Record of the 1984 ACM Symposium on Lisp and Functional Programming"
       sb:pages: "293-298"
       sb:year: "1984"
       (acmdl-link "http://portal.acm.org/citation.cfm?id=802046&coll=portal"))
      
      (sb:inproceedings
       sb:key: "LMor:Mor97d"
       sb:author: "Luc Moreau, David DeRoure and Ian Foster"
       sb:title: "NeXeme: a Distributed Scheme Based on Nexus"
       sb:booktitle: "Third International Europar Conference (EURO-PAR'97)"
       sb:number: "volume 1300 of Lecture Notes in Computer Science"
       sb:pages: "581-590"
       sb:month: "August"
       sb:year: "1997"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/rsr-europar97.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que96b"
       sb:author: "Christian Queinnec"
       sb:title: "Macroexpansion reflective tower"
       sb:booktitle: "Proceedings of the Reflection'96 Conference"
       sb:pages: "93-104"
       sb:month: "April"
       sb:year: "1996"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/towexp.ps.gz"))
      
      (sb:inproceedings
       sb:key: "Que:Que90d"
       sb:author: "Christian Queinnec"
       sb:title: "PolyScheme : A Semantics for a Concurrent Scheme"
       sb:booktitle: "Workshop on High Performance and Parallel Computing in Lisp"
       sb:month: "November"
       sb:year: "1990"
       (ps-link "http://pagesperso-systeme.lip6.fr/Christian.Queinnec/Papers/polyman.ps.gz"))
      
      (sb:article
       sb:key: "Oz:entry77"
       sb:author: "Christopher T. Haynes and Daniel P. Friedman"
       sb:title: "Abstracting Timed Preemption with Engines"
       sb:journal: "Journal of Computer Languages"
       sb:volume: "12"
       sb:number: "2"
       sb:pages: "109-121"
       sb:publisher: "Pergamon Press"
       sb:year: "1987")
      
      (sb:inproceedings
       sb:key: "LMor:Mor97e"
       sb:author: "Luc Moreau and Christian Queinnec"
       sb:title: "Design and Semantics of Quantum: a Language to Control Resource Consumption in Distributed Computing"
       sb:booktitle: "Usenix Conference on Domain-Specific Languages (DSL'97)"
       sb:pages: "183-197"
       sb:month: "October"
       sb:year: "1997"
       (ps-link "http://www.ecs.soton.ac.uk/~lavm/papers/dsl97.ps.gz"))
      
      (sb:unpublished
       sb:key: "Mossin:D-108"
       sb:author: "Christian Mossin"
       sb:title: "Similix Binding Time Debugger Manual, system version 4.0"
       sb:month: "September"
       sb:year: "1991")
      
      (sb:mastersthesis
       sb:key: "schooler:smthesis"
       sb:author: "Richard Schooler"
       sb:title: "Partial Evaluation as a Means of Language Extensibility"
       sb:number: "MIT/LCS/TR-324"
       sb:school: "Massachusetts Institute of Technology"
       sb:month: "August"
       sb:year: "1984"
       (ps-link "http://repository.readscheme.org/ftp/papers/schooler-smthesis.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/schooler-smthesis.pdf"))
      
      (sb:article
       sb:key: "bacon:peval"
       sb:author: "Darius Bacon"
       sb:title: "A Hacker's Introduction to Partial Evaluation"
       sb:journal: "The Lisp Magazine at lisp-p.org"
       sb:month: "August"
       sb:year: "2002"
       (sb:link sb:url: "http://www.lisp-p.org/peval/peval.cgi"
                sb:format: "html"))
      
      (sb:unpublished
       sb:key: "Danvy:Formatting93"
       sb:author: "Olivier Danvy"
       sb:title: "More about Formatting"
       sb:institution: "Aarhus University"
       sb:month: "December"
       sb:year: "1993"
       (ps-link "http://repository.readscheme.org/ftp/papers/brics/more-about-formatting.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/brics/more-about-formatting.pdf"))
      
      (sb:inproceedings
       sb:key: "Ager:RS-03-20"
       sb:author: "Mads Sig Ager, Olivier Danvy and Henning Korsholm Rohde"
       sb:title: "Fast Partial Evaluation of Pattern Matching in Strings"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM '03)"
       sb:year: "2003"
       (ps-link "http://www.brics.dk/RS/03/20/BRICS-RS-03-20.ps.gz")
       (pdf-link "http://www.brics.dk/RS/03/20/BRICS-RS-03-20.pdf"))
      
      (sb:mastersthesis
       sb:key: "berlin:AITR-1144"
       sb:author: "Andrew A. Berlin"
       sb:title: "A Compilation Strategy for Numerical Programs Based on Partial Evaluation"
       sb:month: "February"
       sb:year: "1989"
       (sb:abstract "This work demonstrates how partial evaluation can be put to practical use in the domain of high-performance numerical computation. I have developed a technique for performing partial evaluation by using placeholders to propagate intermediate results. For an important class of numerical programs, a compiler based on this technique improves performance by an order of magnitude over conventional compilation techniques. I show that by eliminating inherently sequential data-structure references, partial evaluation exposes the low-level parallelism inherent in a computation. I have implemented several parallel scheduling and analysis programs that study the tradeoffs involved in the design of an architecture that can effectively utilize this parallelism. I present these results using the 9-body gravitational attraction problem as an example.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-1144.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-1144.pdf"))
      
      (sb:techreport
       sb:key: "berlin:AIM-1145"
       sb:author: "Andrew A. Berlin and Daniel Weise"
       sb:title: "Compiling Scientific Code Using Partial Evaluation"
       sb:month: "July"
       sb:year: "1989"
       (sb:abstract "Scientists are faced with a dilemma: either they can write abstract programs that express their understanding of a problem, but which do not execute efficiently; or they can write programs that computers can execute efficiently, but which are difficult to write and difficult to understand. We have developed a compiler that uses partial evaluation and scheduling techniques to provide a solution to this dilemma.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1145.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1145.pdf"))
      
      (sb:techreport
       sb:key: "berlin:AIM-1414"
       sb:author: "Andrew A. Berlin and Rajeev J. Surati"
       sb:title: "Exploiting the Parallelism Exposed by Partial Evaluation"
       sb:month: "April"
       sb:year: "1993"
       (sb:abstract "We describe an approach to parallel compilation that seeks to harness the vast amount of fine-grain parallelism that is exposed through partial evaluation of numerically-intensive scientific programs. We have constructed a compiler for the Supercomputer Toolkit parallel processor that uses partial evaluation to break down data abstractions and program structure, producing huge basic blocks that contain large amounts of fine-grain parallelism. We show that this fine-grain prarllelism can be effectively utilized even on coarse-grain parallel architectures by selectively grouping operations together so as to adjust the parallelism grain-size to match the inter-processor communication capabilities of the target architecture.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1414.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1414.pdf"))
      
      (sb:techreport
       sb:key: "berlin:AIM-1487"
       sb:author: "Andrew A. Berlin and Rajeev J. Surati"
       sb:title: "Partial Evaluation for Scientific Computing: The Supercomputer Toolkit Experience"
       sb:month: "May"
       sb:year: "1994"
       (sb:abstract "We describe the key role played by partial evaluation in the Supercomputer Toolkit, a parallel computing system for scientific applications that effectively exploits the vast amount of parallelism exposed by partial evaluation. The Supercomputer Toolkit parallel processor and its associated partial evaluation-based compiler have been used extensively by scientists at M.I.T., and have made possible recent results in astrophysics showing that the motion of the planets in our solar system is chaotically unstable.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1487.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AIM-1487.pdf"))
      
      (sb:techreport
       sb:key: "surati:ugradtr"
       sb:author: "Rajeev J. Surati"
       sb:title: "A Parallelizing Compiler Based on Partial Evaluation"
       sb:institution: "Massachusetts Institute of Technology"
       sb:number: "AITR-1377"
       sb:month: "July"
       sb:year: "1993"
       (sb:abstract "We constructed a parallelizing compiler that utilizes partial evaluation to achieve efficient parallel object code from very high-level data independent source programs. On several important scientific applications, the compiler attains parallel performance equivalent to or better than the best observed results from the manual restructuring of code. This is the first attempt to capitalize on partial evaluation's ability to expose low-level parallelism. New static scheduling techniques are used to utilize the fine-grained parallelism of the computations. The compiler maps the computation graph resulting from partial evaluation onto the Supercomputer Toolkit, an eight VLIW processor parallel computer.")
       (ps-link "http://repository.readscheme.org/ftp/papers/surati-ugradtechreport.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/surati-ugradtechreport.pdf"))
      
      (sb:techreport
       sb:key: "Danvy:RS-98-13"
       sb:author: "Olivier Danvy and Morten Rhiger"
       sb:title: "Compiling Actions by Partial Evaluation, Revisited"
       sb:institution: "Aarhus University"
       sb:month: "June"
       sb:year: "1998"
       (ps-link "http://repository.readscheme.org/ftp/papers/brics/BRICS-RS-98-13.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/brics/BRICS-RS-98-13.pdf"))
      
      (sb:inproceedings
       sb:key: "Bondorf:D-169"
       sb:author: "Anders Bondorf and Jens Palsberg"
       sb:title: "Compiling actions by partial evaluation"
       sb:booktitle: "Functional Programming and Computer Architecture (FPCA'93)"
       sb:month: "June"
       sb:year: "1993"
       (acmdl-link "http://doi.acm.org/10.1145/165180.165227"))
      
      (sb:article
       sb:key: "Bondorf:D-283"
       sb:author: "Anders Bondorf and Jens Palsberg"
       sb:title: "Generating action compilers by partial evaluation"
       sb:journal: "Journal of Functional Programming"
       sb:number: "6(2)"
       sb:year: "1996")
      
      (sb:inproceedings
       sb:key: "Draves:PE1996"
       sb:author: "Scott Draves"
       sb:title: "Compiler Generation for Interactive Graphics using Intermediate Code"
       sb:booktitle: "Partial Evaluation: Dagstuhl Seminar"
       sb:volume: "LNCS 1110"
       sb:month: "February"
       sb:year: "1996"
       (ps-link "http://repository.readscheme.org/ftp/papers/draves-nitrous.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/draves-nitrous.pdf"))
      
      (sb:phdthesis
       sb:key: "draves:thesis"
       sb:author: "Scott Draves"
       sb:title: "Automatic Program Specialization for Interactive Media"
       sb:school: "Carnegie Mellon University"
       (ps-link "http://repository.readscheme.org/ftp/papers/draves-thesis.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/draves-thesis.pdf"))
      
      (sb:article
       sb:key: "consel-danvy:lasc92"
       sb:author: "Charles Consel and Olivier Danvy"
       sb:title: "Partial Evaluation in Parallel"
       sb:journal: "Lisp and Symbolic Computation"
       sb:volume: "Volume 5"
       sb:number: "Issue 4"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/brics/consel-danvy-pe-parallel93.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/brics/consel-danvy-pe-parallel93.pdf"))
      
      (sb:unpublished
       sb:key: "Danvy:pearls-pe95"
       sb:author: "Olivier Danvy"
       sb:title: "Intensional and Extensional Aspects of Partial Evaluation"
       sb:institution: "Aarhus University"
       sb:month: "March"
       sb:year: "1995"
       (ps-link "http://repository.readscheme.org/ftp/papers/brics/pearls-pe.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/brics/pearls-pe.pdf"))
      
      (sb:techreport
       sb:key: "Bondorf:D-164"
       sb:author: "Anders Bondorf and Jesper Jørgensen"
       sb:title: "Efficient analyses for realistic off-line partial evaluation: extended version"
       sb:number: "Technical Report 93/4"
       sb:institution: "University of Copenhagen"
       sb:year: "1993"
       (sb:link sb:url: "http://repository.readscheme.org/ftp/papers/topps/D-164-part-1-and-3.ps.gz"
                sb:format: "parts 1 and 3 (ps)")
       (sb:link sb:url: "http://repository.readscheme.org/ftp/papers/topps/D-164-part-2.ps.gz"
                sb:format: "part 2 (ps)")
       (sb:link sb:url: "http://repository.readscheme.org/ftp/papers/topps/D-164-part-1-and-3.pdf"
                sb:format: "parts 1 and 3 (pdf)")
       (sb:link sb:url: "http://repository.readscheme.org/ftp/papers/topps/D-164-part-2.pdf"
                sb:format: "part 2 (pdf)"))
      
      (sb:article
       sb:key: "Bondorf:D-153"
       sb:author: "Anders Bondorf and Jesper Jørgensen"
       sb:title: "Efficient analyses for realistic off-line partial evaluation"
       sb:journal: "Journal of Functional Programming"
       sb:number: "3(3)"
       sb:month: "July"
       sb:year: "1993")
      
      (sb:inproceedings
       sb:key: "Gluck:D-279"
       sb:author: "Robert Glück and Jesper Jørgensen"
       sb:title: "Fast Binding-Time Analysis for Multi-Level Specialization"
       sb:booktitle: "Perspectives of System Informatics"
       sb:year: "1996"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-279.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-279.pdf"))
      
      (sb:inproceedings
       sb:key: "Gluck:D-229"
       sb:author: "Robert Glück and Jesper Jørgensen"
       sb:title: "Efficient Multi-Level Generating Extensions for Program Specialization"
       sb:booktitle: "Programming Languages: Implementations, Logics and Programs (PLILP'95)"
       sb:year: "1995"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-229.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-229.pdf"))
      
      (sb:inproceedings
       sb:key: "Gluck:D-363"
       sb:author: "Robert Glück and Jesper Jørgensen"
       sb:title: "Multi-Level Specialization (Extended Abstract)"
       sb:booktitle: "Partial Evaluation: Practice and Theory 1998"
       sb:year: "1998"
       (ps-link "http://repository.readscheme.org/ftp/papers/topps/D-363.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/topps/D-363.pdf"))
      
      (sb:inproceedings
       sb:key: "Danvy:RS-97-53"
       sb:author: "Olivier Danvy"
       sb:title: "Online Type-Directed Partial Evaluation"
       sb:booktitle: "Third Fuji International Symposium on Functional and Logic Programming, FLOPS '98"
       sb:month: "April"
       sb:year: "1998"
       (ps-link "http://repository.readscheme.org/ftp/papers/brics/BRICS-RS-97-53.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/brics/BRICS-RS-97-53.pdf"))
      
      (sb:mastersthesis
       sb:key: "vestergaard-speciale"
       sb:author: "René Vestergaard"
       sb:title: "From Proof Normalization to Compiler Generation and Type-Directed Change-of-Representation"
       sb:school: "Aarhus University"
       sb:year: "1997"
       (ps-link "http://repository.readscheme.org/ftp/papers/vestergaard-thesis.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/vestergaard-thesis.pdf"))
      
      (sb:techreport
       sb:key: "findler-blume-felleisen-contracts04tr"
       sb:author: "Robert Bruce Findler, Matthias Blume and Matthias Felleisen"
       sb:title: "An Investigation of Contracts as Projections"
       sb:institution: "University of Chicago"
       sb:number: "TR-2004-02"
       sb:month: "April"
       sb:year: "2004"
       (ps-link "http://www.cs.uchicago.edu/files/tr_additional/TR-2004-02.ps")
       (pdf-link "http://www.cs.uchicago.edu/files/tr_authentic/TR-2004-02.pdf"))
      
      (sb:mastersthesis
       sb:key: "rhiger:msthesis"
       sb:author: "Morten Rhiger"
       sb:title: "A Study in Higher-Order Programming Languages"
       sb:school: "Aarhus University"
       sb:month: "December"
       sb:year: "1997"
       (ps-link "http://repository.readscheme.org/ftp/papers/rhiger-msthesis.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/rhiger-msthesis.pdf"))
      
      (sb:inproceedings
       sb:key: "mogensen:pepm99"
       sb:author: "Torben Æ. Mogensen"
       sb:title: "Gödelization in the untyped lambda calculus"
       sb:booktitle: "Partial Evaluation and Semantics-Based Program Manipulation (PEPM99)"
       sb:month: "January"
       sb:year: "1999"
       (ps-link "http://repository.readscheme.org/ftp/papers/mogensen-pepm99.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/mogensen-pepm99.pdf"))
      
      (sb:mastersthesis
       sb:key: "swart:msthesis"
       sb:author: "Lennart Swart"
       sb:title: "Partial Evaluation using Rewrite Rules: A Specification of a Partial Evaluator for Similix in Stratego"
       sb:school: "Utrecht University"
       sb:month: "August"
       sb:year: "2002"
       (ps-link "http://repository.readscheme.org/ftp/papers/swart-msthesis.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/swart-msthesis.pdf"))
      
      (sb:techreport
       sb:key: "weise-FUSE-MEMO-90-1"
       sb:author: "Daniel Weise"
       sb:title: "Graphs as an Intermediate Representation for Partial Evaluation"
       sb:institution: "Stanford University"
       sb:number: "CSL-TR-90-421"
       sb:month: "March"
       sb:year: "1990"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-90-1.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-90-1.pdf"))
      
      (sb:techreport
       sb:key: "weise-FUSE-MEMO-90-3"
       sb:author: "Daniel Weise and Erik Ruf"
       sb:title: "Computing Types During Program Specialization"
       sb:institution: "Stanford University"
       sb:number: "CSL-TR-90-441"
       sb:month: "October"
       sb:year: "1990"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-90-3.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-90-3.pdf"))
      
      (sb:inproceedings
       sb:key: "weise-FUSE-MEMO-91-4"
       sb:author: "Wing-Yee Au, Daniel Weise and Scott Seligman"
       sb:title: "Generating Compiled Simulations Using Partial Evaluation"
       sb:booktitle: "28th Design Automation Conference"
       sb:month: "June"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-91-4.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-91-4.pdf"))
      
      (sb:inproceedings
       sb:key: "ruf-FUSE-MEMO-91-5"
       sb:author: "Erik Ruf and Daniel Weise"
       sb:title: "Using Types to Avoid Redundant Specialization"
       sb:booktitle: "Partial Evaluation and Semantics-Directed Program Manipulation, PEPM'91"
       sb:month: "June"
       sb:year: "1991"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-91-5.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-91-5.pdf"))
      
      (sb:techreport
       sb:key: "ruf-FUSE-MEMO-92-8"
       sb:author: "Erik Ruf and Daniel Weise"
       sb:title: "Preserving Information During Online Partial Evaluation"
       sb:institution: "Stanford University"
       sb:number: "CSL-TR-92-517"
       sb:month: "April"
       sb:year: "1992"
       (ps-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-8.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/fuse-memos/FUSE-MEMO-92-8.pdf"))
      
      (sb:inproceedings
       sb:key: "ruf:oopsla93"
       sb:author: "Erik Ruf"
       sb:title: "Partial Evaluation in Reflective System Implementations"
       sb:booktitle: "OOPSLA'93 Workshop on Reflection and Metalevel Architecture"
       sb:month: "October"
       sb:year: "1993"
       (ps-link "http://repository.readscheme.org/ftp/papers/ruf93partial.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ruf93partial.pdf"))
      
      (sb:inproceedings
       sb:key: "serrano:ilc2002"
       sb:author: "Manuel Serrano, Frédéric Boussinot and Bernard Serpette"
       sb:title: "Scheme FairThreads"
       sb:booktitle: "2th International Lisp Conference"
       sb:month: "October"
       sb:year: "2002")
      
      (sb:inproceedings
       sb:key: "ciabrini:ilc2003"
       sb:author: "Damien Ciabrini and Manuel Serrano"
       sb:title: "Bugloo: A Source Level Debugger for Scheme Programs Compiled into JVM Bytecode"
       sb:booktitle: "3th International Lisp Conference"
       sb:month: "October"
       sb:year: "2003"
       (pdf-link "http://www-sop.inria.fr/mimosa/fp/Bugloo/doc/cia03.pdf"))
      
      (sb:inproceedings
       sb:key: "bss-dotnet04"
       sb:author: "Yannis Bres and Bernard Serpette and Manuel Serrano"
       sb:title: "Compiling Scheme programs to .NET Common Intermediate Language"
       sb:booktitle: "2nd International Workshop on .NET Technologies"
       sb:month: "May"
       sb:year: "2004"
       (pdf-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/bss-dotnet04.pdf"))
      
      (sb:inproceedings
       sb:key: "sbs-ppdp04"
       sb:author: "Manuel Serrano, Frédéric Boussinot and Bernard Serpette"
       sb:title: "Scheme Fair Threads"
       sb:booktitle: "Principles and Practice of Declarative Programming (PPDP 2004)"
       sb:month: "August"
       sb:year: "2004"
       (html-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/sbs-ppdp04.html"))
      
      (sb:article
       sb:key: "bss-jot04"
       sb:author: "Yannis Bres and Bernard Serpette and Manuel Serrano"
       sb:title: "Bigloo.NET: compiling Scheme to .NET CLR"
       sb:journal: "Journal of Object Technology"
       sb:number: "3(9)"
       sb:month: "October"
       sb:year: "2004"
       (html-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/jot04/jot04.html"))
      
      (sb:inproceedings
       sb:key: "gallesio:usenix02"
       sb:author: "Erick Gallesio and Manuel Serrano"
       sb:title: "Biglook: a Widget Library for the Scheme Programming Language"
       sb:booktitle: "2002 Usenix annual technical conference"
       sb:month: "June"
       sb:year: "2002"
       (html-link "http://www.inria.fr/mimosa/Manuel.Serrano/publi/gs-freenix02.ps.gz"))
      
      (sb:inproceedings
       sb:key: "danvy:pe-reflect-bridge1987"
       sb:author: "Olivier Danvy"
       sb:title: "Across the Bridge between Reflection and Partial Evaluation"
       sb:booktitle: "Partial Evaluation and Mixed Computation"
       sb:year: "1988")
      
      (sb:inproceedings
       sb:key: "sw2005-Garcia"
       sb:author: "Ronald Garcia and Andrew Lumsdaine"
       sb:title: "Type Classes Without Types"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "Data-directed programs consist of collections of generic functions, functions whose underlying implementation differs depending on properties of their arguments. Scheme's flexibility lends itself to developing generic functions, but the language has some shortcomings in this regard. In particular, it lacks both facilities for conveniently extending generic functions while preserving the flexibility of ad-hoc overloading techniques and constructs for grouping related generic functions into coherent interfaces. This paper describes and discusses a mechanism, inspired by Haskell type classes, for implementing generic functions in Scheme that directly addresses the aforementioned concerns. Certain properties of Scheme, namely dynamic typing and an emphasis on block structure, have guided the design toward an end that balances structure and flexibility. We describe the system, demonstrate its function, and argue that it implements an interesting approach to polymorphism and, more specifically, overloading.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/garcia.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/garcia.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2005-Egner"
       sb:author: "Sebastian Egner"
       sb:title: "Eager Comprehensions in Scheme: The design of SRFI-42"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "This article is about a certain style of programming iterative programs. It is based on a concept we have named \"eager comprehension,\" which is a convenient and efficient alternative to tail recursion, do-loops, and lazy list comprehensions (aka \"ZF expressions\"). Eager comprehensions are syntactic forms that encapsulate the details of an accumulation process (counting elements, creating a list, etc.). Within these forms, expressions called generators hide the details of enumerating basic sequences (running through a list, through a range of integers, etc.). By combining these elements in a clearly structured and well-defined way, a concise and powerful notation for writing loops emerges."
                    (h4:p)
                    "Of course, this style of programming is not new - it is implicitly present in any form of loop-macro already - and so we discuss several concrete designs that aim for the same goal. Surprisingly, however, none of these designs has had much impact on Scheme, despite the fact that their common floor plan has been around for decades. A particularly clean new design, SRFI 42, on the other hand has already made some friends in the first few years of its existence. Explaining the design and implementation of SRFI 42 constitutes the main part of this article.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/egner.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/egner.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2005-Sobel"
       sb:author: "Jonathan Sobel, Erik Hilsdale, R. Kent Dybvig, Daniel P. Friedman"
       sb:title: "Abstraction and Performance from Explicit Monadic Reflection"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "Most of the existing literature about monadic programming focuses on theory but does not address issues of software engineering. Using monadic parsing as a running example, we demonstrate monadic programs written in a typical style, recognize how they violate abstraction boundaries, and recover clean abstraction crossings through monadic reflection. Once monadic reflection is made explicit, it is possible to construct a grammar for monadic programming that is independent of domain-specific operations. This grammar, in turn, enables the redefinition of the monadic operators as macros that eliminate at expansion time the overhead imposed by functional representations. The results are very efficient monadic programs; for parsing, the output code is competitive with good hand-crafted parsers.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/sobel.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/sobel.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2005-MatthewsFindler"
       sb:author: "Jacob Matthews and Robert Bruce Findler"
       sb:title: "An Operational Semantics for R5RS Scheme"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "This paper presents an operational semantics for the core of Scheme. Our specification improves over the existing R5RS denotational specification in four ways. First, it is more complete, since it contains eval, quote, and dynamic-wind. Second, it models multiple values in a way that does not require changes to unrelated parts of the language. Third, it provides a more faithful model of Scheme~s undefined order of evaluation. Finally, it is executable, because it is encoded as a program in PLT Redex, a domain-specific language for writing operational semantics. The executable specification allows others to experiment with our specification and allows us to build a specification test suite, which improves our confidence that our system is a faithful model of Scheme."
                    (h4:p)
                    "In addition to contributing a specification of Scheme, this paper presents several novel modeling techniques for Felleisen Hieb-style rewriting semantics that we discovered while developing our R5RS Scheme semantics. All are applicable to a wider range of problems than the specific uses we have for them, and the fact that they combine seamlessly in our full R5RS model shows that they scale to real languages.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/matthews.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/matthews.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2005-Gasbichler"
       sb:author: "Martin Gasbichler and Eric Knauel"
       sb:title: "Commander S - The shell as a browser"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "Commander S is a new approach to interactive Unix shells based on interpretation of command output and cursor-oriented terminal programs. The user can easily refer to the output of previous commands when composing new command lines or use interactive viewers to further explore the command results. Commander S is extensible by plug-ins for parsing command output and for viewing command results interactively. The included job control avoids garbling of the terminal by informing the user in a separate widget and running background processes in separate terminals. Commander S is also an interactive front-end to scsh, the Scheme Shell, and it closely integrates Scheme evaluation with command execution. The paper also shows how Commander S employs techniques from object-oriented programming, concurrent programming, and functional programming techniques.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/knauel.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/knauel.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2005-Gallesio"
       sb:author: "Erick Gallesio and Manuel Serrano"
       sb:title: "Ubiquitous Mails"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "Bimap is a tool for synchronizing IMAP servers. It enables two or more IMAP mirrored servers to be modified independently and later on, synchronized. Bimap is versatile so, in addition to synchronizing emails, it can be used for filtering and classifying emails. For the sake of the example, the paper shows automatic emails classification and white-listing programmed with Bimap."
                    (h4:p)
                    "Bimap is implemented in Scheme. The most important parts of its implementation are presented in this paper with the intended goal to demonstrate that Scheme is suited for programming tasks that are usually devoted to scripting languages such as Perl or Python. With additional libraries, Scheme enables compact and efficient implementation of this distributed networked application because the main computations that require efficiency are executed in compiled code and only the user configurations are executed in interpreted code.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/serrano.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/serrano.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2005-Hufflen"
       sb:author: "Jean-Michel Hufflen"
       sb:title: "Implementing a Bibliography Processor in Scheme"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "We report an experience of implementing the MlBibTeX bibliography processor, a re-implementation of BibTeX with particular focus on multilingual features. First we describe the behaviour of this software and explain why we chose Scheme to implement the first public version. Then we give the broad outlines of our implementation and show how we took as much advantage as possible of the main features of Scheme. We also explain what we really missed and suggest some ways to improve these points.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/hufflen.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/hufflen.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2005-MrMathematica"
       sb:author: "Chongkai Zhu"
       sb:title: "The Marriage of MrMathematica and MzScheme"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "In this paper, I argue that the programming languages provided in current mainstream CASes are not suitable for general purpose programming. To address this problem, I developed MrMathematica. MrMathematica is a connection between Mathematica and PLT-Scheme, which provides the ability to call Mathematica from MzScheme. The two languages share some common ground, but are mostly complementary to each other. MrMathematica enhances Mathematica, and it helps to introduce Scheme to more people (CAS users).")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/chongkai.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/chongkai.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2005-PavicicBosnic"
       sb:author: "Alan Pavicic and Niksa Bosnic"
       sb:title: "ACT Parameterization Framework"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "ACT is a generic parameterization framework used in the development of applications for modeling and parameterization of internal combustion engines. It is developed in Guile. Its two main parts are Ilm core of object model built on top of Goops, and Bee editor environment providing UI. The core object model supports generic persistence of any object to database, type guardians for different slots, nameservices and object repositories. It also supports addins, additional modules which can change the behavior of the entire system as well as any of its parts (e.g. undo/redo functionality, dependencies between objects, event notification, ...). The editor environment for editing Ilm objects includes a library of basic editors, simple composite editors and generic editors. A grading system can be used to dynamically decide which registered editor class is the most appropriate for editing a particular object. Every Bee editor is an Ilm object itself. High level XML descriptions of data models and editors can be compiled to Scheme code defining Ilm classes and Bee editors.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/pavicic.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/pavicic.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2005-Loitsch"
       sb:author: "Florian Loitsch"
       sb:title: "Javascript to Scheme Compilation"
       sb:booktitle: "2005 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "This paper presents Jsigloo, a Bigloo frontend compiling Javascript to Scheme. Javascript and Scheme share many features: both are dynamically typed, they feature closures and allow for functions as first class citizens. Despite their similarities it is not always easy to map Javascript constructs to efficient Scheme code, and in this paper we discuss the non-obvious transformations that needed special attention."
                    (h4:p)
                    "Even though optimizations were supposed to be done by Bigloo the chosen Javascript-Scheme mapping made several analyses ineffective and some optimizations are hence implemented in Jsigloo. We illustrate the opportunities Bigloo missed and show how the additional optimizations improve the situation.")
       (ps-link "http://repository.readscheme.org/ftp/papers/sw2005/loitsch.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2005/loitsch.pdf"))
      
      (sb:article
       sb:key: "ConselKhooProlog"
       sb:author: "Charles Consel and Siau Cheng Khoo"
       sb:title: "Semantics-directed generation of a Prolog compiler"
       sb:journal: "Science of Computer Programming"
       sb:year: "1993"
       sb:number: "volume 21"
       sb:pages: "pages 263-291"
       (ps-link "http://repository.readscheme.org/ftp/papers/consel-khoo-prolog.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/consel-khoo-prolog.pdf"))
      
      (sb:article
       sb:key: "Bondorf:SCP1991"
       sb:author: "Anders Bondorf"
       sb:title: "Automatic Autoprojection of higher order recursive equations"
       sb:journal: "Science of Computer Programming"
       sb:year: "1991"
       sb:number: "volume 17"
       sb:pages: "pages 3-34"
       (ps-link "http://repository.readscheme.org/ftp/papers/bondorf-scp91.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/bondorf-scp91.pdf"))
      
      ;;;; added January 14, 2006
      
      (sb:inproceedings
       sb:key: "Pettyjohn:icfp2005"
       sb:author: "Greg Pettyjohn, John Clements, Joe Marshall, Shriram Krishnamurthi and Matthias Felleisen"
       sb:title: "Continuations from Generalized Stack Inspection"
       sb:booktitle: "International Conference on Functional Programming, ICFP 2005"
       sb:month: "September"
       sb:year: "2005"
       (sb:abstract "Implementing first-class continuations can pose a challenge if the target machine makes no provisions for accessing and re-installing the run-time stack. In this paper, we present a novel translation that overcomes this problem. In the first half of the paper, we introduce a theoretical model that shows how to eliminate the capture and the use of first-class continuations in the presence of a generalized stack inspection mechanism. The second half of the paper explains how to translate this model into practice in two different contexts. First, we reformulate the servlet interaction language in the PLT Web server, which heavily relies on first-class continuations. Using our technique, servlet programs can be run directly under the control of non-cooperative web servers such as Apache. Second, we show how to use our new technique to copy and reconstitute the stack on MSIL.Net using exception handlers. This establishes that Scheme's first-class continuations can exist on non-cooperative virtual machines.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/pcmkf-cont-from-gen-stack-insp/"))
      
      (sb:inbook
       sb:key: "Krishnamurthi:web-book05"
       sb:author: "Shriram Krishnamurthi, Robert Bruce Findler, Paul Graunke and Matthias Felleisen"
       sb:title: "Modeling Web Interactions and Errors"
       sb:booktitle: "Interactive Computation: The New Paradigm"
       sb:year: "2005"
       (sb:abstract "Programmers confront a minefield when they design interactive Web programs. Web interactions take place via Web browsers. Browsers permit consumers to whimsically navigate among the various stages of a dialog, leading to unexpected outcomes. Furthermore, the growing diversity of browsers means the number of interactive operations users can perform continues to grow."
                    (h4:p)
                    "To investigate this programming problem, we develop a foundational model of Web interactions that reduces the panoply of browser-supported user interactions to three fundamental ones. We use the model to formally describe two classes of errors in Web programs. The descriptions suggest techniques for detecting both classes of errors. For one class we present an incrementally-checked record type system, which effectively eliminates these errors. For the other class, we introduce a dynamic safety check that employs program annotations to detect errors.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/kfgf-model-web-inter-error/"))
      
      (sb:article
       sb:key: "Krishnamurthi:JFP2005"
       sb:author: "Shriram Krishnamurthi"
       sb:title: "Automata as Macros"
       sb:journal: "Journal of Functional Programming"
       sb:year: "2005"
       (sb:abstract "Lisp programmers have long used macros to extend their language. Indeed, their success has inspired macro notations for a variety of other languages, such as C and Java. There is, however, a paucity of effective pedagogic examples of macro use. This paper presents a short, non-trivial example that implements a construct not already found in mainstream languages. Furthermore, it motivates the need for tail-calls, as opposed to mere tail-recursion, and illustrates how support for tail-call optimization is crucial to support a natural style of macro-based language extension.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/sk-automata-macros/"))
      
      (sb:inproceedings
       sb:key: "FergusonDeugo:PLOP2001"
       sb:author: "Darrell Ferguson and Dwight Deugo"
       sb:title: "Call with Current Continuation Patterns"
       sb:booktitle: "8th Conference on Pattern Languages of Programs"
       sb:month: "September"
       sb:year: "2001"
       (sb:abstract "This paper outlines the recurring use of continuations. A brief overview of continuations is given. This is followed by several patterns that outline the use of continuations leading up to using continuations to implement coroutines, explicit backtracking, and multitasking. Scheme is used for the examples as it supports first class continuations.")
       (ps-link "http://repository.readscheme.org/ftp/papers/PLoP2001_dferguson0_1.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/PLoP2001_dferguson0_1.pdf"))
      
      (sb:inproceedings
       sb:key: "CulpepperFelleisen:GPCE2004"
       sb:author: "Ryan Culpepper and Matthias Felleisen"
       sb:title: " Taming Macros"
       sb:booktitle: "Generative Programming and Component Engineering (GPCE 2004)"
       sb:month: "October"
       sb:year: "2004"
       (sb:abstract "Scheme includes a simple yet powerful macro mechanism. Using macros, programmers can easily extend the language with new kinds of expressions and definitions, thus abstracting over recurring syntactic patterns. As with every other powerful language mechanism, programmers can also easily misuse macros and, to this day, broken macro definitions or macro uses pose complex debugging problems to programmers at all levels of experience. In this paper, we present a type system for taming Scheme-like macros. Specifically, we formulate a small model that captures the essential properties of Scheme-style macros. For this model, we formulate a novel type system to eliminate some of these problems, prove its soundness, and validate its pragmatic usefulness.")
       (ps-link "http://www.ccs.neu.edu/scheme/pubs/gpce2004-cf.ps")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/gpce2004-cf.pdf"))
      
      (sb:inproceedings
       sb:key: "Meunier:popl2006"
       sb:author: "Philippe Meunier, Robert Bruce Findler and Matthias Felleisen"
       sb:title: "Modular Set-Based Analysis from Contracts"
       sb:booktitle: "Principles of Programming Languages, POPL 2006"
       sb:month: "January"
       sb:year: "2006"
       (sb:abstract "In PLT Scheme, programs consist of modules with contracts. The latter describe the inputs and outputs of functions and objects via predicates. A run-time system enforces these predicates; if a predicate fails, the enforcer raises an exception that blames a specific module with an explanation of the fault."
                    (h4:p)
                    "In this paper, we show how to use such module contracts to turn set-based analysis into a fully modular parameterized analysis. Using this analysis, a static debugger can indicate for any given contract check whether the corresponding predicate is always satisfied, partially satisfied, or (potentially) completely violated. The static debugger can also predict the source of potential errors, i.e., it is sound with respect to the blame assignment of the contract system.")
       (pdf-link "http://www.ccs.neu.edu/scheme/pubs/popl06-mff.pdf"))
      
      (sb:article
       sb:key: "Dybvig:EPS-LASC"
       sb:author: "R. Kent Dybvig, Daniel P. Friedman and Christopher T. Haynes"
       sb:title: "Expansion-Passing Style: A General Macro Mechanism"
       sb:journal: "LISP and Symbolic Computation"
       sb:month: "June"
       sb:year: "1988"
       sb:number: "1(1)"
       (sb:abstract "The traditional Lisp macro expansion facility inhibits several important forms of expansion control. These include selective expansion of subexpressions, expansion of subexpressions using modified expansion functions, and expansion of application and variable expressions. Furthermore, the expansion algorithm must treat every special form as a separate case. The result is limited expressive power and poor modularity. We propose an alternative facility that avoids these problems, using a technique called expansion-passing style (EPS). The critical difference between the facility proposed here and the traditional macro mechanism is that expansion functions are passed not only an expression to be expanded but also another expansion function. This function may or may not be used to perform further expansion. The power of this technique is illustrated with several examples. Most Lisp systems may be adapted to employ this technique.")
       (pdf-link "http://www.brics.dk/~hosc/local/LaSC-1-1-pp53-75.pdf"))
      
      (sb:article
       sb:key: "Ruf:LogScheme-LASC"
       sb:author: "Erik Ruf and Daniel Weise"
       sb:title: "LogScheme: Integrating Logic Programming into Scheme"
       sb:journal: "LISP and Symbolic Computation"
       sb:month: "September"
       sb:year: "1990"
       sb:number: "3(3)"
       (sb:abstract "This research aims to fully integrate logic programming into the programming language Scheme. We use a minimalist approach, based on the observation that the fundamental aspects of logic programming, nondeterminism and unification, are separable both in concept and in implementation. We have found that only two new primitive functions and one new special form need to be added to Scheme to achieve this integration. Using these primitives, we can write programs in the style of Scheme, Icon, Prolog, or any mixture thereof. We have found that a style of programming that uses both logical and functional techniques can be more powerful than the use of either technique alone. Because Scheme has side effects and continuations, this research addresses different problems and choices than previous research [2, 16, 19] on merging functional and logical languages."))
      
      (sb:unpublished
       sb:key: "Levin:Schemelog98"
       sb:author: "R. Kent Dybvig, Daniel P. Friedman, and Michael Y. Levin"
       sb:title: "Implementation strategies for Scheme-based Prolog systems"
       sb:year: "1998"
       (sb:abstract "Schemelog is a logic programming language similar to Prolog with three improtant distinctions. Schemelog supports a simple module system, provides access to the run-time systems through arbitrary Scheme expressions, and defines a syntax abstraction facility. This paper describes a compiler and a run-time architecture suitable for implementing Schemelog or any other Prolog-like language in Scheme.")
       (ps-link "http://repository.readscheme.org/ftp/papers/schemelog.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/schemelog.pdf"))
      
      (sb:inproceedings
       sb:key: "bondorf:tapsoft89"
       sb:author: "Anders Bondorf"
       sb:title: "A Self-Applicable Partial Evaluator for Term Rewriting Systems"
       sb:booktitle: "Theory and Practice of Software Development (TAPSOFT '89)"
       sb:month: "March"
       sb:year: "1989"
       (ps-link "http://repository.readscheme.org/ftp/papers/bondorf-term-rewriting.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/bondorf-term-rewriting.pdf"))
      
      (sb:inproceedings
       sb:key: "Consel:ESOP88Schism"
       sb:author: "Charles Consel"
       sb:title: "New Insights into Partial Evaluation: the SCHISM Experiment"
       sb:booktitle: "2nd European Symposium on Programming (ESOP '88)"
       sb:month: "March"
       sb:year: "1988"
       (ps-link "http://repository.readscheme.org/ftp/papers/consel-schism-esop88.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/consel-schism-esop88.pdf"))
      
      (sb:inproceedings
       sb:key: "bondorf:fp90-laziness"
       sb:author: "Anders Bondorf"
       sb:title: "Compiling laziness by partial evaluation"
       sb:booktitle: "Functional Programming, Glasgow 1990"
       sb:year: "1990"
       (ps-link "http://repository.readscheme.org/ftp/papers/bondorf-laziness-fp90.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/bondorf-laziness-fp90.pdf"))
      
      (sb:inproceedings
       sb:key: "McCarthySK:Scheme2006"
       sb:author: "Jay McCarthy and Shriram Krishnamurthi"
       sb:title: "Interaction-Safe State for the Web"
       sb:booktitle: "Scheme and Functional Programming, 2006"
       sb:month: "September"
       sb:year: "2006"
       (sb:abstract "Recent research has demonstrated that continuations provide a clean basis to describe interactive Web programs. This account, however, provides only a limited description of state, which is essential to Web applications. This state is affected by the numerous control operators (known as navigation buttons) in Web browsers, which make Web applications behave in unexpected and even erroneous ways."
                    (h4:p)
                    "We describe these subtleties as discovered in the context of working Web applications. Based on this analysis we present linguistic extensions that accurately capture state in the context of the Web, presenting a novel form of dynamic scope. We support this investigation with a formal semantics and a discussion of applications. The results of this paper have already been successfully applied to working applications.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/mk-int-safe-state-web/"))
      
      (sb:article
       sb:key: "Shriram:SCP2006aspects"
       sb:author: "Christopher Dutchyn, David B. Tucker and Shriram Krishnamurthi"
       sb:title: "Semantics and Scoping of Aspects in Higher-Order Languages"
       sb:journal: "Science of Computer Programming"
       sb:year: "2006"
       (sb:abstract "Aspect-oriented software design will need to support languages with first-class and higher-order procedures, such as Ruby, Perl, ML and Scheme. These language features present both challenges and benefits for aspects. On the one hand, they force the designer to carefully address issues of scope that do not arise in first-order languages. On the other hand, these distinctions of scope make it possible to define a much richer variety of policies than first-order aspect languages permit."
                    (h4:p)
                    "In this paper, we describe the subtleties of pointcuts and advice for higher-order languages, particularly Scheme. We then resolve these subtleties by alluding to traditional notions of scope. In particular, programmers can now define both dynamic aspects traditional to AOP and static aspects that can capture common security-control paradigms. We provide an operational semantics, based on an extended CEKS machine, that gives a formal account of dynamic and static aspects. We implement the language as an extension to Scheme. By exploiting two novel features of our Scheme system---continuation marks and language-defining macros---the implementation is lightweight and integrates well into the programmer's toolkit.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/dtk-sem-scope-aspects-ho-lang/"))
      
      (sb:inproceedings
       sb:key: "Shriram:StateLines2006"
       sb:author: "Daniel Ignatoff, Gregory H. Cooper and Shriram Krishnamurthi"
       sb:title: "Crossing State Lines: Adapting Object-Oriented Frameworks to Functional Reactive Languages"
       sb:booktitle: "Functional and Logic Programming Symposium"
       sb:year: "2006"
       (sb:abstract "Functional reactive programming integrates dynamic dataflow with functional programming to offer an elegant and powerful model for expressing computations over time-varying values. Developing realistic applications, however, requires access to libraries, such as those for GUIs, that are written in mainstream object-oriented languages. Previous work has developed functional reactive interfaces for GUI toolkits but has not provided an account of the principles underlying the implementation strategy."
                    (h4:p)
                    "In this paper, we investigate this problem by studying the adaptation of the object-oriented toolkit MrEd to the functional reactive language FrTime. The heart of this problem is how to communicate state changes between the application and the toolkit's widget objects. After presenting a basic strategy for adaptation, we discuss abstraction techniques based on mixins and macros that allow us to adapt numerous properties in many widget classes with minimal code duplication. This results in a wrapper for the entire MrEd toolkit in only a few hundred lines of code. We also briefly discuss a spreadsheet developed with the resulting toolkit.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/ick-adapt-oo-fwk-frp/"))
      
      (sb:inproceedings
       sb:key: "CooperShriram:ESOP2006"
       sb:author: "Gregory H. Cooper and Shriram Krishnamurthi"
       sb:title: "Embedding Dynamic Dataflow in a Call-by-Value Language"
       sb:booktitle: "European Symposium on Programming, 2006"
       sb:year: "2006"
       (sb:abstract "This paper describes FrTime, an extension of Scheme designed for writing interactive applications. Inspired by functional reactive programming, the language embeds dynamic dataflow within a call-by-value functional language. The essence of the embedding is to make program expressions evaluate to nodes in a dataflow graph. This strategy eases importation of legacy code and permits incremental program construction. We have integrated FrTime with the DrScheme programming environment and have used it to develop several novel applications. We describe FrTime's design and implementation in detail and present a formal semantics of its evaluation model.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/ck-frtime/"))
      
      (sb:article
       sb:key: "MarceauShriram:ASEJ2006"
       sb:author: "Guillaume Marceau, Gregory H. Cooper, Jonathan P. Spiro, Shriram Krishnamurthi and Steven P. Reiss"
       sb:title: "The Design and Implementation of a Dataflow Language for Scriptable Debugging"
       sb:journal: "Automated Software Engineering Journal, 2006"
       sb:year: "2006"
       (sb:abstract "Debugging is a laborious, manual activity that often involves the repetition of common operations. Ideally, users should be able to describe these repetitious operations as little programs. Debuggers should therefore be programmable, or " (h4:em "scriptable") ". The operating environment of these scripts, however, imposes interesting design challenges on the programming language in which these scripts are written."
                    (h4:p)
                    "This paper presents our design of a language for scripting debuggers. The language offers powerful primitives that can precisely and concisely capture many important debugging and comprehension metaphors. The paper also describes a pair of debuggers, one for Java and the other for Scheme, built in accordance with these principles. The paper includes concrete examples of applying this debugger to programs.")
       (paper-link "http://www.cs.brown.edu/~sk/Publications/Papers/Published/mcskr-dataflow-lang-script-debug-journal/"))
      
      (sb:mastersthesis
       sb:key: "Rozas:SMThesis"
       sb:author: "Guillermo J. Rozas"
       sb:title: "A Computational Model for Observation in Quantum Mechanics"
       sb:number: "AITR-925"
       sb:school: "Massachusetts Institute of Technology"
       sb:month: "March"
       sb:year: "1987"
       (sb:abstract "A computational model of observation in quantum mechanics is presented. The model provides a clean and simple computational paradigm which can be used to illustrate and possibly explain some of the unintuitive and unexpected behavior of some quantum mechanical systems. As examples, the model is used to simulate three seminal quantum mechanical experiments. The results obtained agree with the predictions of quantum mechanics (and physical measurements), yet the model is perfectly deterministic and maintains a notion of locality.")
       (ps-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-925.ps.gz")
       (pdf-link "http://repository.readscheme.org/ftp/papers/ai-lab-pubs/AITR-925.pdf"))
      
      (sb:phdthesis
       sb:key: "Mason:PhdThesis"
       sb:author: "Ian A. Mason"
       sb:title: "The Semantics of Destructive Lisp"
       sb:school: "Stanford University"
       sb:year: "1986"
       (pdf-link "http://repository.readscheme.org/ftp/papers/mason_phdthesis.pdf"))
      
      (sb:phdthesis
       sb:key: "Talcott:PhdThesis"
       sb:author: "Carolyn Talcott"
       sb:title: "The essence of Rum: A theory of the intensional and extensional aspects of Lisp-type computation"
       sb:school: "Stanford University"
       sb:month: "August"
       sb:year: "1985"
       (pdf-link "http://repository.readscheme.org/ftp/papers/talcott_phdthesis.pdf"))
      
      (sb:techreport
       sb:key: "Talcott:CS-TR-89-1288"
       sb:author: "Carolyn Talcott"
       sb:title: "Programming and Proving with Function and Control Abstractions"
       sb:number: "CS-TR-89-1288"
       sb:institution: "Stanford University"
       sb:month: "October"
       sb:year: "1989"
       (pdf-link "http://repository.readscheme.org/ftp/papers/talcott_cs-tr-89-1288.pdf"))
      
      
      (sb:inproceedings
       sb:key: "sw2006:01-serrano"
       sb:author: "Manuel Serrano"
       sb:title: "The HOP Development Kit"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/01-serrano.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:02-rischpater"
       sb:author: "Ray Rischpater"
       sb:title: "Scheme for Client-Side Scripting in Mobile Web Browsing, or AJAX-Like Behavior Without Javascript"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/02-rischpater.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:03-mccarthy"
       sb:author: "Jay McCarthy and Shriram Krishnamurthi"
       sb:title: "Interaction-Safe State for the Web"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/03-mccarthy.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:04-matthews"
       sb:author: "Jacob Matthews"
       sb:title: "Component Deployment with PLaneT: You Want it Where?"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/04-matthews.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:05-saint-mleux"
       sb:author: "Xavier Saint-Mleux, Marc Feeley and Jean-Pierre David"
       sb:title: "SHard: a Scheme to Hardware Compiler"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/05-saint-mleux.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:06-freund"
       sb:author: "Jessica Gronski, Kenneth Knowles, Aaron Tomb, Stephen N. Freund and Cormac Flanagan"
       sb:title: "Sage: Hybrid Checking for Flexible Specifications"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/06-freund.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:07-clinger"
       sb:author: "William D. Clinger"
       sb:title: "Rapid Case Dispatch in Scheme"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/07-clinger.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:08-cleis"
       sb:author: "Richard Cleis and Keith Wilson"
       sb:title: "Experiences with Scheme in an Electro-Optics Laboratory"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/08-cleis.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:09-germain"
       sb:author: "Guillaume Germain, Marc Feeley and Stefan Monnier"
       sb:title: "Concurrency Oriented Programming in Termite Scheme"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/09-germain.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:10-culpepper"
       sb:author: "Ryan Culpepper and Matthias Felleisen"
       sb:title: "A Stepper for Scheme Macros"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/10-culpepper.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:11-ghuloum"
       sb:author: "Abdulaziz Ghuloum"
       sb:title: "An Incremental Approach to Compiler Construction"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/11-ghuloum.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:12-byrd"
       sb:author: "William E. Byrd and Daniel P. Friedman"
       sb:title: "From Variadic Functions to Variadic Relations: A miniKanren Perspective"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/12-byrd.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:13-siek"
       sb:author: "Jeremy G. Siek and Walid Taha"
       sb:title: "Gradual Typing for Functional Languages"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/13-siek.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:14-dube"
       sb:author: "Danny Dubé and Anass Kadiri"
       sb:title: "Automatic construction of parse trees for lexemes"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/14-dube.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2006:15-barzilay"
       sb:author: "Eli Barzilay"
       sb:title: "A Self-Hosting Evaluator using HOAS"
       sb:booktitle: "2006 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2006"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2006/15-barzilay.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:01-culpepper"
       sb:author: "Ryan Culpepper, Sam Tobin-Hochstadt and Matthew Flatt"
       sb:title: "Advanced Macrology and the Implementation of Typed Scheme"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/01-culpepper.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:02-wadler"
       sb:author: "Philip Wadler and Robert Bruce Findler"
       sb:title: "Well-typed programs can't be blamed"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/02-wadler.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:03-ghuloum"
       sb:author: "Abdulaziz Ghuloum and R. Kent Dybvig"
       sb:title: "Generation-Friendly Eq Hash Tables"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/03-ghuloum.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:04-loitsch"
       sb:author: "Florian Loitsch"
       sb:title: "Exceptional Continuations in JavaScript"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/04-loitsch.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:05-kimball"
       sb:author: "Aaron Kimball and Dan Grossman"
       sb:title: "Software Transactions Meet First-Class Continuations"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/05-kimball.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:06-pierard"
       sb:author: "Adrien Piérard and Marc Feeley"
       sb:title: "Towards a Portable and Mobile Scheme Interpreter"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/06-pierard.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:07-wingo"
       sb:author: "Andy Wingo"
       sb:title: "Applications of Fold to XML Transformation"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/07-wingo.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:08-byrd"
       sb:author: "William E. Byrd and Daniel P. Friedman"
       sb:title: "\alpha Kanren - A Fresh Name in Nominal Logic Programming"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/08-byrd.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:09-meredith"
       sb:author: "Patrick Meredith, Mark Hills, and Grigore Rosu"
       sb:title: "An Executable Rewriting Logic Semantics of K-Scheme"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/09-meredith.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:10-bui"
       sb:author: "Nguyen-Minh Bui"
       sb:title: "Toward abstract profiling"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/10-bui.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:11-normark"
       sb:author: "Kurt Nørmark"
       sb:title: "Deriving a Comprehensive Document from a Concise Document - Document Engineering in Scheme"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/11-normark.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:12-vanderbauwhede"
       sb:author: "Wim Vanderbauwhede"
       sb:title: "Gannet: a Scheme for Task-level Reconfiguration of Service-based Systems-on-Chip"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/12-vanderbauwhede.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2007:13-hufflen"
       sb:author: "Jean-Michel Hufflen"
       sb:title: "Implementing Language-Dependent Lexicographic Orders in Scheme"
       sb:booktitle: "2007 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2007"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2007/13-hufflen.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2008:01-clements"
       sb:author: "John Clements, Ayswarya Sundaram and David Herman"
       sb:title: "Implementing continuation marks in JavaScript"
       sb:booktitle: "2008 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2008"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2008/01-clements.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2008:02-st-amour"
       sb:author: "Vincent St-Amour, Lysiane Bouchard and Marc Feeley"
       sb:title: "Small Scheme Stack: a Scheme TCP/IP stack targeting small embedded applications"
       sb:booktitle: "2008 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2008"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2008/02-st-amour.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2008:03-danvy"
       sb:author: "Olivier Danvy"
       sb:title: "Towards compatible and interderivable semantic specifications for the Scheme programming language, part I: abstract machines, natural semantics, and denotational semantics"
       sb:booktitle: "2008 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2008"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2008/03-danvy.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2008:04-biernacka"
       sb:author: "Małgorzata Biernacka and Olivier Danvy"
       sb:title: "Towards compatible and interderivable semantic specifications for the Scheme programming language, part II: reduction semantics and abstract machines"
       sb:booktitle: "2008 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2008"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2008/04-biernacka.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2008:05-dickey"
       sb:author: "Ken Dickey"
       sb:title: "Thinking Scheme"
       sb:booktitle: "2008 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2008"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2008/05-dickey.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2008:06-crestani"
       sb:author: "Marcus Crestani"
       sb:title: "Foreign-Function Interfaces for Garbage-Collected Programming Languages"
       sb:booktitle: "2008 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2008"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2008/06-crestani.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2008:07-klock"
       sb:author: "Felix S. Klock II"
       sb:title: "The layers of Larceny's foreign function interface"
       sb:booktitle: "2008 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2008"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2008/07-klock.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2008:08-willcock"
       sb:author: "Jeremiah Willcock, Andrew Lumsdaine and Daniel Quinlan"
       sb:title: "Tabled execution in Scheme (Scheme Pearl)"
       sb:booktitle: "2008 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2008"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2008/08-willcock.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2008:09-herman"
       sb:author: "David Herman and David Van Horn"
       sb:title: "A few principles of macro design"
       sb:booktitle: "2008 Workshop on Scheme and Functional Programming"
       sb:month: "September"
       sb:year: "2008"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2008/09-herman.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:01-eastland"
       sb:author: "Carl Eastlund and Matthias Felleisen"
       sb:title: "Sequence Traces for Object-Oriented Executions"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/01-eastland.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:02-clinger"
       sb:author: "William D Clinger and Felix S. Klock II"
       sb:title: "Scalable Garbage Collection with Guaranteed MMU"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/02-clinger.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:03-klein"
       sb:author: "Casey Klein and Robert Bruce Findler"
       sb:title: "Randomized Testing in PLT Redex"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/03-klein.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:04-keep"
       sb:author: "Andrew W. Keep, Michael D. Adams, Lindsey Kuper, William E. Byrd and Daniel P. Friedman"
       sb:title: "A pattern-matcher for miniKanren -or- How to get into trouble with CPS macros"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/04-keep.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:05-tanter"
       sb:author: "Eric Tanter"
       sb:title: "Higher-Order Aspects in Order"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/05-tanter.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:06-ghuloum"
       sb:author: "Abdulaziz Ghuloum and R. Kent Dybvig"
       sb:title: "Fixing Letrec (reloaded)"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/06-ghuloum.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:07-barzilay"
       sb:author: "Eli Barzilay"
       sb:title: "The Scribble Reader: An Alternative to S-expressions for Textual Content"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/07-barzilay.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:08-might"
       sb:author: "Matthew Might and Tarun Prabhu"
       sb:title: "Interprocedural Dependence Analysis of Higher-Order Programs via Stack Reachability"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/08-might.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:09-hsu"
       sb:author: "Aaron W. Hsu"
       sb:title: "Descot: Distributed Code Repository Framework"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/09-hsu.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:10-flatt"
       sb:author: "Matthew Flatt and Eli Barzilay"
       sb:title: "Keyword and Optional Arguments in PLT Scheme"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/10-flatt.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:11-koksal"
       sb:author: "Mehmet Fatih Köksal, Remzi Emre Başar, Suzan Üsküdarlı"
       sb:title: "Screen-Replay: A Session Recording and Analysis Tool for DrScheme"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/11-koksal.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:12-moore"
       sb:author: "John Moore"
       sb:title: "Get stuffed: Tightly packed abstract protocols in Scheme"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/12-moore.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:13-cowley"
       sb:author: "Anthony Cowley"
       sb:title: "Distributed Software Transactional Memory"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/13-cowley.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:14-basar"
       sb:author: "Remzi Emre Başar, Caner Derici and Çağdaş Şenol"
       sb:title: "World With Web: A compiler from world applications to JavaScript"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/14-basar.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2009:15-danvy"
       sb:author: "Olivier Danvy"
       sb:title: "Peter J Landin (1930-2009)"
       sb:booktitle: "2009 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2009"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2009/15-danvy.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2010:01-prashanth"
       sb:author: "Hari Prashanth and Sam Tobin-Hochstadt"
       sb:title: "Functional Data Structures for Typed Racket"
       sb:booktitle: "2010 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2010"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2010/01-prashanth.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2010:02-hsu"
       sb:author: "Aaron W. Hsu"
       sb:title: "Implementing User-level Value-weak Hashtables"
       sb:booktitle: "2010 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2010"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2010/02-hsu.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2010:03-earl"
       sb:author: "Christopher Earl, Matthew Might and David Van Horn"
       sb:title: "Pushdown Control-Flow Analysis of Higher-Order Programs"
       sb:booktitle: "2010 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2010"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2010/03-earl.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2010:04-marceau"
       sb:author: "Guillaume Marceau, Kathi Fisler and Shriram Krishnamurthi"
       sb:title: "Measuring the Effectiveness of Error Messages Designed for Novice Programmers"
       sb:booktitle: "2010 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2010"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2010/04-marceau.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2010:05-cartier"
       sb:author: "Guillaume Cartier and Louis-Julien Guillemette"
       sb:title: "JazzScheme: Evolution of a Lisp-Based Development System"
       sb:booktitle: "2010 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2010"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2010/05-cartier.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2010:06-barland"
       sb:author: "Ian Barland, Robert Findler, and Matthew Flatt"
       sb:title: "The Design of a Functional Image Library"
       sb:booktitle: "2010 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2010"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2010/06-barland.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2010:07-keep"
       sb:author: "Andrew Keep and R. Kent Dybvig"
       sb:title: "Enabling cross-library optimization and compile-time error checking in the presence of procedural macros"
       sb:booktitle: "2010 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2010"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2010/07-keep.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2010:08-latendresse"
       sb:author: "Mario Latendresse"
       sb:title: "Guiding Requirements for the Ongoing Scheme Standardization Process"
       sb:booktitle: "2010 Workshop on Scheme and Functional Programming"
       sb:month: "August"
       sb:year: "2010"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2010/08-latendresse.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2011:01-atkinson"
       sb:author: "Kevin Atkinson and Matthew Flatt"
       sb:title: "Adapting Scheme-Like Macros to a C-Like Language"
       sb:booktitle: "2011 Workshop on Scheme and Functional Programming"
       sb:month: "October"
       sb:year: "2011"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2011/01-atkinson.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2011:02-alvis"
       sb:author: "Claire E. Alvis, Jeremiah J. Willcock, Kyle M. Carter, William E. Byrd and Daniel P. Friedman"
       sb:title: "cKanren: miniKanren with Constraints"
       sb:booktitle: "2011 Workshop on Scheme and Functional Programming"
       sb:month: "October"
       sb:year: "2011"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2011/02-alvis.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2011:03-keep"
       sb:author: "Andrew W. Keep and R. Kent Dybvig"
       sb:title: "Ftypes: Structured foreign types"
       sb:booktitle: "2011 Workshop on Scheme and Functional Programming"
       sb:month: "October"
       sb:year: "2011"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2011/03-keep.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2011:04-serrano"
       sb:author: "Manuel Serrano"
       sb:title: "HopTex, compiling HTML to LaTeX with CSS"
       sb:booktitle: "2011 Workshop on Scheme and Functional Programming"
       sb:month: "October"
       sb:year: "2011"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2011/04-serrano.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2011:05-scholliers"
       sb:author: "Christophe Scholliers, Eric Tanter and Wolfgang De Meuter"
       sb:title: "Computational Contracts"
       sb:booktitle: "2011 Workshop on Scheme and Functional Programming"
       sb:month: "October"
       sb:year: "2011"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2011/05-scholliers.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2011:06-hsu"
       sb:author: "Aaron W. Hsu"
       sb:title: "Hygienic Literate Programming: Lessons from ChezWEB"
       sb:booktitle: "2011 Workshop on Scheme and Functional Programming"
       sb:month: "October"
       sb:year: "2011"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2011/06-hsu.pdf"))
      
      (sb:inproceedings
       sb:key: "sw2011:07-barzilay"
       sb:author: "Keeping it Clean with syntax-parameterize"
       sb:title: "Eli Barzilay, Ryan Culpepper, Matthew Flatt"
       sb:booktitle: "2011 Workshop on Scheme and Functional Programming"
       sb:month: "October"
       sb:year: "2011"
       (pdf-link "http://repository.readscheme.org/ftp/papers/sw2011/07-barzilay.pdf"))
      
      )))
  
  (define scmbib-lst (xml-element-contents SchemeBiblio))
  (define scmbib-size (length scmbib-lst))
  
  ;(define (online? item)
  ;  (not (null? (xml-element-contents item))))
  
  (define (online? item)
    (ormap sb:link? (xml-element-contents item)))
  
  (define (count-linked-papers lst)
    (if (null? lst)
        0
        (if (online? (car lst))
            (+ 1 (count-linked-papers (cdr lst)))
            (count-linked-papers (cdr lst)))))
  
  (define online-count (count-linked-papers scmbib-lst))
  
  (provide SchemeBiblio
           scmbib-size
           online-count)
  
  )
