# Attaching a managedcluster reading from status.$managed_cluster

```
** 2024-05-13 11:44:58.029094 [received event] ***********************************************************************************************************************************************************************************************
Ruleset: Read messages from a kafka topic from RHACM
Event:
{'body': [{'apiVersion': 'policy.open-cluster-management.io/v1',
           'kind': 'Policy',
           'metadata': {'annotations': {'kubectl.kubernetes.io/last-applied-configuration': '{"apiVersion":"policy.open-cluster-management.io/v1","kind":"Policy","metadata":{"annotations":{"policy.open-cluster-management.io/categories":"CM '
                                                                                            'Configuration '
                                                                                            'Management","policy.open-cluster-management.io/controls":"CM-2 '
                                                                                            'Baseline '
                                                                                            'Configuration","policy.open-cluster-management.io/standards":"NIST '
                                                                                            'SP '
                                                                                            '800-53","ran.openshift.io/ztp-deploy-wave":"2"},"labels":{"app.kubernetes.io/instance":"policies"},"name":"common-415-common-subscription","namespace":"ztp-common"},"spec":{"disabled":false,"policy-templates":[{"objectDefinition":{"apiVersion":"policy.open-cluster-management.io/v1","kind":"ConfigurationPolicy","metadata":{"name":"common-415-common-subscription-config"},"spec":{"evaluationInterval":{"compliant":"10m","noncompliant":"10s"},"namespaceselector":{"exclude":["kube-*"],"include":["*"]},"object-templates":[{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1alpha1","kind":"Subscription","metadata":{"name":"sriov-network-operator-subscription","namespace":"openshift-sriov-network-operator"},"spec":{"channel":"stable","installPlanApproval":"Manual","name":"sriov-network-operator","source":"redhat-operators-disconnected","sourceNamespace":"openshift-marketplace"},"status":{"state":"AtLatestKnown"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"v1","kind":"Namespace","metadata":{"annotations":{"workload.openshift.io/allowed":"management"},"name":"openshift-sriov-network-operator"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1","kind":"OperatorGroup","metadata":{"name":"sriov-network-operators","namespace":"openshift-sriov-network-operator"},"spec":{"targetNamespaces":["openshift-sriov-network-operator"]}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1alpha1","kind":"Subscription","metadata":{"name":"ptp-operator-subscription","namespace":"openshift-ptp"},"spec":{"channel":"stable","installPlanApproval":"Manual","name":"ptp-operator","source":"redhat-operators-disconnected","sourceNamespace":"openshift-marketplace"},"status":{"state":"AtLatestKnown"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"v1","kind":"Namespace","metadata":{"annotations":{"workload.openshift.io/allowed":"management"},"labels":{"openshift.io/cluster-monitoring":"true"},"name":"openshift-ptp"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1","kind":"OperatorGroup","metadata":{"name":"ptp-operators","namespace":"openshift-ptp"},"spec":{"targetNamespaces":["openshift-ptp"]}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"v1","kind":"Namespace","metadata":{"annotations":{"workload.openshift.io/allowed":"management"},"name":"openshift-logging"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1","kind":"OperatorGroup","metadata":{"name":"cluster-logging","namespace":"openshift-logging"},"spec":{"targetNamespaces":["openshift-logging"]}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1alpha1","kind":"Subscription","metadata":{"name":"cluster-logging","namespace":"openshift-logging"},"spec":{"channel":"stable","installPlanApproval":"Manual","name":"cluster-logging","source":"redhat-operators-disconnected","sourceNamespace":"openshift-marketplace"},"status":{"state":"AtLatestKnown"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"v1","kind":"Namespace","metadata":{"annotations":{"workload.openshift.io/allowed":"management"},"name":"openshift-local-storage"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1","kind":"OperatorGroup","metadata":{"name":"openshift-local-storage","namespace":"openshift-local-storage"},"spec":{"targetNamespaces":["openshift-local-storage"]}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1alpha1","kind":"Subscription","metadata":{"name":"local-storage-operator","namespace":"openshift-local-storage"},"spec":{"channel":"stable","installPlanApproval":"Manual","name":"local-storage-operator","source":"redhat-operators-disconnected","sourceNamespace":"openshift-marketplace"},"status":{"state":"AtLatestKnown"}}},{"complianceType":"mustnothave","objectDefinition":{"apiVersion":"v1","kind":"Namespace","metadata":{"name":"vran-acceleration-operators"}}},{"complianceType":"mustnothave","objectDefinition":{"apiVersion":"operators.coreos.com/v1","kind":"OperatorGroup","metadata":{"name":"vran-operators","namespace":"vran-acceleration-operators"},"spec":{"targetNamespaces":["vran-acceleration-operators"]}}},{"complianceType":"mustnothave","objectDefinition":{"apiVersion":"operators.coreos.com/v1alpha1","kind":"Subscription","metadata":{"name":"sriov-fec-subscription","namespace":"vran-acceleration-operators"},"spec":{"channel":"stable","installPlanApproval":"Manual","name":"sriov-fec","source":"certified-operators","sourceNamespace":"openshift-marketplace"},"status":{"state":"AtLatestKnown"}}}],"remediationAction":"inform","severity":"low"}}}],"remediationAction":"inform"}}\n',
                                        'policy.open-cluster-management.io/categories': 'CM '
                                                                                        'Configuration '
                                                                                        'Management',
                                        'policy.open-cluster-management.io/controls': 'CM-2 '
                                                                                      'Baseline '
                                                                                      'Configuration',
                                        'policy.open-cluster-management.io/standards': 'NIST '
                                                                                       'SP '
                                                                                       '800-53',
                                        'ran.openshift.io/ztp-deploy-wave': '2'},
                        'creationTimestamp': '2024-05-07T11:34:08Z',
                        'generation': 2,
                        'labels': {'app.kubernetes.io/instance': 'policies'},
                        'name': 'common-415-common-subscription',
                        'namespace': 'ztp-common',
                        'resourceVersion': '9255662',
                        'uid': 'd2ea21e7-403c-4cb2-94e8-26594491cf55'},
           'spec': {'disabled': False,
                    'policy-templates': [{'objectDefinition': {'apiVersion': 'policy.open-cluster-management.io/v1',
                                                               'kind': 'ConfigurationPolicy',
                                                               'metadata': {'name': 'common-415-common-subscription-config'},
                                                               'spec': {'evaluationInterval': {'compliant': '10m',
                                                                                               'noncompliant': '10s'},
                                                                        'namespaceselector': {'exclude': ['kube-*'],
                                                                                              'include': ['*']},
                                                                        'object-templates': [{'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1alpha1',
                                                                                                                   'kind': 'Subscription',
                                                                                                                   'metadata': {'name': 'sriov-network-operator-subscription',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'channel': 'stable',
                                                                                                                            'installPlanApproval': 'Manual',
                                                                                                                            'name': 'sriov-network-operator',
                                                                                                                            'source': 'redhat-operators-disconnected',
                                                                                                                            'sourceNamespace': 'openshift-marketplace'},
                                                                                                                   'status': {'state': 'AtLatestKnown'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'v1',
                                                                                                                   'kind': 'Namespace',
                                                                                                                   'metadata': {'annotations': {'workload.openshift.io/allowed': 'management'},
                                                                                                                                'name': 'openshift-sriov-network-operator'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1',
                                                                                                                   'kind': 'OperatorGroup',
                                                                                                                   'metadata': {'name': 'sriov-network-operators',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'targetNamespaces': ['openshift-sriov-network-operator']}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1alpha1',
                                                                                                                   'kind': 'Subscription',
                                                                                                                   'metadata': {'name': 'ptp-operator-subscription',
                                                                                                                                'namespace': 'openshift-ptp'},
                                                                                                                   'spec': {'channel': 'stable',
                                                                                                                            'installPlanApproval': 'Manual',
                                                                                                                            'name': 'ptp-operator',
                                                                                                                            'source': 'redhat-operators-disconnected',
                                                                                                                            'sourceNamespace': 'openshift-marketplace'},
                                                                                                                   'status': {'state': 'AtLatestKnown'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'v1',
                                                                                                                   'kind': 'Namespace',
                                                                                                                   'metadata': {'annotations': {'workload.openshift.io/allowed': 'management'},
                                                                                                                                'labels': {'openshift.io/cluster-monitoring': 'true'},
                                                                                                                                'name': 'openshift-ptp'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1',
                                                                                                                   'kind': 'OperatorGroup',
                                                                                                                   'metadata': {'name': 'ptp-operators',
                                                                                                                                'namespace': 'openshift-ptp'},
                                                                                                                   'spec': {'targetNamespaces': ['openshift-ptp']}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'v1',
                                                                                                                   'kind': 'Namespace',
                                                                                                                   'metadata': {'annotations': {'workload.openshift.io/allowed': 'management'},
                                                                                                                                'name': 'openshift-logging'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1',
                                                                                                                   'kind': 'OperatorGroup',
                                                                                                                   'metadata': {'name': 'cluster-logging',
                                                                                                                                'namespace': 'openshift-logging'},
                                                                                                                   'spec': {'targetNamespaces': ['openshift-logging']}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1alpha1',
                                                                                                                   'kind': 'Subscription',
                                                                                                                   'metadata': {'name': 'cluster-logging',
                                                                                                                                'namespace': 'openshift-logging'},
                                                                                                                   'spec': {'channel': 'stable',
                                                                                                                            'installPlanApproval': 'Manual',
                                                                                                                            'name': 'cluster-logging',
                                                                                                                            'source': 'redhat-operators-disconnected',
                                                                                                                            'sourceNamespace': 'openshift-marketplace'},
                                                                                                                   'status': {'state': 'AtLatestKnown'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'v1',
                                                                                                                   'kind': 'Namespace',
                                                                                                                   'metadata': {'annotations': {'workload.openshift.io/allowed': 'management'},
                                                                                                                                'name': 'openshift-local-storage'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1',
                                                                                                                   'kind': 'OperatorGroup',
                                                                                                                   'metadata': {'name': 'openshift-local-storage',
                                                                                                                                'namespace': 'openshift-local-storage'},
                                                                                                                   'spec': {'targetNamespaces': ['openshift-local-storage']}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1alpha1',
                                                                                                                   'kind': 'Subscription',
                                                                                                                   'metadata': {'name': 'local-storage-operator',
                                                                                                                                'namespace': 'openshift-local-storage'},
                                                                                                                   'spec': {'channel': 'stable',
                                                                                                                            'installPlanApproval': 'Manual',
                                                                                                                            'name': 'local-storage-operator',
                                                                                                                            'source': 'redhat-operators-disconnected',
                                                                                                                            'sourceNamespace': 'openshift-marketplace'},
                                                                                                                   'status': {'state': 'AtLatestKnown'}}},
                                                                                             {'complianceType': 'mustnothave',
                                                                                              'objectDefinition': {'apiVersion': 'v1',
                                                                                                                   'kind': 'Namespace',
                                                                                                                   'metadata': {'name': 'vran-acceleration-operators'}}},
                                                                                             {'complianceType': 'mustnothave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1',
                                                                                                                   'kind': 'OperatorGroup',
                                                                                                                   'metadata': {'name': 'vran-operators',
                                                                                                                                'namespace': 'vran-acceleration-operators'},
                                                                                                                   'spec': {'targetNamespaces': ['vran-acceleration-operators']}}},
                                                                                             {'complianceType': 'mustnothave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1alpha1',
                                                                                                                   'kind': 'Subscription',
                                                                                                                   'metadata': {'name': 'sriov-fec-subscription',
                                                                                                                                'namespace': 'vran-acceleration-operators'},
                                                                                                                   'spec': {'channel': 'stable',
                                                                                                                            'installPlanApproval': 'Manual',
                                                                                                                            'name': 'sriov-fec',
                                                                                                                            'source': 'certified-operators',
                                                                                                                            'sourceNamespace': 'openshift-marketplace'},
                                                                                                                   'status': {'state': 'AtLatestKnown'}}}],
                                                                        'remediationAction': 'inform',
                                                                        'severity': 'low'}}}],
                    'remediationAction': 'enforce'},
           'status': {}},
          {'apiVersion': 'policy.open-cluster-management.io/v1',
           'kind': 'Policy',
           'metadata': {'annotations': {'kubectl.kubernetes.io/last-applied-configuration': '{"apiVersion":"policy.open-cluster-management.io/v1","kind":"Policy","metadata":{"annotations":{"policy.open-cluster-management.io/categories":"CM '
                                                                                            'Configuration '
                                                                                            'Management","policy.open-cluster-management.io/controls":"CM-2 '
                                                                                            'Baseline '
                                                                                            'Configuration","policy.open-cluster-management.io/standards":"NIST '
                                                                                            'SP '
                                                                                            '800-53","ran.openshift.io/ztp-deploy-wave":"10"},"labels":{"app.kubernetes.io/instance":"policies"},"name":"group-du-sno-group","namespace":"ztp-group-du-sno"},"spec":{"disabled":false,"policy-templates":[{"objectDefinition":{"apiVersion":"policy.open-cluster-management.io/v1","kind":"ConfigurationPolicy","metadata":{"name":"group-du-sno-group-config"},"spec":{"evaluationInterval":{"compliant":"10m","noncompliant":"10s"},"namespaceselector":{"exclude":["kube-*"],"include":["*"]},"object-templates":[{"complianceType":"musthave","objectDefinition":{"apiVersion":"v1","data":{"pprof-config.yaml":"disabled: '
                                                                                            'True\\n"},"kind":"ConfigMap","metadata":{"name":"collect-profiles-config","namespace":"openshift-operator-lifecycle-manager"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operator.openshift.io/v1","kind":"Network","metadata":{"name":"cluster"},"spec":{"disableNetworkDiagnostics":true}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovOperatorConfig","metadata":{"name":"default","namespace":"openshift-sriov-network-operator"},"spec":{"configDaemonNodeSelector":{"node-role.kubernetes.io/master":""},"disableDrain":true,"enableInjector":true,"enableOperatorWebhook":"{{hub '
                                                                                            'fromConfigMap '
                                                                                            '\\"\\" '
                                                                                            '\\"site-data\\" '
                                                                                            '(printf '
                                                                                            '\\"%s-supported-sriov-nic\\" '
                                                                                            '.ManagedClusterName) '
                                                                                            '| '
                                                                                            'toBool '
                                                                                            'hub}}","logLevel":0}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"logging.openshift.io/v1","kind":"ClusterLogForwarder","metadata":{"name":"instance","namespace":"openshift-logging"},"spec":{"outputs":[{"name":"kafka-open","type":"kafka","url":"tcp://10.46.55.190:9092/test"}],"pipelines":[{"inputRefs":["audit"],"name":"audit-logs","outputRefs":["kafka-open"]},{"inputRefs":["infrastructure"],"name":"infrastructure-logs","outputRefs":["kafka-open"]}]}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"logging.openshift.io/v1","kind":"ClusterLogging","metadata":{"name":"instance","namespace":"openshift-logging"},"spec":{"collection":{"logs":{"fluentd":{},"type":"fluentd"}},"curation":{"curator":{"schedule":"30 '
                                                                                            '3 '
                                                                                            '* '
                                                                                            '* '
                                                                                            '*"},"type":"curator"},"managementState":"Managed"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"performance.openshift.io/v2","kind":"PerformanceProfile","metadata":{"annotations":{"kubeletconfig.experimental":"{\\"topologyManagerScope\\": '
                                                                                            '\\"pod\\",\\n '
                                                                                            '\\"systemReserved\\": '
                                                                                            '{\\"memory\\": '
                                                                                            '\\"10.5Gi\\"}\\n}\\n","ran.openshift.io/reference-configuration":"ran-du.redhat.com"},"name":"openshift-node-performance-profile"},"spec":{"additionalKernelArgs":["rcupdate.rcu_normal_after_boot=0","efi=runtime","vfio_pci.enable_sriov=1","vfio_pci.disable_idle_d3=1","module_blacklist=irdma"],"cpu":{"isolated":"{{hub '
                                                                                            'fromConfigMap '
                                                                                            '\\"\\" '
                                                                                            '\\"site-data\\" '
                                                                                            '(printf '
                                                                                            '\\"%s-app-cpus\\" '
                                                                                            '.ManagedClusterName) '
                                                                                            'hub}}","reserved":"{{hub '
                                                                                            'fromConfigMap '
                                                                                            '\\"\\" '
                                                                                            '\\"site-data\\" '
                                                                                            '(printf '
                                                                                            '\\"%s-reserved-cpus\\" '
                                                                                            '.ManagedClusterName) '
                                                                                            'hub}}"},"globallyDisableIrqLoadBalancing":false,"hugepages":{"defaultHugepagesSize":"1G","pages":[{"count":32,"size":"1G"}]},"machineConfigPoolSelector":{"pools.operator.machineconfiguration.openshift.io/master":""},"nodeSelector":{"node-role.kubernetes.io/master":""},"numa":{"topologyPolicy":"single-numa-node"},"realTimeKernel":{"enabled":false},"workloadHints":{"highPowerConsumption":false,"perPodPowerManagement":false,"realTime":true}}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"tuned.openshift.io/v1","kind":"Tuned","metadata":{"name":"performance-patch","namespace":"openshift-cluster-node-tuning-operator"},"spec":{"profile":[{"data":"[main]\\nsummary=Configuration '
                                                                                            'changes '
                                                                                            'profile '
                                                                                            'inherited '
                                                                                            'from '
                                                                                            'performance '
                                                                                            'created '
                                                                                            'tuned\\ninclude=openshift-node-performance-openshift-node-performance-profile\\n[bootloader]\\ncmdline_crash=nohz_full={{hub '
                                                                                            'fromConfigMap '
                                                                                            '\\"\\" '
                                                                                            '\\"site-data\\" '
                                                                                            '(printf '
                                                                                            '\\"%s-app-cpus\\" '
                                                                                            '.ManagedClusterName) '
                                                                                            'hub}}\\n[sysctl]\\nkernel.timer_migration=0\\n[scheduler]\\ngroup.ice-ptp=0:f:10:*:ice-ptp.*\\n[service]\\nservice.stalld=start,enable\\nservice.chronyd=stop,disable\\n","name":"performance-patch"}],"recommend":[{"machineConfigLabels":{"machineconfiguration.openshift.io/role":"master"},"priority":19,"profile":"performance-patch"}]}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"ptp.openshift.io/v1","kind":"PtpConfig","metadata":{"name":"du-ptp-slave","namespace":"openshift-ptp"},"spec":{"profile":[{"interface":"{{hub '
                                                                                            'fromConfigMap '
                                                                                            '\\"\\" '
                                                                                            '\\"site-data\\" '
                                                                                            '(printf '
                                                                                            '\\"%s-sriov-nic2\\" '
                                                                                            '.ManagedClusterName) '
                                                                                            'hub}}","name":"slave","phc2sysOpts":"-a '
                                                                                            '-r '
                                                                                            '-n '
                                                                                            '24","ptp4lConf":"[global]\\n#\\n# '
                                                                                            'Default '
                                                                                            'Data '
                                                                                            'Set\\n#\\ntwoStepFlag '
                                                                                            '1\\nslaveOnly '
                                                                                            '1\\npriority1 '
                                                                                            '128\\npriority2 '
                                                                                            '128\\ndomainNumber '
                                                                                            '24\\n#utc_offset '
                                                                                            '37\\nclockClass '
                                                                                            '255\\nclockAccuracy '
                                                                                            '0xFE\\noffsetScaledLogVariance '
                                                                                            '0xFFFF\\nfree_running '
                                                                                            '0\\nfreq_est_interval '
                                                                                            '1\\ndscp_event '
                                                                                            '0\\ndscp_general '
                                                                                            '0\\ndataset_comparison '
                                                                                            'G.8275.x\\nG.8275.defaultDS.localPriority '
                                                                                            '128\\n#\\n# '
                                                                                            'Port '
                                                                                            'Data '
                                                                                            'Set\\n#\\nlogAnnounceInterval '
                                                                                            '-3\\nlogSyncInterval '
                                                                                            '-4\\nlogMinDelayReqInterval '
                                                                                            '-4\\nlogMinPdelayReqInterval '
                                                                                            '-4\\nannounceReceiptTimeout '
                                                                                            '3\\nsyncReceiptTimeout '
                                                                                            '0\\ndelayAsymmetry '
                                                                                            '0\\nfault_reset_interval '
                                                                                            '-4\\nneighborPropDelayThresh '
                                                                                            '20000000\\nmasterOnly '
                                                                                            '0\\nG.8275.portDS.localPriority '
                                                                                            '128\\n#\\n# '
                                                                                            'Run '
                                                                                            'time '
                                                                                            'options\\n#\\nassume_two_step '
                                                                                            '0\\nlogging_level '
                                                                                            '6\\npath_trace_enabled '
                                                                                            '0\\nfollow_up_info '
                                                                                            '0\\nhybrid_e2e '
                                                                                            '0\\ninhibit_multicast_service '
                                                                                            '0\\nnet_sync_monitor '
                                                                                            '0\\ntc_spanning_tree '
                                                                                            '0\\ntx_timestamp_timeout '
                                                                                            '50\\nunicast_listen '
                                                                                            '0\\nunicast_master_table '
                                                                                            '0\\nunicast_req_duration '
                                                                                            '3600\\nuse_syslog '
                                                                                            '1\\nverbose '
                                                                                            '0\\nsummary_interval '
                                                                                            '0\\nkernel_leap '
                                                                                            '1\\ncheck_fup_sync '
                                                                                            '0\\nclock_class_threshold '
                                                                                            '7\\n#\\n# '
                                                                                            'Servo '
                                                                                            'Options\\n#\\npi_proportional_const '
                                                                                            '0.0\\npi_integral_const '
                                                                                            '0.0\\npi_proportional_scale '
                                                                                            '0.0\\npi_proportional_exponent '
                                                                                            '-0.3\\npi_proportional_norm_max '
                                                                                            '0.7\\npi_integral_scale '
                                                                                            '0.0\\npi_integral_exponent '
                                                                                            '0.4\\npi_integral_norm_max '
                                                                                            '0.3\\nstep_threshold '
                                                                                            '2.0\\nfirst_step_threshold '
                                                                                            '0.00002\\nmax_frequency '
                                                                                            '900000000\\nclock_servo '
                                                                                            'pi\\nsanity_freq_limit '
                                                                                            '200000000\\nntpshm_segment '
                                                                                            '0\\n#\\n# '
                                                                                            'Transport '
                                                                                            'options\\n#\\ntransportSpecific '
                                                                                            '0x0\\nptp_dst_mac '
                                                                                            '01:1B:19:00:00:00\\np2p_dst_mac '
                                                                                            '01:80:C2:00:00:0E\\nudp_ttl '
                                                                                            '1\\nudp6_scope '
                                                                                            '0x0E\\nuds_address '
                                                                                            '/var/run/ptp4l\\n#\\n# '
                                                                                            'Default '
                                                                                            'interface '
                                                                                            'options\\n#\\nclock_type '
                                                                                            'OC\\nnetwork_transport '
                                                                                            'L2\\ndelay_mechanism '
                                                                                            'E2E\\ntime_stamping '
                                                                                            'hardware\\ntsproc_mode '
                                                                                            'filter\\ndelay_filter '
                                                                                            'moving_median\\ndelay_filter_length '
                                                                                            '10\\negressLatency '
                                                                                            '0\\ningressLatency '
                                                                                            '0\\nboundary_clock_jbod '
                                                                                            '0\\n#\\n# '
                                                                                            'Clock '
                                                                                            'description\\n#\\nproductDescription '
                                                                                            ';;\\nrevisionData '
                                                                                            ';;\\nmanufacturerIdentity '
                                                                                            '00:00:00\\nuserDescription '
                                                                                            ';\\ntimeSource '
                                                                                            '0xA0\\n","ptp4lOpts":"-2 '
                                                                                            '-s","ptpSchedulingPolicy":"SCHED_FIFO","ptpSchedulingPriority":10,"ptpSettings":{"logReduce":"true"}}],"recommend":[{"match":[{"nodeLabel":"node-role.kubernetes.io/master"}],"priority":4,"profile":"slave"}]}}}],"remediationAction":"inform","severity":"low"}}}],"remediationAction":"inform"}}\n',
                                        'policy.open-cluster-management.io/categories': 'CM '
                                                                                        'Configuration '
                                                                                        'Management',
                                        'policy.open-cluster-management.io/controls': 'CM-2 '
                                                                                      'Baseline '
                                                                                      'Configuration',
                                        'policy.open-cluster-management.io/standards': 'NIST '
                                                                                       'SP '
                                                                                       '800-53',
                                        'ran.openshift.io/ztp-deploy-wave': '10'},
                        'creationTimestamp': '2024-05-07T11:34:08Z',
                        'generation': 1,
                        'labels': {'app.kubernetes.io/instance': 'policies'},
                        'name': 'group-du-sno-group',
                        'namespace': 'ztp-group-du-sno',
                        'resourceVersion': '9255654',
                        'uid': '3e891579-c4e0-4647-b202-7af45761bbbb'},
           'spec': {'disabled': False,
                    'policy-templates': [{'objectDefinition': {'apiVersion': 'policy.open-cluster-management.io/v1',
                                                               'kind': 'ConfigurationPolicy',
                                                               'metadata': {'name': 'group-du-sno-group-config'},
                                                               'spec': {'evaluationInterval': {'compliant': '10m',
                                                                                               'noncompliant': '10s'},
                                                                        'namespaceselector': {'exclude': ['kube-*'],
                                                                                              'include': ['*']},
                                                                        'object-templates': [{'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'v1',
                                                                                                                   'data': {'pprof-config.yaml': 'disabled: '
                                                                                                                                                 'True\n'},
                                                                                                                   'kind': 'ConfigMap',
                                                                                                                   'metadata': {'name': 'collect-profiles-config',
                                                                                                                                'namespace': 'openshift-operator-lifecycle-manager'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operator.openshift.io/v1',
                                                                                                                   'kind': 'Network',
                                                                                                                   'metadata': {'name': 'cluster'},
                                                                                                                   'spec': {'disableNetworkDiagnostics': True}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovOperatorConfig',
                                                                                                                   'metadata': {'name': 'default',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'configDaemonNodeSelector': {'node-role.kubernetes.io/master': ''},
                                                                                                                            'disableDrain': True,
                                                                                                                            'enableInjector': True,
                                                                                                                            'enableOperatorWebhook': '{{hub '
                                                                                                                                                     'fromConfigMap '
                                                                                                                                                     '"" '
                                                                                                                                                     '"site-data" '
                                                                                                                                                     '(printf '
                                                                                                                                                     '"%s-supported-sriov-nic" '
                                                                                                                                                     '.ManagedClusterName) '
                                                                                                                                                     '| '
                                                                                                                                                     'toBool '
                                                                                                                                                     'hub}}',
                                                                                                                            'logLevel': 0}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'logging.openshift.io/v1',
                                                                                                                   'kind': 'ClusterLogForwarder',
                                                                                                                   'metadata': {'name': 'instance',
                                                                                                                                'namespace': 'openshift-logging'},
                                                                                                                   'spec': {'outputs': [{'name': 'kafka-open',
                                                                                                                                         'type': 'kafka',
                                                                                                                                         'url': 'tcp://10.46.55.190:9092/test'}],
                                                                                                                            'pipelines': [{'inputRefs': ['audit'],
                                                                                                                                           'name': 'audit-logs',
                                                                                                                                           'outputRefs': ['kafka-open']},
                                                                                                                                          {'inputRefs': ['infrastructure'],
                                                                                                                                           'name': 'infrastructure-logs',
                                                                                                                                           'outputRefs': ['kafka-open']}]}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'logging.openshift.io/v1',
                                                                                                                   'kind': 'ClusterLogging',
                                                                                                                   'metadata': {'name': 'instance',
                                                                                                                                'namespace': 'openshift-logging'},
                                                                                                                   'spec': {'collection': {'logs': {'fluentd': {},
                                                                                                                                                    'type': 'fluentd'}},
                                                                                                                            'curation': {'curator': {'schedule': '30 '
                                                                                                                                                                 '3 '
                                                                                                                                                                 '* '
                                                                                                                                                                 '* '
                                                                                                                                                                 '*'},
                                                                                                                                         'type': 'curator'},
                                                                                                                            'managementState': 'Managed'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'performance.openshift.io/v2',
                                                                                                                   'kind': 'PerformanceProfile',
                                                                                                                   'metadata': {'annotations': {'kubeletconfig.experimental': '{"topologyManagerScope": '
                                                                                                                                                                              '"pod",\n'
                                                                                                                                                                              ' '
                                                                                                                                                                              '"systemReserved": '
                                                                                                                                                                              '{"memory": '
                                                                                                                                                                              '"10.5Gi"}\n'
                                                                                                                                                                              '}\n',
                                                                                                                                                'ran.openshift.io/reference-configuration': 'ran-du.redhat.com'},
                                                                                                                                'name': 'openshift-node-performance-profile'},
                                                                                                                   'spec': {'additionalKernelArgs': ['rcupdate.rcu_normal_after_boot=0',
                                                                                                                                                     'efi=runtime',
                                                                                                                                                     'vfio_pci.enable_sriov=1',
                                                                                                                                                     'vfio_pci.disable_idle_d3=1',
                                                                                                                                                     'module_blacklist=irdma'],
                                                                                                                            'cpu': {'isolated': '{{hub '
                                                                                                                                                'fromConfigMap '
                                                                                                                                                '"" '
                                                                                                                                                '"site-data" '
                                                                                                                                                '(printf '
                                                                                                                                                '"%s-app-cpus" '
                                                                                                                                                '.ManagedClusterName) '
                                                                                                                                                'hub}}',
                                                                                                                                    'reserved': '{{hub '
                                                                                                                                                'fromConfigMap '
                                                                                                                                                '"" '
                                                                                                                                                '"site-data" '
                                                                                                                                                '(printf '
                                                                                                                                                '"%s-reserved-cpus" '
                                                                                                                                                '.ManagedClusterName) '
                                                                                                                                                'hub}}'},
                                                                                                                            'globallyDisableIrqLoadBalancing': False,
                                                                                                                            'hugepages': {'defaultHugepagesSize': '1G',
                                                                                                                                          'pages': [{'count': 32,
                                                                                                                                                     'size': '1G'}]},
                                                                                                                            'machineConfigPoolSelector': {'pools.operator.machineconfiguration.openshift.io/master': ''},
                                                                                                                            'nodeSelector': {'node-role.kubernetes.io/master': ''},
                                                                                                                            'numa': {'topologyPolicy': 'single-numa-node'},
                                                                                                                            'realTimeKernel': {'enabled': False},
                                                                                                                            'workloadHints': {'highPowerConsumption': False,
                                                                                                                                              'perPodPowerManagement': False,
                                                                                                                                              'realTime': True}}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'tuned.openshift.io/v1',
                                                                                                                   'kind': 'Tuned',
                                                                                                                   'metadata': {'name': 'performance-patch',
                                                                                                                                'namespace': 'openshift-cluster-node-tuning-operator'},
                                                                                                                   'spec': {'profile': [{'data': '[main]\n'
                                                                                                                                                 'summary=Configuration '
                                                                                                                                                 'changes '
                                                                                                                                                 'profile '
                                                                                                                                                 'inherited '
                                                                                                                                                 'from '
                                                                                                                                                 'performance '
                                                                                                                                                 'created '
                                                                                                                                                 'tuned\n'
                                                                                                                                                 'include=openshift-node-performance-openshift-node-performance-profile\n'
                                                                                                                                                 '[bootloader]\n'
                                                                                                                                                 'cmdline_crash=nohz_full={{hub '
                                                                                                                                                 'fromConfigMap '
                                                                                                                                                 '"" '
                                                                                                                                                 '"site-data" '
                                                                                                                                                 '(printf '
                                                                                                                                                 '"%s-app-cpus" '
                                                                                                                                                 '.ManagedClusterName) '
                                                                                                                                                 'hub}}\n'
                                                                                                                                                 '[sysctl]\n'
                                                                                                                                                 'kernel.timer_migration=0\n'
                                                                                                                                                 '[scheduler]\n'
                                                                                                                                                 'group.ice-ptp=0:f:10:*:ice-ptp.*\n'
                                                                                                                                                 '[service]\n'
                                                                                                                                                 'service.stalld=start,enable\n'
                                                                                                                                                 'service.chronyd=stop,disable\n',
                                                                                                                                         'name': 'performance-patch'}],
                                                                                                                            'recommend': [{'machineConfigLabels': {'machineconfiguration.openshift.io/role': 'master'},
                                                                                                                                           'priority': 19,
                                                                                                                                           'profile': 'performance-patch'}]}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'ptp.openshift.io/v1',
                                                                                                                   'kind': 'PtpConfig',
                                                                                                                   'metadata': {'name': 'du-ptp-slave',
                                                                                                                                'namespace': 'openshift-ptp'},
                                                                                                                   'spec': {'profile': [{'interface': '{{hub '
                                                                                                                                                      'fromConfigMap '
                                                                                                                                                      '"" '
                                                                                                                                                      '"site-data" '
                                                                                                                                                      '(printf '
                                                                                                                                                      '"%s-sriov-nic2" '
                                                                                                                                                      '.ManagedClusterName) '
                                                                                                                                                      'hub}}',
                                                                                                                                         'name': 'slave',
                                                                                                                                         'phc2sysOpts': '-a '
                                                                                                                                                        '-r '
                                                                                                                                                        '-n '
                                                                                                                                                        '24',
                                                                                                                                         'ptp4lConf': '[global]\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      '# '
                                                                                                                                                      'Default '
                                                                                                                                                      'Data '
                                                                                                                                                      'Set\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      'twoStepFlag '
                                                                                                                                                      '1\n'
                                                                                                                                                      'slaveOnly '
                                                                                                                                                      '1\n'
                                                                                                                                                      'priority1 '
                                                                                                                                                      '128\n'
                                                                                                                                                      'priority2 '
                                                                                                                                                      '128\n'
                                                                                                                                                      'domainNumber '
                                                                                                                                                      '24\n'
                                                                                                                                                      '#utc_offset '
                                                                                                                                                      '37\n'
                                                                                                                                                      'clockClass '
                                                                                                                                                      '255\n'
                                                                                                                                                      'clockAccuracy '
                                                                                                                                                      '0xFE\n'
                                                                                                                                                      'offsetScaledLogVariance '
                                                                                                                                                      '0xFFFF\n'
                                                                                                                                                      'free_running '
                                                                                                                                                      '0\n'
                                                                                                                                                      'freq_est_interval '
                                                                                                                                                      '1\n'
                                                                                                                                                      'dscp_event '
                                                                                                                                                      '0\n'
                                                                                                                                                      'dscp_general '
                                                                                                                                                      '0\n'
                                                                                                                                                      'dataset_comparison '
                                                                                                                                                      'G.8275.x\n'
                                                                                                                                                      'G.8275.defaultDS.localPriority '
                                                                                                                                                      '128\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      '# '
                                                                                                                                                      'Port '
                                                                                                                                                      'Data '
                                                                                                                                                      'Set\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      'logAnnounceInterval '
                                                                                                                                                      '-3\n'
                                                                                                                                                      'logSyncInterval '
                                                                                                                                                      '-4\n'
                                                                                                                                                      'logMinDelayReqInterval '
                                                                                                                                                      '-4\n'
                                                                                                                                                      'logMinPdelayReqInterval '
                                                                                                                                                      '-4\n'
                                                                                                                                                      'announceReceiptTimeout '
                                                                                                                                                      '3\n'
                                                                                                                                                      'syncReceiptTimeout '
                                                                                                                                                      '0\n'
                                                                                                                                                      'delayAsymmetry '
                                                                                                                                                      '0\n'
                                                                                                                                                      'fault_reset_interval '
                                                                                                                                                      '-4\n'
                                                                                                                                                      'neighborPropDelayThresh '
                                                                                                                                                      '20000000\n'
                                                                                                                                                      'masterOnly '
                                                                                                                                                      '0\n'
                                                                                                                                                      'G.8275.portDS.localPriority '
                                                                                                                                                      '128\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      '# '
                                                                                                                                                      'Run '
                                                                                                                                                      'time '
                                                                                                                                                      'options\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      'assume_two_step '
                                                                                                                                                      '0\n'
                                                                                                                                                      'logging_level '
                                                                                                                                                      '6\n'
                                                                                                                                                      'path_trace_enabled '
                                                                                                                                                      '0\n'
                                                                                                                                                      'follow_up_info '
                                                                                                                                                      '0\n'
                                                                                                                                                      'hybrid_e2e '
                                                                                                                                                      '0\n'
                                                                                                                                                      'inhibit_multicast_service '
                                                                                                                                                      '0\n'
                                                                                                                                                      'net_sync_monitor '
                                                                                                                                                      '0\n'
                                                                                                                                                      'tc_spanning_tree '
                                                                                                                                                      '0\n'
                                                                                                                                                      'tx_timestamp_timeout '
                                                                                                                                                      '50\n'
                                                                                                                                                      'unicast_listen '
                                                                                                                                                      '0\n'
                                                                                                                                                      'unicast_master_table '
                                                                                                                                                      '0\n'
                                                                                                                                                      'unicast_req_duration '
                                                                                                                                                      '3600\n'
                                                                                                                                                      'use_syslog '
                                                                                                                                                      '1\n'
                                                                                                                                                      'verbose '
                                                                                                                                                      '0\n'
                                                                                                                                                      'summary_interval '
                                                                                                                                                      '0\n'
                                                                                                                                                      'kernel_leap '
                                                                                                                                                      '1\n'
                                                                                                                                                      'check_fup_sync '
                                                                                                                                                      '0\n'
                                                                                                                                                      'clock_class_threshold '
                                                                                                                                                      '7\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      '# '
                                                                                                                                                      'Servo '
                                                                                                                                                      'Options\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      'pi_proportional_const '
                                                                                                                                                      '0.0\n'
                                                                                                                                                      'pi_integral_const '
                                                                                                                                                      '0.0\n'
                                                                                                                                                      'pi_proportional_scale '
                                                                                                                                                      '0.0\n'
                                                                                                                                                      'pi_proportional_exponent '
                                                                                                                                                      '-0.3\n'
                                                                                                                                                      'pi_proportional_norm_max '
                                                                                                                                                      '0.7\n'
                                                                                                                                                      'pi_integral_scale '
                                                                                                                                                      '0.0\n'
                                                                                                                                                      'pi_integral_exponent '
                                                                                                                                                      '0.4\n'
                                                                                                                                                      'pi_integral_norm_max '
                                                                                                                                                      '0.3\n'
                                                                                                                                                      'step_threshold '
                                                                                                                                                      '2.0\n'
                                                                                                                                                      'first_step_threshold '
                                                                                                                                                      '0.00002\n'
                                                                                                                                                      'max_frequency '
                                                                                                                                                      '900000000\n'
                                                                                                                                                      'clock_servo '
                                                                                                                                                      'pi\n'
                                                                                                                                                      'sanity_freq_limit '
                                                                                                                                                      '200000000\n'
                                                                                                                                                      'ntpshm_segment '
                                                                                                                                                      '0\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      '# '
                                                                                                                                                      'Transport '
                                                                                                                                                      'options\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      'transportSpecific '
                                                                                                                                                      '0x0\n'
                                                                                                                                                      'ptp_dst_mac '
                                                                                                                                                      '01:1B:19:00:00:00\n'
                                                                                                                                                      'p2p_dst_mac '
                                                                                                                                                      '01:80:C2:00:00:0E\n'
                                                                                                                                                      'udp_ttl '
                                                                                                                                                      '1\n'
                                                                                                                                                      'udp6_scope '
                                                                                                                                                      '0x0E\n'
                                                                                                                                                      'uds_address '
                                                                                                                                                      '/var/run/ptp4l\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      '# '
                                                                                                                                                      'Default '
                                                                                                                                                      'interface '
                                                                                                                                                      'options\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      'clock_type '
                                                                                                                                                      'OC\n'
                                                                                                                                                      'network_transport '
                                                                                                                                                      'L2\n'
                                                                                                                                                      'delay_mechanism '
                                                                                                                                                      'E2E\n'
                                                                                                                                                      'time_stamping '
                                                                                                                                                      'hardware\n'
                                                                                                                                                      'tsproc_mode '
                                                                                                                                                      'filter\n'
                                                                                                                                                      'delay_filter '
                                                                                                                                                      'moving_median\n'
                                                                                                                                                      'delay_filter_length '
                                                                                                                                                      '10\n'
                                                                                                                                                      'egressLatency '
                                                                                                                                                      '0\n'
                                                                                                                                                      'ingressLatency '
                                                                                                                                                      '0\n'
                                                                                                                                                      'boundary_clock_jbod '
                                                                                                                                                      '0\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      '# '
                                                                                                                                                      'Clock '
                                                                                                                                                      'description\n'
                                                                                                                                                      '#\n'
                                                                                                                                                      'productDescription '
                                                                                                                                                      ';;\n'
                                                                                                                                                      'revisionData '
                                                                                                                                                      ';;\n'
                                                                                                                                                      'manufacturerIdentity '
                                                                                                                                                      '00:00:00\n'
                                                                                                                                                      'userDescription '
                                                                                                                                                      ';\n'
                                                                                                                                                      'timeSource '
                                                                                                                                                      '0xA0\n',
                                                                                                                                         'ptp4lOpts': '-2 '
                                                                                                                                                      '-s',
                                                                                                                                         'ptpSchedulingPolicy': 'SCHED_FIFO',
                                                                                                                                         'ptpSchedulingPriority': 10,
                                                                                                                                         'ptpSettings': {'logReduce': 'true'}}],
                                                                                                                            'recommend': [{'match': [{'nodeLabel': 'node-role.kubernetes.io/master'}],
                                                                                                                                           'priority': 4,
                                                                                                                                           'profile': 'slave'}]}}}],
                                                                        'remediationAction': 'inform',
                                                                        'severity': 'low'}}}],
                    'remediationAction': 'inform'},
           'status': {}},
          {'apiVersion': 'policy.open-cluster-management.io/v1',
           'kind': 'Policy',
           'metadata': {'annotations': {'kubectl.kubernetes.io/last-applied-configuration': '{"apiVersion":"policy.open-cluster-management.io/v1","kind":"Policy","metadata":{"annotations":{"policy.open-cluster-management.io/categories":"CM '
                                                                                            'Configuration '
                                                                                            'Management","policy.open-cluster-management.io/controls":"CM-2 '
                                                                                            'Baseline '
                                                                                            'Configuration","policy.open-cluster-management.io/standards":"NIST '
                                                                                            'SP '
                                                                                            '800-53","ran.openshift.io/ztp-deploy-wave":"10000"},"labels":{"app.kubernetes.io/instance":"policies"},"name":"group-du-sno-validator-validation","namespace":"ztp-group-du-sno"},"spec":{"disabled":false,"policy-templates":[{"objectDefinition":{"apiVersion":"policy.open-cluster-management.io/v1","kind":"ConfigurationPolicy","metadata":{"name":"group-du-sno-validator-validation-config"},"spec":{"evaluationInterval":{"compliant":"10m","noncompliant":"10s"},"namespaceselector":{"exclude":["kube-*"],"include":["*"]},"object-templates":[{"complianceType":"musthave","objectDefinition":{"apiVersion":"machineconfiguration.openshift.io/v1","kind":"MachineConfigPool","metadata":{"name":"master"},"status":{"conditions":[{"status":"True","type":"Updated"},{"status":"False","type":"Updating"}],"configuration":{"source":[{"apiVersion":"machineconfiguration.openshift.io/v1","kind":"MachineConfig","name":"50-performance-openshift-node-performance-profile"},{"apiVersion":"machineconfiguration.openshift.io/v1","kind":"MachineConfig","name":"50-nto-master"}]},"degradedMachineCount":0,"unavailableMachineCount":0}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetworkNodeState","metadata":{"namespace":"openshift-sriov-network-operator"},"status":{"syncStatus":"Succeeded"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"apps/v1","kind":"DaemonSet","metadata":{"name":"linuxptp-daemon","namespace":"openshift-ptp"}}}],"remediationAction":"inform","severity":"low"}}}],"remediationAction":"inform"}}\n',
                                        'policy.open-cluster-management.io/categories': 'CM '
                                                                                        'Configuration '
                                                                                        'Management',
                                        'policy.open-cluster-management.io/controls': 'CM-2 '
                                                                                      'Baseline '
                                                                                      'Configuration',
                                        'policy.open-cluster-management.io/standards': 'NIST '
                                                                                       'SP '
                                                                                       '800-53',
                                        'ran.openshift.io/ztp-deploy-wave': '10000'},
                        'creationTimestamp': '2024-05-07T11:34:08Z',
                        'generation': 1,
                        'labels': {'app.kubernetes.io/instance': 'policies'},
                        'name': 'group-du-sno-validator-validation',
                        'namespace': 'ztp-group-du-sno',
                        'resourceVersion': '1300183',
                        'uid': 'b17e08bf-fc7d-4f92-9869-571fb1cf4d57'},
           'spec': {'disabled': False,
                    'policy-templates': [{'objectDefinition': {'apiVersion': 'policy.open-cluster-management.io/v1',
                                                               'kind': 'ConfigurationPolicy',
                                                               'metadata': {'name': 'group-du-sno-validator-validation-config'},
                                                               'spec': {'evaluationInterval': {'compliant': '10m',
                                                                                               'noncompliant': '10s'},
                                                                        'namespaceselector': {'exclude': ['kube-*'],
                                                                                              'include': ['*']},
                                                                        'object-templates': [{'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'machineconfiguration.openshift.io/v1',
                                                                                                                   'kind': 'MachineConfigPool',
                                                                                                                   'metadata': {'name': 'master'},
                                                                                                                   'status': {'conditions': [{'status': 'True',
                                                                                                                                              'type': 'Updated'},
                                                                                                                                             {'status': 'False',
                                                                                                                                              'type': 'Updating'}],
                                                                                                                              'configuration': {'source': [{'apiVersion': 'machineconfiguration.openshift.io/v1',
                                                                                                                                                            'kind': 'MachineConfig',
                                                                                                                                                            'name': '50-performance-openshift-node-performance-profile'},
                                                                                                                                                           {'apiVersion': 'machineconfiguration.openshift.io/v1',
                                                                                                                                                            'kind': 'MachineConfig',
                                                                                                                                                            'name': '50-nto-master'}]},
                                                                                                                              'degradedMachineCount': 0,
                                                                                                                              'unavailableMachineCount': 0}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetworkNodeState',
                                                                                                                   'metadata': {'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'status': {'syncStatus': 'Succeeded'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'apps/v1',
                                                                                                                   'kind': 'DaemonSet',
                                                                                                                   'metadata': {'name': 'linuxptp-daemon',
                                                                                                                                'namespace': 'openshift-ptp'}}}],
                                                                        'remediationAction': 'inform',
                                                                        'severity': 'low'}}}],
                    'remediationAction': 'inform'},
           'status': {}},
          {'apiVersion': 'policy.open-cluster-management.io/v1',
           'kind': 'Policy',
           'metadata': {'annotations': {'kubectl.kubernetes.io/last-applied-configuration': '{"apiVersion":"policy.open-cluster-management.io/v1","kind":"Policy","metadata":{"annotations":{"policy.open-cluster-management.io/categories":"CM '
                                                                                            'Configuration '
                                                                                            'Management","policy.open-cluster-management.io/controls":"CM-2 '
                                                                                            'Baseline '
                                                                                            'Configuration","policy.open-cluster-management.io/standards":"NIST '
                                                                                            'SP '
                                                                                            '800-53","ran.openshift.io/ztp-deploy-wave":"100"},"labels":{"app.kubernetes.io/instance":"policies"},"name":"sno-ibu-00-sriov-policy","namespace":"ztp-group-du-sno"},"spec":{"disabled":false,"policy-templates":[{"objectDefinition":{"apiVersion":"policy.open-cluster-management.io/v1","kind":"ConfigurationPolicy","metadata":{"name":"sno-ibu-00-sriov-policy-config"},"spec":{"evaluationInterval":{"compliant":"10m","noncompliant":"10s"},"namespaceselector":{"exclude":["kube-*"],"include":["*"]},"object-templates":[{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetwork","metadata":{"name":"sriov-nw-du-netdev-ens255f1","namespace":"openshift-sriov-network-operator"},"spec":{"ipam":"{\\"type\\": '
                                                                                            '\\"host-local\\",\\"ranges\\": '
                                                                                            '[[{\\"subnet\\": '
                                                                                            '\\"10.0.20.0/24\\"}]],\\"dataDir\\": \xa0 '
                                                                                            '\\"/run/my-orchestrator/container-ipam-state-1\\"}","networkNamespace":"openshift-sriov-network-operator","resourceName":"xxv810_ens255f1","spoofChk":"off","trust":"on"}}},{"complianceType":"mustonlyhave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetworkNodePolicy","metadata":{"name":"xxv810-ens255f1","namespace":"openshift-sriov-network-operator"},"spec":{"deviceType":"netdevice","isRdma":false,"linkType":"eth","mtu":1500,"nicSelector":{"pfNames":["ens255f1"]},"nodeSelector":{"node-role.kubernetes.io/master":""},"numVfs":8,"priority":10,"resourceName":"xxv810_ens255f1"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetwork","metadata":{"name":"sriov-nw-du-vfio-enp199s0f1","namespace":"openshift-sriov-network-operator"},"spec":{"ipam":"{\\"type\\": '
                                                                                            '\\"host-local\\",\\"ranges\\": '
                                                                                            '[[{\\"subnet\\": '
                                                                                            '\\"10.0.21.0/24\\"}]],\\"dataDir\\": \xa0 '
                                                                                            '\\"/run/my-orchestrator/container-ipam-state-2\\"}","networkNamespace":"openshift-sriov-network-operator","resourceName":"xxv810_enp199s0f1","spoofChk":"off","trust":"on"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetworkNodePolicy","metadata":{"name":"xxv810-enp199s0f1","namespace":"openshift-sriov-network-operator"},"spec":{"deviceType":"vfio-pci","isRdma":false,"linkType":"eth","mtu":1500,"nicSelector":{"pfNames":["enp199s0f1"]},"nodeSelector":{"node-role.kubernetes.io/master":""},"numVfs":16,"priority":10,"resourceName":"xxv810_enp199s0f1"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetwork","metadata":{"name":"sriov-nw-du-vfio-ens255f0","namespace":"openshift-sriov-network-operator"},"spec":{"ipam":"{\\"type\\": '
                                                                                            '\\"host-local\\",\\"ranges\\": '
                                                                                            '[[{\\"subnet\\": '
                                                                                            '\\"10.0.70.0/24\\"}]],\\"dataDir\\": \xa0 '
                                                                                            '\\"/run/my-orchestrator/container-ipam-state-3\\"}","networkNamespace":"openshift-sriov-network-operator","resourceName":"xxv810_ens255f0","spoofChk":"off","trust":"on"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetworkNodePolicy","metadata":{"name":"xxv810-ens255f0","namespace":"openshift-sriov-network-operator"},"spec":{"deviceType":"vfio-pci","isRdma":false,"linkType":"eth","mtu":1500,"nicSelector":{"deviceID":"1599","pfNames":["ens255f0"],"rootDevices":["0000:9b:00.0"],"vendor":"8086"},"nodeSelector":{"node-role.kubernetes.io/master":""},"numVfs":8,"priority":10,"resourceName":"xxv810_ens255f0"}}}],"remediationAction":"inform","severity":"low"}}}],"remediationAction":"inform"}}\n',
                                        'policy.open-cluster-management.io/categories': 'CM '
                                                                                        'Configuration '
                                                                                        'Management',
                                        'policy.open-cluster-management.io/controls': 'CM-2 '
                                                                                      'Baseline '
                                                                                      'Configuration',
                                        'policy.open-cluster-management.io/standards': 'NIST '
                                                                                       'SP '
                                                                                       '800-53',
                                        'ran.openshift.io/ztp-deploy-wave': '100'},
                        'creationTimestamp': '2024-05-07T11:34:08Z',
                        'generation': 1,
                        'labels': {'app.kubernetes.io/instance': 'policies'},
                        'name': 'sno-ibu-00-sriov-policy',
                        'namespace': 'ztp-group-du-sno',
                        'resourceVersion': '9258036',
                        'uid': 'a4f7a7ec-9e88-4da0-8bc6-2e14fcd04811'},
           'spec': {'disabled': False,
                    'policy-templates': [{'objectDefinition': {'apiVersion': 'policy.open-cluster-management.io/v1',
                                                               'kind': 'ConfigurationPolicy',
                                                               'metadata': {'name': 'sno-ibu-00-sriov-policy-config'},
                                                               'spec': {'evaluationInterval': {'compliant': '10m',
                                                                                               'noncompliant': '10s'},
                                                                        'namespaceselector': {'exclude': ['kube-*'],
                                                                                              'include': ['*']},
                                                                        'object-templates': [{'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetwork',
                                                                                                                   'metadata': {'name': 'sriov-nw-du-netdev-ens255f1',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'ipam': '{"type": '
                                                                                                                                    '"host-local","ranges": '
                                                                                                                                    '[[{"subnet": '
                                                                                                                                    '"10.0.20.0/24"}]],"dataDir": \xa0 '
                                                                                                                                    '"/run/my-orchestrator/container-ipam-state-1"}',
                                                                                                                            'networkNamespace': 'openshift-sriov-network-operator',
                                                                                                                            'resourceName': 'xxv810_ens255f1',
                                                                                                                            'spoofChk': 'off',
                                                                                                                            'trust': 'on'}}},
                                                                                             {'complianceType': 'mustonlyhave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetworkNodePolicy',
                                                                                                                   'metadata': {'name': 'xxv810-ens255f1',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'deviceType': 'netdevice',
                                                                                                                            'isRdma': False,
                                                                                                                            'linkType': 'eth',
                                                                                                                            'mtu': 1500,
                                                                                                                            'nicSelector': {'pfNames': ['ens255f1']},
                                                                                                                            'nodeSelector': {'node-role.kubernetes.io/master': ''},
                                                                                                                            'numVfs': 8,
                                                                                                                            'priority': 10,
                                                                                                                            'resourceName': 'xxv810_ens255f1'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetwork',
                                                                                                                   'metadata': {'name': 'sriov-nw-du-vfio-enp199s0f1',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'ipam': '{"type": '
                                                                                                                                    '"host-local","ranges": '
                                                                                                                                    '[[{"subnet": '
                                                                                                                                    '"10.0.21.0/24"}]],"dataDir": \xa0 '
                                                                                                                                    '"/run/my-orchestrator/container-ipam-state-2"}',
                                                                                                                            'networkNamespace': 'openshift-sriov-network-operator',
                                                                                                                            'resourceName': 'xxv810_enp199s0f1',
                                                                                                                            'spoofChk': 'off',
                                                                                                                            'trust': 'on'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetworkNodePolicy',
                                                                                                                   'metadata': {'name': 'xxv810-enp199s0f1',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'deviceType': 'vfio-pci',
                                                                                                                            'isRdma': False,
                                                                                                                            'linkType': 'eth',
                                                                                                                            'mtu': 1500,
                                                                                                                            'nicSelector': {'pfNames': ['enp199s0f1']},
                                                                                                                            'nodeSelector': {'node-role.kubernetes.io/master': ''},
                                                                                                                            'numVfs': 16,
                                                                                                                            'priority': 10,
                                                                                                                            'resourceName': 'xxv810_enp199s0f1'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetwork',
                                                                                                                   'metadata': {'name': 'sriov-nw-du-vfio-ens255f0',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'ipam': '{"type": '
                                                                                                                                    '"host-local","ranges": '
                                                                                                                                    '[[{"subnet": '
                                                                                                                                    '"10.0.70.0/24"}]],"dataDir": \xa0 '
                                                                                                                                    '"/run/my-orchestrator/container-ipam-state-3"}',
                                                                                                                            'networkNamespace': 'openshift-sriov-network-operator',
                                                                                                                            'resourceName': 'xxv810_ens255f0',
                                                                                                                            'spoofChk': 'off',
                                                                                                                            'trust': 'on'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetworkNodePolicy',
                                                                                                                   'metadata': {'name': 'xxv810-ens255f0',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'deviceType': 'vfio-pci',
                                                                                                                            'isRdma': False,
                                                                                                                            'linkType': 'eth',
                                                                                                                            'mtu': 1500,
                                                                                                                            'nicSelector': {'deviceID': '1599',
                                                                                                                                            'pfNames': ['ens255f0'],
                                                                                                                                            'rootDevices': ['0000:9b:00.0'],
                                                                                                                                            'vendor': '8086'},
                                                                                                                            'nodeSelector': {'node-role.kubernetes.io/master': ''},
                                                                                                                            'numVfs': 8,
                                                                                                                            'priority': 10,
                                                                                                                            'resourceName': 'xxv810_ens255f0'}}}],
                                                                        'remediationAction': 'inform',
                                                                        'severity': 'low'}}}],
                    'remediationAction': 'inform'},
           'status': {}},
          {'apiVersion': 'policy.open-cluster-management.io/v1',
           'kind': 'Policy',
           'metadata': {'annotations': {'kubectl.kubernetes.io/last-applied-configuration': '{"apiVersion":"policy.open-cluster-management.io/v1","kind":"Policy","metadata":{"annotations":{"policy.open-cluster-management.io/categories":"CM '
                                                                                            'Configuration '
                                                                                            'Management","policy.open-cluster-management.io/controls":"CM-2 '
                                                                                            'Baseline '
                                                                                            'Configuration","policy.open-cluster-management.io/standards":"NIST '
                                                                                            'SP '
                                                                                            '800-53","ran.openshift.io/ztp-deploy-wave":"100"},"labels":{"app.kubernetes.io/instance":"policies"},"name":"ztp-ibu-ibi-oadp-policy","namespace":"ztp-group-du-sno"},"spec":{"disabled":false,"policy-templates":[{"objectDefinition":{"apiVersion":"policy.open-cluster-management.io/v1","kind":"ConfigurationPolicy","metadata":{"name":"ztp-ibu-ibi-oadp-policy-config"},"spec":{"evaluationInterval":{"compliant":"10m","noncompliant":"10s"},"namespaceselector":{"exclude":["kube-*"],"include":["*"]},"object-templates":[{"complianceType":"musthave","objectDefinition":{"apiVersion":"v1","data":{"cloud":"W2RlZmF1bHRdCmF3c19hY2Nlc3Nfa2V5X2lkPWZYUWdlRHVnNVFrRms4REFKTVZ3CmF3c19zZWNyZXRfYWNjZXNzX2tleT0yRzJDb2htczVoSnpTM1hnQ1hRbzRkSjlQVkVqZDZUVmd0UThOU0ZvCg=="},"kind":"Secret","metadata":{"name":"cloud-credentials","namespace":"openshift-adp"},"type":"Opaque"}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"oadp.openshift.io/v1alpha1","kind":"DataProtectionApplication","metadata":{"name":"dataprotectionapplication","namespace":"openshift-adp"},"spec":{"backupLocations":[{"velero":{"config":{"insecureSkipTLSVerify":"true","profile":"default","region":"minio","s3ForcePathStyle":"true","s3Url":"http://10.19.138.94:9002"},"credential":{"key":"cloud","name":"cloud-credentials"},"default":true,"objectStorage":{"bucket":"sno-ibu-00","prefix":"velero"},"provider":"aws"}}],"configuration":{"velero":{"defaultPlugins":["aws","openshift"],"resourceTimeout":"10m"}}},"status":{"conditions":[{"reason":"Complete","status":"True","type":"Reconciled"}]}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"velero.io/v1","kind":"BackupStorageLocation","metadata":{"namespace":"openshift-adp"},"status":{"phase":"Available"}}}],"remediationAction":"inform","severity":"low"}}}],"remediationAction":"inform"}}\n',
                                        'policy.open-cluster-management.io/categories': 'CM '
                                                                                        'Configuration '
                                                                                        'Management',
                                        'policy.open-cluster-management.io/controls': 'CM-2 '
                                                                                      'Baseline '
                                                                                      'Configuration',
                                        'policy.open-cluster-management.io/standards': 'NIST '
                                                                                       'SP '
                                                                                       '800-53',
                                        'ran.openshift.io/ztp-deploy-wave': '100'},
                        'creationTimestamp': '2024-05-07T11:34:08Z',
                        'generation': 12,
                        'labels': {'app.kubernetes.io/instance': 'policies'},
                        'name': 'ztp-ibu-ibi-oadp-policy',
                        'namespace': 'ztp-group-du-sno',
                        'resourceVersion': '2581880',
                        'uid': 'ce037c4c-fc25-4f6e-81f8-d18152f53b52'},
           'spec': {'disabled': False,
                    'policy-templates': [{'objectDefinition': {'apiVersion': 'policy.open-cluster-management.io/v1',
                                                               'kind': 'ConfigurationPolicy',
                                                               'metadata': {'name': 'ztp-ibu-ibi-oadp-policy-config'},
                                                               'spec': {'evaluationInterval': {'compliant': '10m',
                                                                                               'noncompliant': '10s'},
                                                                        'namespaceselector': {'exclude': ['kube-*'],
                                                                                              'include': ['*']},
                                                                        'object-templates': [{'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'v1',
                                                                                                                   'data': {'cloud': 'W2RlZmF1bHRdCmF3c19hY2Nlc3Nfa2V5X2lkPWZYUWdlRHVnNVFrRms4REFKTVZ3CmF3c19zZWNyZXRfYWNjZXNzX2tleT0yRzJDb2htczVoSnpTM1hnQ1hRbzRkSjlQVkVqZDZUVmd0UThOU0ZvCg=='},
                                                                                                                   'kind': 'Secret',
                                                                                                                   'metadata': {'name': 'cloud-credentials',
                                                                                                                                'namespace': 'openshift-adp'},
                                                                                                                   'type': 'Opaque'}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'oadp.openshift.io/v1alpha1',
                                                                                                                   'kind': 'DataProtectionApplication',
                                                                                                                   'metadata': {'name': 'dataprotectionapplication',
                                                                                                                                'namespace': 'openshift-adp'},
                                                                                                                   'spec': {'backupLocations': [{'velero': {'config': {'insecureSkipTLSVerify': 'true',
                                                                                                                                                                       'profile': 'default',
                                                                                                                                                                       'region': 'minio',
                                                                                                                                                                       's3ForcePathStyle': 'true',
                                                                                                                                                                       's3Url': 'http://10.19.138.94:9002'},
                                                                                                                                                            'credential': {'key': 'cloud',
                                                                                                                                                                           'name': 'cloud-credentials'},
                                                                                                                                                            'default': True,
                                                                                                                                                            'objectStorage': {'bucket': 'sno-ibu-00',
                                                                                                                                                                              'prefix': 'velero'},
                                                                                                                                                            'provider': 'aws'}}],
                                                                                                                            'configuration': {'velero': {'defaultPlugins': ['aws',
                                                                                                                                                                            'openshift'],
                                                                                                                                                         'resourceTimeout': '10m'}}},
                                                                                                                   'status': {'conditions': [{'reason': 'Complete',
                                                                                                                                              'status': 'True',
                                                                                                                                              'type': 'Reconciled'}]}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'velero.io/v1',
                                                                                                                   'kind': 'BackupStorageLocation',
                                                                                                                   'metadata': {'namespace': 'openshift-adp'},
                                                                                                                   'status': {'phase': 'Available'}}}],
                                                                        'remediationAction': 'inform',
                                                                        'severity': 'low'}}}],
                    'remediationAction': 'enforce'},
           'status': {}},
          {'apiVersion': 'policy.open-cluster-management.io/v1',
           'kind': 'Policy',
           'metadata': {'annotations': {'kubectl.kubernetes.io/last-applied-configuration': '{"apiVersion":"policy.open-cluster-management.io/v1","kind":"Policy","metadata":{"annotations":{"policy.open-cluster-management.io/categories":"CM '
                                                                                            'Configuration '
                                                                                            'Management","policy.open-cluster-management.io/controls":"CM-2 '
                                                                                            'Baseline '
                                                                                            'Configuration","policy.open-cluster-management.io/standards":"NIST '
                                                                                            'SP '
                                                                                            '800-53","ran.openshift.io/ztp-deploy-wave":"2"},"labels":{"app.kubernetes.io/instance":"policies"},"name":"ztp-ibu-ibi-oadp-subscription","namespace":"ztp-group-du-sno"},"spec":{"disabled":false,"policy-templates":[{"objectDefinition":{"apiVersion":"policy.open-cluster-management.io/v1","kind":"ConfigurationPolicy","metadata":{"name":"ztp-ibu-ibi-oadp-subscription-config"},"spec":{"evaluationInterval":{"compliant":"10m","noncompliant":"10s"},"namespaceselector":{"exclude":["kube-*"],"include":["*"]},"object-templates":[{"complianceType":"musthave","objectDefinition":{"apiVersion":"v1","kind":"Namespace","metadata":{"annotations":{"workload.openshift.io/allowed":"management"},"labels":{"kubernetes.io/metadata.name":"openshift-adp"},"name":"openshift-adp"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1","kind":"OperatorGroup","metadata":{"name":"openshift-adp","namespace":"openshift-adp"},"spec":{"targetNamespaces":["openshift-adp"]}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"operators.coreos.com/v1alpha1","kind":"Subscription","metadata":{"name":"openshift-adp","namespace":"openshift-adp"},"spec":{"channel":"stable-1.3","installPlanApproval":"Manual","name":"redhat-oadp-operator","source":"redhat-operators-disconnected","sourceNamespace":"openshift-marketplace"},"status":{"state":"AtLatestKnown"}}}],"remediationAction":"inform","severity":"low"}}}],"remediationAction":"inform"}}\n',
                                        'policy.open-cluster-management.io/categories': 'CM '
                                                                                        'Configuration '
                                                                                        'Management',
                                        'policy.open-cluster-management.io/controls': 'CM-2 '
                                                                                      'Baseline '
                                                                                      'Configuration',
                                        'policy.open-cluster-management.io/standards': 'NIST '
                                                                                       'SP '
                                                                                       '800-53',
                                        'ran.openshift.io/ztp-deploy-wave': '2'},
                        'creationTimestamp': '2024-05-07T11:34:08Z',
                        'generation': 3,
                        'labels': {'app.kubernetes.io/instance': 'policies'},
                        'name': 'ztp-ibu-ibi-oadp-subscription',
                        'namespace': 'ztp-group-du-sno',
                        'resourceVersion': '2572683',
                        'uid': '7a5dca28-6e0b-4552-9360-9b0f893ca6eb'},
           'spec': {'disabled': False,
                    'policy-templates': [{'objectDefinition': {'apiVersion': 'policy.open-cluster-management.io/v1',
                                                               'kind': 'ConfigurationPolicy',
                                                               'metadata': {'name': 'ztp-ibu-ibi-oadp-subscription-config'},
                                                               'spec': {'evaluationInterval': {'compliant': '10m',
                                                                                               'noncompliant': '10s'},
                                                                        'namespaceselector': {'exclude': ['kube-*'],
                                                                                              'include': ['*']},
                                                                        'object-templates': [{'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'v1',
                                                                                                                   'kind': 'Namespace',
                                                                                                                   'metadata': {'annotations': {'workload.openshift.io/allowed': 'management'},
                                                                                                                                'labels': {'kubernetes.io/metadata.name': 'openshift-adp'},
                                                                                                                                'name': 'openshift-adp'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1',
                                                                                                                   'kind': 'OperatorGroup',
                                                                                                                   'metadata': {'name': 'openshift-adp',
                                                                                                                                'namespace': 'openshift-adp'},
                                                                                                                   'spec': {'targetNamespaces': ['openshift-adp']}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'operators.coreos.com/v1alpha1',
                                                                                                                   'kind': 'Subscription',
                                                                                                                   'metadata': {'name': 'openshift-adp',
                                                                                                                                'namespace': 'openshift-adp'},
                                                                                                                   'spec': {'channel': 'stable-1.3',
                                                                                                                            'installPlanApproval': 'Manual',
                                                                                                                            'name': 'redhat-oadp-operator',
                                                                                                                            'source': 'redhat-operators-disconnected',
                                                                                                                            'sourceNamespace': 'openshift-marketplace'},
                                                                                                                   'status': {'state': 'AtLatestKnown'}}}],
                                                                        'remediationAction': 'inform',
                                                                        'severity': 'low'}}}],
                    'remediationAction': 'inform'},
           'status': {}},
          {'apiVersion': 'policy.open-cluster-management.io/v1',
           'kind': 'Policy',
           'metadata': {'annotations': {'kubectl.kubernetes.io/last-applied-configuration': '{"apiVersion":"policy.open-cluster-management.io/v1","kind":"Policy","metadata":{"annotations":{"policy.open-cluster-management.io/categories":"CM '
                                                                                            'Configuration '
                                                                                            'Management","policy.open-cluster-management.io/controls":"CM-2 '
                                                                                            'Baseline '
                                                                                            'Configuration","policy.open-cluster-management.io/standards":"NIST '
                                                                                            'SP '
                                                                                            '800-53","ran.openshift.io/ztp-deploy-wave":"1"},"labels":{"app.kubernetes.io/instance":"policies"},"name":"common-415-common-config","namespace":"ztp-common"},"spec":{"disabled":false,"policy-templates":[{"objectDefinition":{"apiVersion":"policy.open-cluster-management.io/v1","kind":"ConfigurationPolicy","metadata":{"name":"common-415-common-config-config"},"spec":{"evaluationInterval":{"compliant":"10m","noncompliant":"10s"},"namespaceselector":{"exclude":["kube-*"],"include":["*"]},"object-templates":[{"complianceType":"musthave","objectDefinition":{"apiVersion":"v1","data":{"config.yaml":"alertmanagerMain:\\n  '
                                                                                            'enabled: '
                                                                                            'false\\ntelemeterClient:\\n  '
                                                                                            'enabled: '
                                                                                            'false\\nprometheusK8s:\\n   '
                                                                                            'retention: '
                                                                                            '24h\\n"},"kind":"ConfigMap","metadata":{"name":"cluster-monitoring-config","namespace":"openshift-monitoring"}}}],"remediationAction":"inform","severity":"low"}}}],"remediationAction":"inform"}}\n',
                                        'policy.open-cluster-management.io/categories': 'CM '
                                                                                        'Configuration '
                                                                                        'Management',
                                        'policy.open-cluster-management.io/controls': 'CM-2 '
                                                                                      'Baseline '
                                                                                      'Configuration',
                                        'policy.open-cluster-management.io/standards': 'NIST '
                                                                                       'SP '
                                                                                       '800-53',
                                        'ran.openshift.io/ztp-deploy-wave': '1'},
                        'creationTimestamp': '2024-05-07T11:34:08Z',
                        'generation': 1,
                        'labels': {'app.kubernetes.io/instance': 'policies'},
                        'name': 'common-415-common-config',
                        'namespace': 'ztp-common',
                        'resourceVersion': '9255658',
                        'uid': 'a5b04f12-4b50-48df-b9f6-448490bd5c13'},
           'spec': {'disabled': False,
                    'policy-templates': [{'objectDefinition': {'apiVersion': 'policy.open-cluster-management.io/v1',
                                                               'kind': 'ConfigurationPolicy',
                                                               'metadata': {'name': 'common-415-common-config-config'},
                                                               'spec': {'evaluationInterval': {'compliant': '10m',
                                                                                               'noncompliant': '10s'},
                                                                        'namespaceselector': {'exclude': ['kube-*'],
                                                                                              'include': ['*']},
                                                                        'object-templates': [{'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'v1',
                                                                                                                   'data': {'config.yaml': 'alertmanagerMain:\n'
                                                                                                                                           '  '
                                                                                                                                           'enabled: '
                                                                                                                                           'false\n'
                                                                                                                                           'telemeterClient:\n'
                                                                                                                                           '  '
                                                                                                                                           'enabled: '
                                                                                                                                           'false\n'
                                                                                                                                           'prometheusK8s:\n'
                                                                                                                                           '   '
                                                                                                                                           'retention: '
                                                                                                                                           '24h\n'},
                                                                                                                   'kind': 'ConfigMap',
                                                                                                                   'metadata': {'name': 'cluster-monitoring-config',
                                                                                                                                'namespace': 'openshift-monitoring'}}}],
                                                                        'remediationAction': 'inform',
                                                                        'severity': 'low'}}}],
                    'remediationAction': 'inform'},
           'status': {}},
          {'apiVersion': 'policy.open-cluster-management.io/v1',
           'kind': 'Policy',
           'metadata': {'annotations': {'cluster-group-upgrades-operator/rname': 'sno-ibu-00-sno-ibu-00-sriov-policy',
                                        'kubectl.kubernetes.io/last-applied-configuration': '{"apiVersion":"policy.open-cluster-management.io/v1","kind":"Policy","metadata":{"annotations":{"policy.open-cluster-management.io/categories":"CM '
                                                                                            'Configuration '
                                                                                            'Management","policy.open-cluster-management.io/controls":"CM-2 '
                                                                                            'Baseline '
                                                                                            'Configuration","policy.open-cluster-management.io/standards":"NIST '
                                                                                            'SP '
                                                                                            '800-53","ran.openshift.io/ztp-deploy-wave":"100"},"labels":{"app.kubernetes.io/instance":"policies"},"name":"sno-ibu-00-sriov-policy","namespace":"ztp-group-du-sno"},"spec":{"disabled":false,"policy-templates":[{"objectDefinition":{"apiVersion":"policy.open-cluster-management.io/v1","kind":"ConfigurationPolicy","metadata":{"name":"sno-ibu-00-sriov-policy-config"},"spec":{"evaluationInterval":{"compliant":"10m","noncompliant":"10s"},"namespaceselector":{"exclude":["kube-*"],"include":["*"]},"object-templates":[{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetwork","metadata":{"name":"sriov-nw-du-netdev-ens255f1","namespace":"openshift-sriov-network-operator"},"spec":{"ipam":"{\\"type\\": '
                                                                                            '\\"host-local\\",\\"ranges\\": '
                                                                                            '[[{\\"subnet\\": '
                                                                                            '\\"10.0.20.0/24\\"}]],\\"dataDir\\": \xa0 '
                                                                                            '\\"/run/my-orchestrator/container-ipam-state-1\\"}","networkNamespace":"openshift-sriov-network-operator","resourceName":"xxv810_ens255f1","spoofChk":"off","trust":"on"}}},{"complianceType":"mustonlyhave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetworkNodePolicy","metadata":{"name":"xxv810-ens255f1","namespace":"openshift-sriov-network-operator"},"spec":{"deviceType":"netdevice","isRdma":false,"linkType":"eth","mtu":1500,"nicSelector":{"pfNames":["ens255f1"]},"nodeSelector":{"node-role.kubernetes.io/master":""},"numVfs":8,"priority":10,"resourceName":"xxv810_ens255f1"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetwork","metadata":{"name":"sriov-nw-du-vfio-enp199s0f1","namespace":"openshift-sriov-network-operator"},"spec":{"ipam":"{\\"type\\": '
                                                                                            '\\"host-local\\",\\"ranges\\": '
                                                                                            '[[{\\"subnet\\": '
                                                                                            '\\"10.0.21.0/24\\"}]],\\"dataDir\\": \xa0 '
                                                                                            '\\"/run/my-orchestrator/container-ipam-state-2\\"}","networkNamespace":"openshift-sriov-network-operator","resourceName":"xxv810_enp199s0f1","spoofChk":"off","trust":"on"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetworkNodePolicy","metadata":{"name":"xxv810-enp199s0f1","namespace":"openshift-sriov-network-operator"},"spec":{"deviceType":"vfio-pci","isRdma":false,"linkType":"eth","mtu":1500,"nicSelector":{"pfNames":["enp199s0f1"]},"nodeSelector":{"node-role.kubernetes.io/master":""},"numVfs":16,"priority":10,"resourceName":"xxv810_enp199s0f1"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetwork","metadata":{"name":"sriov-nw-du-vfio-ens255f0","namespace":"openshift-sriov-network-operator"},"spec":{"ipam":"{\\"type\\": '
                                                                                            '\\"host-local\\",\\"ranges\\": '
                                                                                            '[[{\\"subnet\\": '
                                                                                            '\\"10.0.70.0/24\\"}]],\\"dataDir\\": \xa0 '
                                                                                            '\\"/run/my-orchestrator/container-ipam-state-3\\"}","networkNamespace":"openshift-sriov-network-operator","resourceName":"xxv810_ens255f0","spoofChk":"off","trust":"on"}}},{"complianceType":"musthave","objectDefinition":{"apiVersion":"sriovnetwork.openshift.io/v1","kind":"SriovNetworkNodePolicy","metadata":{"name":"xxv810-ens255f0","namespace":"openshift-sriov-network-operator"},"spec":{"deviceType":"vfio-pci","isRdma":false,"linkType":"eth","mtu":1500,"nicSelector":{"deviceID":"1599","pfNames":["ens255f0"],"rootDevices":["0000:9b:00.0"],"vendor":"8086"},"nodeSelector":{"node-role.kubernetes.io/master":""},"numVfs":8,"priority":10,"resourceName":"xxv810_ens255f0"}}}],"remediationAction":"inform","severity":"low"}}}],"remediationAction":"inform"}}\n',
                                        'policy.open-cluster-management.io/categories': 'CM '
                                                                                        'Configuration '
                                                                                        'Management',
                                        'policy.open-cluster-management.io/controls': 'CM-2 '
                                                                                      'Baseline '
                                                                                      'Configuration',
                                        'policy.open-cluster-management.io/standards': 'NIST '
                                                                                       'SP '
                                                                                       '800-53',
                                        'ran.openshift.io/ztp-deploy-wave': '100'},
                        'creationTimestamp': '2024-05-13T09:44:56Z',
                        'generation': 1,
                        'labels': {'app': 'openshift-cluster-group-upgrades',
                                   'app.kubernetes.io/instance': 'policies',
                                   'openshift-cluster-group-upgrades/clusterGroupUpgrade': 'sno-ibu-00',
                                   'openshift-cluster-group-upgrades/parentPolicyName': 'sno-ibu-00-sriov-policy',
                                   'velero.io/exclude-from-backup': 'true'},
                        'name': 'sno-ibu-00-sno-ibu-00-sriov-policy-wgrvf',
                        'namespace': 'ztp-install',
                        'resourceVersion': '9338975',
                        'uid': '53ed55c1-c609-4463-bbb6-21dee1324b92'},
           'spec': {'disabled': False,
                    'policy-templates': [{'objectDefinition': {'apiVersion': 'policy.open-cluster-management.io/v1',
                                                               'kind': 'ConfigurationPolicy',
                                                               'metadata': {'name': 'sno-ibu-00-sno-ibu-00-sriov-policy-config-m699f'},
                                                               'spec': {'evaluationInterval': {'compliant': '10m',
                                                                                               'noncompliant': '10s'},
                                                                        'namespaceselector': {'exclude': ['kube-*'],
                                                                                              'include': ['*']},
                                                                        'object-templates': [{'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetwork',
                                                                                                                   'metadata': {'name': 'sriov-nw-du-netdev-ens255f1',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'ipam': '{"type": '
                                                                                                                                    '"host-local","ranges": '
                                                                                                                                    '[[{"subnet": '
                                                                                                                                    '"10.0.20.0/24"}]],"dataDir": \xa0 '
                                                                                                                                    '"/run/my-orchestrator/container-ipam-state-1"}',
                                                                                                                            'networkNamespace': 'openshift-sriov-network-operator',
                                                                                                                            'resourceName': 'xxv810_ens255f1',
                                                                                                                            'spoofChk': 'off',
                                                                                                                            'trust': 'on'}}},
                                                                                             {'complianceType': 'mustonlyhave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetworkNodePolicy',
                                                                                                                   'metadata': {'name': 'xxv810-ens255f1',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'deviceType': 'netdevice',
                                                                                                                            'isRdma': False,
                                                                                                                            'linkType': 'eth',
                                                                                                                            'mtu': 1500,
                                                                                                                            'nicSelector': {'pfNames': ['ens255f1']},
                                                                                                                            'nodeSelector': {'node-role.kubernetes.io/master': ''},
                                                                                                                            'numVfs': 8,
                                                                                                                            'priority': 10,
                                                                                                                            'resourceName': 'xxv810_ens255f1'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetwork',
                                                                                                                   'metadata': {'name': 'sriov-nw-du-vfio-enp199s0f1',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'ipam': '{"type": '
                                                                                                                                    '"host-local","ranges": '
                                                                                                                                    '[[{"subnet": '
                                                                                                                                    '"10.0.21.0/24"}]],"dataDir": \xa0 '
                                                                                                                                    '"/run/my-orchestrator/container-ipam-state-2"}',
                                                                                                                            'networkNamespace': 'openshift-sriov-network-operator',
                                                                                                                            'resourceName': 'xxv810_enp199s0f1',
                                                                                                                            'spoofChk': 'off',
                                                                                                                            'trust': 'on'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetworkNodePolicy',
                                                                                                                   'metadata': {'name': 'xxv810-enp199s0f1',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'deviceType': 'vfio-pci',
                                                                                                                            'isRdma': False,
                                                                                                                            'linkType': 'eth',
                                                                                                                            'mtu': 1500,
                                                                                                                            'nicSelector': {'pfNames': ['enp199s0f1']},
                                                                                                                            'nodeSelector': {'node-role.kubernetes.io/master': ''},
                                                                                                                            'numVfs': 16,
                                                                                                                            'priority': 10,
                                                                                                                            'resourceName': 'xxv810_enp199s0f1'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetwork',
                                                                                                                   'metadata': {'name': 'sriov-nw-du-vfio-ens255f0',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'ipam': '{"type": '
                                                                                                                                    '"host-local","ranges": '
                                                                                                                                    '[[{"subnet": '
                                                                                                                                    '"10.0.70.0/24"}]],"dataDir": \xa0 '
                                                                                                                                    '"/run/my-orchestrator/container-ipam-state-3"}',
                                                                                                                            'networkNamespace': 'openshift-sriov-network-operator',
                                                                                                                            'resourceName': 'xxv810_ens255f0',
                                                                                                                            'spoofChk': 'off',
                                                                                                                            'trust': 'on'}}},
                                                                                             {'complianceType': 'musthave',
                                                                                              'objectDefinition': {'apiVersion': 'sriovnetwork.openshift.io/v1',
                                                                                                                   'kind': 'SriovNetworkNodePolicy',
                                                                                                                   'metadata': {'name': 'xxv810-ens255f0',
                                                                                                                                'namespace': 'openshift-sriov-network-operator'},
                                                                                                                   'spec': {'deviceType': 'vfio-pci',
                                                                                                                            'isRdma': False,
                                                                                                                            'linkType': 'eth',
                                                                                                                            'mtu': 1500,
                                                                                                                            'nicSelector': {'deviceID': '1599',
                                                                                                                                            'pfNames': ['ens255f0'],
                                                                                                                                            'rootDevices': ['0000:9b:00.0'],
                                                                                                                                            'vendor': '8086'},
                                                                                                                            'nodeSelector': {'node-role.kubernetes.io/master': ''},
                                                                                                                            'numVfs': 8,
                                                                                                                            'priority': 10,
                                                                                                                            'resourceName': 'xxv810_ens255f0'}}}],
                                                                        'remediationAction': 'inform',
                                                                        'severity': 'low'}}}],
                    'remediationAction': 'enforce'},
           'status': {}}],
 'meta': {'received_at': '2024-05-13T09:44:58.027712Z',
          'source': {'name': 'ansible.eda.kafka', 'type': 'ansible.eda.kafka'},
          'uuid': 'b6ac40c1-f38f-4940-9f83-bc820903f312'}}
```
