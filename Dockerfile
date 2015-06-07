FROM ruby:2.2.2

EXPOSE 4567

ADD . /home/app/webapp

WORKDIR /home/app/webapp
RUN bundle install

WORKDIR /home/app/webapp
CMD ["ruby", "lib/docker-ci-demo.rb"]
