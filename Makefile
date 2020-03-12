CHANGES = ${TRAVIS_BUILD_DIR}/.travis/build-condition.sh
RUBY_PROJECT_PATH = ${TRAVIS_BUILD_DIR}/ruby-project

ruby_install:
	if ${CHANGES} ${TRAVIS_COMMIT_RANGE} ruby-project; then cd ${RUBY_PROJECT_PATH} && bundle install; fi

ruby_test:
	if ${CHANGES} ${TRAVIS_COMMIT_RANGE} ruby-project; then cd ${RUBY_PROJECT_PATH} && rake; fi
