FROM corentinth/it-tools:latest

USER root:root

COPY --from=rexezugebuild/appservicelauncher /.AppServiceLauncher /.AppServiceLauncher

ENV WEBSITES_PORT=80

ENTRYPOINT ["/.AppServiceLauncher/launcher.sh"]

CMD ["nginx", "-g", "daemon off;"]
