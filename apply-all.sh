function apply_x86() {
#	kubectl apply -f base.yaml
	kubectl apply -f alpine.yaml
#	kubectl apply -f fedora.yaml
#	kubectl apply -f ubi.yaml
#	kubectl apply -f ubuntu.yaml
#	kubectl apply -f nginx.yaml
}

function apply_s390x() {
#	cat base.yaml | sed 's/x86/s390x/g' | kubectl apply -f -
	cat alpine.yaml | sed 's/x86/s390x/g' | kubectl apply -f -
#	cat fedora.yaml | sed 's/x86/s390x/g' | kubectl apply -f -
#	cat ubi.yaml | sed 's/x86/s390x/g' | kubectl apply -f -
#	cat ubuntu.yaml | sed 's/x86/s390x/g' | kubectl apply -f -
#	cat nginx.yaml | sed 's/x86/s390x/g' | kubectl apply -f -
}

function apply_ppc64le() {
	echo ""
#	cat base.yaml | sed 's/x86/ppc64le/g' | kubectl apply -f -
	cat alpine.yaml | sed 's/x86/ppc64le/g' | kubectl apply -f -
#	cat fedora.yaml | sed 's/x86/ppc64le/g' | kubectl apply -f -
#	cat ubi.yaml | sed 's/x86/ppc64le/g' | kubectl apply -f -
#	cat ubuntu.yaml | sed 's/x86/ppc64le/g' | kubectl apply -f -
#	cat nginx.yaml | sed 's/x86/ppc64le/g' | kubectl apply -f -
}

apply_x86
apply_s390x
apply_ppc64le

kubectl get pod -w