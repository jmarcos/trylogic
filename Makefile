all:
	$(MAKE) -C js_of_ocaml
	$(MAKE) -C js_of_ocaml/compiler compiler.cma
	$(MAKE) -C cmicomp
	$(MAKE) -C ocp-jslib
	$(MAKE) -C ocaml-num
#	$(MAKE) -C toplevel 
	$(MAKE) -C toplevel-logic
	$(MAKE) -C tutorial
#	$(MAKE) -C try-ocaml 
	$(MAKE) -C try-logic_proofweb/pub
#	$(MAKE) -C try-js_of_ocaml

clean:
	$(MAKE) -C js_of_ocaml clean
	$(MAKE) -C ocp-jslib clean
#	$(MAKE) -C toplevel clean
	$(MAKE) -C toplevel-logic clean
	$(MAKE) -C ocaml-num clean
	$(MAKE) -C tutorial clean
#	$(MAKE) -C try-ocaml clean
	$(MAKE) -C try-logic_proofweb/pub clean	
#	$(MAKE) -C try-js_of_ocaml clean


depend:
	$(MAKE) -C js_of_ocaml depend
	$(MAKE) -C cmicomp depend
	$(MAKE) -C ocp-jslib depend
#	$(MAKE) -C toplevel depend
	$(MAKE) -C toplevel-logic depend
	$(MAKE) -C ocaml-num depend
	$(MAKE) -C tutorial depend
#	$(MAKE) -C try-ocaml depend
	$(MAKE) -C try-logic_proofweb/pub depend	
#	$(MAKE) -C try-js_of_ocaml depend

update-lessons:
	touch ocaml-lessons/goodies.ml
	$(MAKE) -C try-ocaml

upload:
	$(MAKE) -C try-ocaml upload
	$(MAKE) -C try-js_of_ocaml upload
