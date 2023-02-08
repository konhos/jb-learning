{{/* This is a comment */}}
{{- define "spring.labels" }}
generator: helm
date: {{ now | htmlDate }}
name: {{ .Release.Name }}
version: {{ .Chart.Version }}
app: {{ .Chart.Name }}
{{- end }}

{{- define "spring.cron.spec" }}
containers:
- name: {{ .Chart.Name }}-job
  image: {{ .Values.cron.image }}
  imagePullPolicy: IfNotPresent
  command:
  - /bin/sh
  - c
  - {{ .Values.cron.command }}
   
restartPolicy: OnFailure
{{- end }}