# $Id$
#
# Copyright (c) 2024, Juniper Networks, Inc.
#
# kaliraj@juniper.net
#
# All rights reserved.

FILE_NAME :=  draft-ietf-idr-bgp-fwd-rr
GITHUB_KV_LOCAL_LOC :=  ../github/kalirajv/${FILE_NAME}

.PHONY: xml-rfc-cp

.MAIN: xml-rfc-cp

xml-rfc-cp:
	xml2rfc ${FILE_NAME}.xml --text --html ;\
	scp ${FILE_NAME}.html ${USER}@${UNIX_SVR}:${HTM_PATH} ;\
	scp ${FILE_NAME}.txt ${USER}@${UNIX_SVR}:${HTM_PATH} ;\
	scp Makefile ${GITHUB_KV_LOCAL_LOC}/;
	scp README.md ${GITHUB_KV_LOCAL_LOC}/;
	scp ${FILE_NAME}.xml ${GITHUB_KV_LOCAL_LOC}/;
	scp ${FILE_NAME}.txt ${GITHUB_KV_LOCAL_LOC}/;
	scp ${FILE_NAME}.html ${GITHUB_KV_LOCAL_LOC}/;

pull:
	scp ${GITHUB_KV_LOCAL_LOC}/${FILE_NAME}.xml ./;
