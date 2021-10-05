{{- if .Values.simulator.enabled -}}
simulator:
  testsJsonPath: {{ .Values.simulator.testsJsonPath }}
  region: {{ .Values.config.keystone.region }}
  smtpHost: {{ .Values.simulator.smtpHost }}
  smtpPort: {{ .Values.simulator.smtpPort }}
  sesUsername: {{ .Values.simulator.sesUsername }}
  sesSecret: {{ .Values.simulator.sesSecret }}
  smtpPassword: {{ .Values.simulator.smtpPassword }}
  sesApiEndpoint: {{ .Values.simulator.sesApiEndpoint }}
  nebulaApiEndpoint: {{ .Values.simulator.nebulaApiEndpoint }}
  pushgatewayUrl: {{ .Values.simulator.pushgatewayUrl }}
  sesRegion: {{ .Values.config.allowedServices.email }}
  metricName: {{ .Values.simulator.metricName }}
  metricHelp: {{ .Values.simulator.metricHelp }}
  cronuscli: {{ .Values.simulator.cronuscli }}
  recipient: {{ .Values.simulator.recipient }}
  sender: {{ .Values.simulator.sender }}
  shellToUse: {{ .Values.simulator.shellToUse }}
  slackMode: {{ .Values.simulator.slackMode }}
  slack: https://hooks.slack.com/services/{{ .Values.global.cronus_simulator_slack }}
  timeWaitInterval: {{ .Values.simulator.timeWaitInterval }}
  remote: {{ .Values.simulator.remote }}
  remoteRegion: {{ .Values.config.keystone.region }}
  remotePassword: {{ .Values.global.cronus_service_password }}
  cronus: {{ .Values.simulator.cronus }}
  nebula: {{ .Values.simulator.nebula }}
  delayTimeSeconds: {{ .Values.simulator.delayTimeSeconds }}
  keystone:
      authUrl: {{ .Values.config.keystone.authUrl }}
      endpointType: {{ .Values.config.keystone.endpointType }}
      projectDomainName: {{ .Values.simulator.projectDomainName }}
      projectName: {{ .Values.simulator.projectName }}
      region: {{ .Values.config.keystone.region }}
      userDomainName: {{ .Values.config.keystone.userDomainName }}
      username: {{ .Values.config.keystone.username }}
      password: {{ .Values.global.cronus_service_password }}
{{- end }}