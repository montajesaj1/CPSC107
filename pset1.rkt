;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pset1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
;; DO NOT PUT ANY PERSONALLY IDENTIFYING INFORMATION BEYOND YOUR CWL IN THIS
;; FILE.  CWLS WILL BE SUFFICIENT TO IDENTIFY YOU AND, IF YOU HAVE ONE, YOUR
;; PARTNER.
;; 
;; DO NOT PUT ANYTHING BUT TEXT IN THIS FILE. (NO COMMENT BOXES, NO IMAGES.)

(require spd/tags)
(require 2htdp/image)
    
(@assignment 107/psets/pset-01); Do not edit or remove this tag
(@cwl montajes)           ; Replace ??? with your cwl,
;;                       ; second ??? is replaced with partner cwl if you have
;;                       ; one and deleted if you're working alone
    


(@problem 1)
;;
;; Write the BSL expression that most clearly represents the following
;; arithmetic expression:
;; 
;; 
;; ((4 * 6) / 8 + 7) * (6 - 1)
;; 
;; which equals 50.
;; 
;; We have a single answer in mind that both produces the correct result
;; and most closely matches the structure of the equation.  So while just
;; 50 is an expression that evaluates to 50, that is not the answer we are
;; looking for, because it doesn't show the structure of the expression above.
;; 
;; Your answer should follow the line with the @problem tag below.

(* (- 6 1) (+(/ (* 4 6) 8) 7))







(@problem 2)
;; 
;; Given the definitions below (YOUTH, SENIOR, PRICE, DISCOUNT-PRICE, and
;; display-ticket-cost), write the step-by-step evaluation of this expression:
;; 
;; (display-ticket-cost (+ 20 4))
;; 
;; Be sure to show every intermediate evaluation step, including the original
;; expression and the final result.
;; 
;; Your answer should follow the definition of display-ticket-cost below.

(define YOUTH 18)
(define SENIOR 65)
(define PRICE 10)
(define DISCOUNT-PRICE 5)


(define (display-ticket-cost age)
  (if (or (< age YOUTH) (>= age SENIOR))
      (string-append "Ticket price is $" (number->string DISCOUNT-PRICE))  
      (string-append "Ticket price is $" (number->string PRICE))))  

(display-ticket-cost (+ 20 4))


(@problem 3)
;;
;; Riley wrote the function but is getting an error when they run the file.
;; Uncomment the function design below when you are ready to start working
;; on this problem.
;; 
;; Help Riley by fixing the error!

;; When you are done, do NOT comment out the design again
;; UNLESS your design still produces an error.  Anything
;; that produces an error must be commented out when submitting
;; to Handin, or you will likely get 0 from the autograder.


(@htdf greater-than-100?)
(@signature Natural -> Boolean)
;; produces true if n is greater than 100
(check-expect (greater-than-100? 100) false)
(check-expect (greater-than-100? 99) false)
(check-expect (greater-than-100? 2) false)
(check-expect (greater-than-100? 101) true)
(check-expect (greater-than-100? 2232) true)

; (define (greater-than-100? n) false)

(@template Natural)
(define (greater-than-100? n)
  (> n 100))


(@problem 4)
;;
;; Below is a function design in Python from CPSC 103. Please translate
;; this function design to BSL and use a comment to label every artefact
;; that the recipe requires. You should label the signature, purpose,
;; stub, examples/tests, template tag, and function body. Do not delete
;; the stub and template instead, comment them out.
;;

;@typecheck
;def pixel(size: int, colour: str) -> Image:   
;    """
;    Return a pixel of the given size and colour    
;    """
;    
;    # return square(1, "solid", "white")  #body of stub
;    # return ...(size, colour)  # template based on Atomic Non-Distinct
;    return square(size, "solid", colour)    
;
;# Begin testing
;start_testing()
;
;
;# Examples and tests for pixel
;expect(pixel(20, "blue"), square(20, "solid", "blue"))
;expect(pixel(25, "green"), square(25, "solid", "green"))
;
;# Show testing summary
;summary()

(@htdf pixel)
(@signature Integer String -> Image)
;; Return a pixel of the given size and colour

(check-expect (pixel 20 "blue") (square 20 "solid" "blue"))
(check-expect (pixel 25 "green") (square 25 "solid" "green"))

; (define (pixel size colour) (square 20 "solid" "blue")) ; stub

(define (pixel size colour)
  (square size "solid" colour))


(@problem 5)
;; 
;; Design a function, called nametag, that consumes someone's name and produces
;; an image of a nametag for that person. The nametag should be circular and
;; display the name, but beyond that you can design what it looks like.

(define CIRCLE (circle 50 "outline" "black"))

(@htdf nametag)
(@signature String -> Image)
;; Takes a string value of a name and poduces a circular image nametag

(check-expect (nametag "AJ") (overlay (text "AJ" 20 "black") CIRCLE))
(check-expect (nametag "Selin") (overlay (text "Selin" 20 "black") CIRCLE))

;; (define (nametag name) CIRCLE) ; stub

(define (nametag name)
  (overlay (text name 20 "black") CIRCLE))




