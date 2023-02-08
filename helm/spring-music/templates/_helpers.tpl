{{/* This is a comment */}}
{{- define "spring.labels" }}
generator: helm
date: {{ now | htmlDate }}
name: {{ .Release.Name }}
version: {{ .Chart.Version }}
app: {{ .Chart.Name }}
{{- end }}