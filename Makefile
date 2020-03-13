CHANGES = ${TRAVIS_BUILD_DIR}/.travis/build-condition.sh ${TRAVIS_COMMIT_RANGE}
RUBY_PROJECT_PATH = ${TRAVIS_BUILD_DIR}/ruby-project

ruby_install:
	if ${CHANGES} ruby-project; then cd ${RUBY_PROJECT_PATH} && make install; fi

ruby_test:
	if ${CHANGES} ruby-project; then cd ${RUBY_PROJECT_PATH} && make test; fi
