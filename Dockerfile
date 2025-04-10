FROM node:18-bookworm-slim

RUN apt update && apt upgrade -y && apt install -y \
  vim

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]

