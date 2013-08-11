(module scm-search mzscheme
  
  (provide scm-servlet)
  
  (require (lib "unitsig.ss")
           (lib "servlet-sig.ss" "web-server")
           (lib "servlet-helpers.ss" "web-server")
           (lib "date.ss")
           (lib "xml.ss" "webit")
           (lib "html.ss" "webit")
           (lib "css.ss" "webit")
           (lib "siql.ss" "siql")
           (lib "webit-sxpath.ss" "sxpath")
           (lib "sbib.ss" "webit")
           (lib "string.ss")
           (lib "sbib.exs.ss" "siteml"))
  
  (start-repository '(scheme_biblio.sbib haskell_biblio.sbib))
  
  (define expand-result (stylesheet->expander sbib-stylesheet))
  
  (define (kernel-query pattern node)
    (if (equal? pattern "")
        #f
        (let ((names (sb:&author? node))
              (title (sb:&title? node)))
          (or
           (if names
               (let ((lnames (string-copy names)))
                 (string-lowercase! lnames)
                 (regexp-match pattern lnames))
               #f)
           (if title
               (let ((ltitle (string-copy title)))
                 (string-lowercase! ltitle)
                 (regexp-match pattern ltitle))
               #f)))))
  
  (define (space-query pattern node)
    (let ((query-set (regexp-split " " pattern)))
      (andmap (lambda (sub-pat)
                (if (equal? sub-pat "")
                    #f
                    (kernel-query sub-pat node)))
              query-set)))
  
  (define (and-query pattern node)
    (let ((query-set (regexp-split "\\+and\\+" pattern)))
      (andmap (lambda (sub-pat)
                (if (equal? sub-pat "")
                    #f
                    (space-query sub-pat node)))
              query-set)))
  
  (define (or-query pattern node)
    (let ((query-set (regexp-split "\\+or\\+" pattern)))
      (ormap (lambda (sub-pat)
               (if (equal? sub-pat "")
                   #f
                   (and-query sub-pat node)))
             query-set)))
  
  (define (query pattern)
    (if (= (string-length pattern) 0)
        '()
        (let ((result-set (siql-query (string->symbol "scheme_biblio.sbib")
                                      (select-kids
                                       (lambda (node)
                                         (or-query pattern node))))))
          result-set)))
  
  (define scm-servlet
    (let ([count 0]
          [date (date->string (seconds->date (current-seconds)) 'time-too)])
      (unit/sig () (import servlet^)
        
        (set! count (add1 count))
        
        (define search-word
          (extract-binding/single 'pattern
                                  (request-bindings initial-request)))
        
        (string-lowercase! search-word)
        
        (define query-results
          (query search-word))
        
        (servlet-result
         (h4:html 
          (h4:head
           (h4:title
            "Search Results...")
           (text/css-html
            (a:link (color "#ff0000"))
            (a:visited (color "#cc6666"))
            (a:active (color "#996666"))
            (body (font-family 
                   "times, times-roman, serif")
                  ;          "verdana, times, times-roman, serif")
                  (color "#993300")
                  (font-size "11pt")
                  (background-color "#fff8dc")
                  (margin-left "5pt")
                  (margin-right "36pt"))
            (.pagecounter (visibility "hidden"))
            (h1 (font-family "Arial, Helvetica, sans-serif")
                (font-weight "bold")
                (font-size "24pt")
                (color "#993300"))
            (h2 (font-family "Arial, Helvetica, sans-serif")
                (font-weight "bold")
                (font-size "14pt")
                (font-style "italic")
                (color "#993300"))
            (h3 (font-family "Arial, Helvetica, sans-serif")
                (font-weight "bold")
                (font-size "12pt")
                (color "#993300"))
            ))
          (h4:body
           h4:bgcolor: "white"
           (h4:table 
            h4:width: "100%"
            (h4:tr 
             h4:valign: "top"
             (h4:td
              h4:width: "124"
              (h4:table h4:width: "124"
                        (h4:tr h4:width: "124" h4:height: "45" 
                               (h4:td h4:width: "124" h4:height: "45" 
                                      (h4:a h4:href: "http://readscheme.org" 
                                            (h4:img h4:width: "124"
                                                    h4:height: "45"
                                                    h4:border: "0"
                                                    h4:alt: "Readscheme.org"
                                                    h4:src: "../nav-logo.gif"))))
                        (h4:tr h4:width: "124" h4:height: "124" 
                               (h4:td h4:width: "124" h4:height: "124" 
                                      (h4:a h4:href: "../index.html" h4:target: "_top" 
                                            (h4:img h4:width: "124" 
                                                    h4:height: "124"
                                                    h4:border: "0"
                                                    h4:alt: "Scheme Bibliography Home"
                                                    h4:src: "../nav_mainlogo.gif"))))
                        (h4:tr h4:width: "124" h4:height: "30"
                               (h4:td h4:width: "124" h4:height: "30"
                                      (h4:a h4:href: "../page1.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "30"
                                                    h4:border: "0"
                                                    h4:alt: "Classics"
                                                    h4:src: "../nav_classics.gif"))))
                        (h4:tr h4:width: "124" h4:height: "18"
                               (h4:td h4:width: "124" h4:height: "18"
                                      (h4:a h4:href: "../page2.html" h4:target: "_top" 
                                            (h4:img h4:width: "124"
                                                    h4:height: "18"
                                                    h4:border: "0"
                                                    h4:alt: "Semantics"
                                                    h4:src: "../nav_sem.gif"))))
                        (h4:tr h4:width: "124" h4:height: "18"
                               (h4:td h4:width: "124" h4:height: "18"
                                      (h4:a h4:href: "../page3.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "18"
                                                    h4:border: "0"
                                                    h4:alt: "Macros"
                                                    h4:src: "../nav_macros.gif"))))
                        (h4:tr h4:width: "124" h4:height: "18"
                               (h4:td h4:width: "124" h4:height: "18"
                                      (h4:a h4:href: "../page4.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "18"
                                                    h4:border: "0"
                                                    h4:alt: "Objects"
                                                    h4:src: "../nav_objects.gif"))))
                        (h4:tr h4:width: "124" h4:height: "30"
                               (h4:td h4:width: "124" h4:height: "30"
                                      (h4:a h4:href: "../page5.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "30"
                                                    h4:border: "0"
                                                    h4:alt: "Modules"
                                                    h4:src: "../nav_modules.gif"))))
                        (h4:tr h4:width: "124" h4:height: "18" 
                               (h4:td h4:width: "124" h4:height: "18" 
                                      (h4:a h4:href: "../page6.html" h4:target: "_top" 
                                            (h4:img h4:width: "124"
                                                    h4:height: "18"
                                                    h4:border: "0"
                                                    h4:alt: "Continuations"
                                                    h4:src: "../nav_cps.gif"))))
                        (h4:tr h4:width: "124" h4:height: "30"
                               (h4:td h4:width: "124" h4:height: "30"
                                      (h4:a h4:href: "../pagexml.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "30"
                                                    h4:border: "0"
                                                    h4:alt: "Web Programming"
                                                    h4:src: "../nav_xml.gif"))))
                        (h4:tr h4:width: "124" h4:height: "18"
                               (h4:td h4:width: "124" h4:height: "18"
                                      (h4:a h4:href: "../page7.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "18"
                                                    h4:border: "0"
                                                    h4:alt: "Applications"
                                                    h4:src: "../nav_appl.gif"))))
                        (h4:tr h4:width: "124" h4:height: "18"
                               (h4:td h4:width: "124" h4:height: "18"
                                      (h4:a h4:href: "../page8.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "18"
                                                    h4:border: "0"
                                                    h4:alt: "Implementation"
                                                    h4:src: "../nav_impl.gif"))))
                        (h4:tr h4:width: "124" h4:height: "30"
                               (h4:td h4:width: "124" h4:height: "30"
                                      (h4:a h4:href: "../page9.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "30"
                                                    h4:border: "0"
                                                    h4:alt: "Concurrent Programming"
                                                    h4:src: "../nav_conc.gif"))))
                        (h4:tr h4:width: "124" h4:height: "30"
                               (h4:td h4:width: "124" h4:height: "30"
                                      (h4:a h4:href: "../page10.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "30"
                                                    h4:border: "0"
                                                    h4:alt: "Partial Evaluation"
                                                    h4:src: "../nav_pe.gif"))))
                        (h4:tr h4:width: "124" h4:height: "18"
                               (h4:td h4:width: "124" h4:height: "18"
                                      (h4:a h4:href: "../page11.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "18"
                                                    h4:border: "0"
                                                    h4:alt: "Reflection"
                                                    h4:src: "../nav_reflect.gif"))))
                        (h4:tr h4:width: "124" h4:height: "30"
                               (h4:td h4:width: "124" h4:height: "30"
                                      (h4:a h4:href: "../whats_new.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "30"
                                                    h4:border: "0"
                                                    h4:alt: "Recent Additions"
                                                    h4:src: "../nav_recent.gif"))))
                        (h4:tr h4:width: "124" h4:height: "18"
                               (h4:td h4:width: "124" h4:height: "18"
                                      (h4:a h4:href: "../search.html" h4:target: "_top"
                                            (h4:img h4:width: "124"
                                                    h4:height: "18"
                                                    h4:border: "0"
                                                    h4:alt: "Search..."
                                                    h4:src: "../nav_search.gif")))))
              (h4:td h4:width: "20" 
                     (h4:img h4:width: "20"
                             h4:height: "1"
                             h4:border: "0"
                             h4:src: "../dot_clear.gif"))
              (h4:td (h4:a h4:name: "Search..."
                           (h4:h2 "Search Results...")
                           (if (pair? query-results)
                               (h4:ul
                                (map (lambda (item)
                                       (h4:li (expand-result item)))
                                     query-results))
                               (h4:p "No results found for \"" search-word "\".")))))))))))))
  
  )

(require scm-search)

scm-servlet
