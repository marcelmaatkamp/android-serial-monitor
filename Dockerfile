FROM gradle:alpine

WORKDIR /project
ADD build.gradle /project
ADD examplesync /project
ADD gradle /project
ADD gradle.properties /project
ADD rxandroid /project
ADD settings.gradle /project

# USER root
# RUN chown -R gradle:gradle project
# USER gradle

ENTRYPOINT gradle
CMD ["gradle", "installDebug"]
