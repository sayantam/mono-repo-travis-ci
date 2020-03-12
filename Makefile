ruby_install:
	if $TRAVIS_BUILD_DIR/.travis/build-condition.sh $TRAVIS_COMMIT_RANGE ruby-project; then \
	  cd $TRAVIS_BUILD_DIR/ruby-project && bundle install \
	fi

ruby_test:
	if $TRAVIS_BUILD_DIR/.travis/build-condition.sh $TRAVIS_COMMIT_RANGE ruby-project; then \
	  cd $TRAVIS_BUILD_DIR/ruby-project && rake \
	fi
