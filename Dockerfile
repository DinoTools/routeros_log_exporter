# SPDX-FileCopyrightText: none
# SPDX-License-Identifier: CC0-1.0

FROM python:3.12-alpine

COPY . /routeros_log_exporter

RUN pip install . && \
    rm -rf /routeros_log_exporter

ENTRYPOINT ["/usr/local/bin/routeros_log_exporter"]
CMD ["--config /etc/routeros_log_exporter/config.yaml"]
