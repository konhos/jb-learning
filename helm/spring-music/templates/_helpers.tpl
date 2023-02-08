{{/* This is a comment */}}
{{- define "spring.labels" }}
generator: helm
date: {{ now | htmlDate }}
name: {{ .Release.Name }}
version: {{ .Chart.Version }}
app: {{ .Chart.Name }}
{{- end }}

{{- define "springs.cron.spec " }}
containers:
- name: {{ .Chart.Name }}-job
  image: {{ .Values.cron.image }}
  imagePullPolicy: IfNotPresent
  command:
  - /bin/sh
  - -c
  - echo Hello World 
restartPolicy: OnFailure