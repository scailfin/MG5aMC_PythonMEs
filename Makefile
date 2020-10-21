default: test

test:
	@# Use CURDIR in Make instead of PWD
	@docker run --rm \
  -v "${CURDIR}":"${CURDIR}" \
  -w "${CURDIR}" \
  scailfin/madgraph5-amc-nlo:mg5_amc2.8.1 \
	"bash tests/test.sh"

clean:
	@docker run --rm \
  -v "${CURDIR}":"${CURDIR}" \
  -w "${CURDIR}" \
  scailfin/madgraph5-amc-nlo:mg5_amc2.8.1 \
  "rm -f py.py"

realclean: clean
	@docker run --rm \
  -v "${CURDIR}":"${CURDIR}" \
  -w "${CURDIR}" \
  scailfin/madgraph5-amc-nlo:mg5_amc2.8.1 \
  "rm -rf MG5aMC_TFMEs_output_example; rm -rf MG5aMC_PythonMEs_output_example"

sandbox:
	@docker run --rm -it\
  -v "${CURDIR}":"${CURDIR}" \
  -w "${CURDIR}" \
  scailfin/madgraph5-amc-nlo:mg5_amc2.8.1

docker-image:
	docker build . \
	-f docker/Dockerfile \
	--build-arg BASE_IMAGE=scailfin/madgraph5-amc-nlo:mg5_amc2.8.1 \
	-t scailfin/mg5amc_pythonmes:debug-local
