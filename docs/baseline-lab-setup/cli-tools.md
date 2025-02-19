# CLI Tools Guide

This guide assumes a Mac based system and will install the following tools:

- kubectl (version >= than bundled Tanzu CLI version)
- tmc
- tanzu v1.4.0
- velero v1.6.2
- helm v3
- yq v4.12+
- kind (helpful, but not required)
- ytt, kapp, imgpkg, kbld (bundled with tkg)
- jq

## Kubectl
1. General instructions - [kubectl docs](https://kubernetes.io/docs/tasks/tools/install-kubectl)
2. If required, download and install
```
$ curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl"
$ chmod +x ./kubectl
$ sudo mv ./kubectl /usr/local/bin/kubectl
```
3. Check for version
```
$ kubectl version --client
    Client Version: version.Info { 
      Major:"1",
      Minor:"23",
      ...
    }
```

## TMC CLI
1. Requires TMC Access - [TMC docs](https://docs.vmware.com/en/VMware-Tanzu-Mission-Control/services/tanzumc-using/GUID-7EEBDAEF-7868-49EC-8069-D278FD100FD9.html)
2. Download binary (~55Mb) via link at [TMC Automation Center](https://southtanzuseamericas.tmc.cloud.vmware.com/clidownload)
3. Copy binary to path 
```
$ chmod +x tmc && mv tmc /usr/local/bin/
```
4. Verify install (may have to adjust security setting to allow execution)
```
$ tmc
____  _ ____
 | |\/| |___

Usage:
  tmc [resource|action|helper] [flags]
```

## Tanzu CLI
1. Requires VMware Credentials - [VMware TKG Connect](https://customerconnect.vmware.com/downloads/info/slug/infrastructure_operations_management/vmware_tanzu_kubernetes_grid/1_x)
2. Navigate to Download TKG, choose binary (~488Mb) and accept EULA
3. Unpack to /tanzu folder and make available to system
```
$ sudo install core/v1.4.1/tanzu-core-darwin_amd64 /usr/local/bin/tanzu
```
4. Verify install (may have to adjust security setting to allow execution)
```
$ tanzu version
version: v1.4.1
buildDate: 2022-01-04
sha: 81a92f90
```
5. Worth reading - [Tanzu CLI Documentation](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.4/vmware-tanzu-kubernetes-grid-14/GUID-install-cli.html#download-and-unpack-the-tanzu-cli-and-kubectl-1)

## Velero CLI
1. Velero Docs - [Homebrew](https://velero.io/docs/v1.7/basic-install/#option-1-macos---homebrew)
2. Install via Homebrew and check
```
$ brew install velero

$ velero
Velero is a tool for managing disaster recovery, specifically for Kubernetes
cluster resources. It provides a simple, configurable, and operationally robust
way to back up your application state and associated data
```

## Helm
1. Helm Docs - [Homebrew](https://helm.sh/docs/intro/install/)
2. Install Helm and check version
```
$ brew install helm

$ helm version
version.BuildInfo{Version:"v3.7.2", GitCommit:"663a896f4a815053445eec4153677ddc24a0a361", GitTreeState:"clean", GoVersion:"go1.17.3"}
```

## yq
1. [yq v4.12+ Docs](https://github.com/mikefarah/yq) 
2. Install yq and check version
```
$ brew install yq

$ yq -V
yq (https://github.com/mikefarah/yq/) version 4.16.2
```

## Kind
1. Kind Docs [homebrew](https://kind.sigs.k8s.io/docs/user/quick-start#installing-with-a-package-manager)
2. Install and check version 
```
$ brew install kind

$ kind version
kind v0.11.1 go1.16.4 darwin/amd64
```

## ytt
1. Navigate to your /tanzu/cli folder 
2. Unpack the ytt binary and make it executable
```
$ gunzip ytt-darwin-amd64-v0.34.0+vmware.1.gz
$ chmod ugo+x ytt-darwin-amd64-v0.34.0+vmware.1
```
3. Move binary to executable location, and rename
```
$ mv ./ytt-darwin-amd64-v0.34.0+vmware.1 /usr/local/bin/ytt
```
4. Verify and check version
```
$ ytt version
ytt version 0.34.0
```

## kapp
1. Navigate to your /tanzu/cli folder
2. Unpack the kapp binary and make it executable
```
$ gunzip kapp-darwin-amd64-v0.37.0+vmware.1.gz
$ chmod ugo+x kapp-darwin-amd64-v0.37.0+vmware.1
```
3. Move binary to executable location, and rename
```
$ mv ./kapp-darwin-amd64-v0.37.0+vmware.1 /usr/local/bin/kapp
```
4. Verify and check version
```
$ kapp version
kapp version 0.37.0

Succeeded
```

## kbld
1. Navigate to your /tanzu/cli folder
2. Unpack the kbld binary and make it executable
```
$ gunzip kbld-darwin-amd64-v0.30.0+vmware.1.gz
$ chmod ugo+x kbld-darwin-amd64-v0.30.0+vmware.1
```
3. Move binary to executable location, and rename
```
$ mv ./kbld-darwin-amd64-v0.30.0+vmware.1 /usr/local/bin/kbld
```
4. Verify and check version
```
$ kbld version
kbld version 0.30.0

Succeeded
```

## imgpkg
1. Navigate to your /tanzu/cli folder
2. Unpack the imgpkg binary and make it executable
```
$ gunzip imgpkg-darwin-amd64-v0.10.0+vmware.1.gz
$ chmod ugo+x imgpkg-darwin-amd64-v0.10.0+vmware.1
```
3. Move binary to executable location, and rename
```
$ mv ./imgpkg-darwin-amd64-v0.10.0+vmware.1 /usr/local/bin/imgpkg

```
4. Verify and check version
```
$ imgpkg version
imgpkg version 0.10.0

Succeeded
```

## jq
1. Install and check
```
$ brew install jq

$ jq --help
jq - commandline JSON processor [version 1.6]

Usage:	jq [options] <jq filter> [file...]
        jq [options] --args <jq filter> [strings...]
        jq [options] --jsonargs <jq filter> [JSON_TEXTS...]
```
