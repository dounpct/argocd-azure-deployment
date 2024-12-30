{{/*
Expand the release name with optional nameOverride.
*/}}
{{- define "chart.fullname" -}}
{{- if .Values.nameOverride -}}
{{ .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else -}}
{{ .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end }}
