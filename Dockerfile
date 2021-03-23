FROM python:3.7-buster
# ARG GE_EXTRA_DEPS="spark,sqlalchemy,redshift,s3,gcp,snowflake"
ENV PYTHONIOENCODING utf-8
ENV LANG C.UTF-8
ENV HOME /root
ENV PATH /usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${HOME}/.local/bin
ENV GE_HOME /usr/app/great_expectations

RUN pip install great-expectations sqlalchemy psycopg2-binary && \
    alias ge="great_expectations"
WORKDIR ${GE_HOME}
