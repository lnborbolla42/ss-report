#=============================================================================
#   Report makefile
#   Reporte de pentominos
#   Servicio social - Laura Natalia Borbolla Palacios
#=============================================================================

# VARIABLES
TEMPORAL_DIRECTORY	:= latex_temp
COMPILATION					:= pdflatex -shell-escape --output-dir $(TEMPORAL_DIRECTORY)


MAIN_PAPER:
	$(COMPILATION) reporte.tex

MAIN_PAPER_WITH_SOURCES:
	$(COMPILATION) reporte.tex
	biber --input-directory $(TEMPORAL_DIRECTORY) \
		$(TEMPORAL_DIRECTORY)/reporte.bcf
	$(COMPILATION) reporte.tex
