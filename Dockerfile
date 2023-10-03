ARG RUBY_VERSION=3.1.4
FROM ruby:${RUBY_VERSION} as ruby
# The note image comes with python by default 
# so starting here is the path of least resistance 
FROM node:14.21.3
# COPYING compiled ruby  Ruby Dependencies
COPY --from=ruby /lib /lib
# COPY Ruby
COPY --from=ruby /usr/local /usr/local

CMD [ "/bin/bash" ]
