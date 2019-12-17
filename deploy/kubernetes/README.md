Deployment instructions for [Single User](https://www.eclipse.org/che/docs/kubernetes-single-user.html) and [Multi User](https://www.eclipse.org/che/docs/kubernetes-multi-user.html) Che.


PopcornSAR Deploy Command

Install
```bash
$ helm upgrade --install che --namespace che -f ./values/multi-user.yaml --set global.ingressDomain=xxx.xxx.xxx.xxx.nip.io ./
```

Update for edit
```bash
$ helm upgrade che --namespace che -f ./values/multi-user.yaml --set global.ingressDomain=xxx.xxx.xxx.xxx.nip.io ./
```

Delete che
```bash
$ helm delete che --purge
```
