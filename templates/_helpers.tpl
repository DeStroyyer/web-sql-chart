{{- define "mychart.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end -}}

{{- define "mychart.mysqlName" -}}
{{ include "mychart.fullname" . }}-mysql
{{- end -}}

{{- define "mychart.flaskAppName" -}}
{{ include "mychart.fullname" . }}-flask-app
{{- end -}}

{{- define "mychart.mysqlConfigMapName" -}}
{{ include "mychart.mysqlName" . }}-config
{{- end -}}

{{- define "mychart.mysqlPVCName" -}}
{{ include "mychart.mysqlName" . }}-pvc
{{- end -}}
