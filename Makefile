CHANGES = ${TRAVIS_BUILD_DIR}/.travis/build-condition.sh ${TRAVIS_COMMIT_RANGE}
RUBY_PROJECT_PATH = ${TRAVIS_BUILD_DIR}/ruby-project
JAVA_PROJECT_PATH = ${TRAVIS_BUILD_DIR}/java-project
NODEJS_PROJECT_PATH = ${TRAVIS_BUILD_DIR}/nodejs-project

ruby_install:
	if ${CHANGES} ruby-project; then cd ${RUBY_PROJECT_PATH} && make install; fi

ruby_test:
	if ${CHANGES} ruby-project; then cd ${RUBY_PROJECT_PATH} && make test; fi

ruby_integration:
	if ${CHANGES} ruby-project; then cd ${RUBY_PROJECT_PATH} && make integration; fi

ruby_publish:
	if ${CHANGES} ruby-project; then cd ${RUBY_PROJECT_PATH} && make publish; fi

java_install:
	if ${CHANGES} java-project; then cd ${JAVA_PROJECT_PATH} && ./gradlew; fi

java_test:
	if ${CHANGES} java-project; then cd ${JAVA_PROJECT_PATH} && ./gradlew; fi

java_package:
	if ${CHANGES} java-project; then cd ${JAVA_PROJECT_PATH} && ./gradlew; fi

java_integration:
	if ${CHANGES} java-project; then cd ${JAVA_PROJECT_PATH} && ./gradlew; fi

java_publish:
	if ${CHANGES} java-project; then cd ${JAVA_PROJECT_PATH} && ./gradlew; fi

nodejs_install:
	if ${CHANGES} nodejs-project; then cd ${NODEJS_PROJECT_PATH} && npm start; fi

nodejs_test:
	if ${CHANGES} nodejs-project; then cd ${NODEJS_PROJECT_PATH} && npm start; fi

nodejs_build:
	if ${CHANGES} nodejs-project; then cd ${NODEJS_PROJECT_PATH} && npm start; fi

nodejs_package:
	if ${CHANGES} nodejs-project; then cd ${NODEJS_PROJECT_PATH} && npm start; fi

nodejs_integration:
	if ${CHANGES} nodejs-project; then cd ${NODEJS_PROJECT_PATH} && npm start; fi

nodejs_publish:
	if ${CHANGES} nodejs-project; then cd ${NODEJS_PROJECT_PATH} && npm start; fi
