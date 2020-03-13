CHANGES = ${TRAVIS_BUILD_DIR}/.travis/build-condition.sh ${TRAVIS_COMMIT_RANGE}
RUBY_PROJECT_PATH = ${TRAVIS_BUILD_DIR}/ruby-project
JAVA_PROJECT_PATH = ${TRAVIS_BUILD_DIR}/java-project
NODEJS_PROJECT_PATH = ${TRAVIS_BUILD_DIR}/nodejs-project

ifeq ($(PROJECT), ruby)
PROJECT_NAME = ruby-project
PROJECT_PATH = ${TRAVIS_BUILD_DIR}/${PROJECT_NAME}
endif

ifeq ($(PROJECT), java)
PROJECT_NAME = java-project
PROJECT_PATH = ${TRAVIS_BUILD_DIR}/${PROJECT_NAME}
endif

ifeq ($(PROJECT), nodejs)
PROJECT_NAME = nodejs-project
PROJECT_PATH = ${TRAVIS_BUILD_DIR}/${PROJECT_NAME}
endif

install:
	if ${CHANGES} ${PROJECT}; then cd ${PROJECT_PATH} && make install; fi

test:
	if ${CHANGES} ${PROJECT}; then cd ${PROJECT_PATH} && make test; fi

integration:
	if ${CHANGES} ${PROJECT}; then cd ${PROJECT_PATH} && make integration; fi

publish:
	if ${CHANGES} ${PROJECT}; then cd ${PROJECT_PATH} && make publish; fi

package:
	if ${CHANGES} ${PROJECT}; then cd ${PROJECT_PATH} && make package; fi

build:
	if ${CHANGES} ${PROJECT}; then cd ${PROJECT_PATH} && make build; fi
