default: run

run:
	@# Use CURDIR in Make instead of PWD
	@docker run --rm \
  -v "${CURDIR}":"${CURDIR}" \
  -w "${CURDIR}" \
  scailfin/madgraph5-amc-nlo:mg5_amc2.8.1 \
	"bash tests/run.sh"

clean:
	@docker run --rm \
  -v "${CURDIR}":"${CURDIR}" \
  -w "${CURDIR}" \
  scailfin/madgraph5-amc-nlo:mg5_amc2.8.1 \
  "rm -rf ttbar_output"

sandbox:
	@docker run --rm -it\
  -v "${CURDIR}":"${CURDIR}" \
  -w "${CURDIR}" \
  scailfin/madgraph5-amc-nlo:mg5_amc2.8.1
