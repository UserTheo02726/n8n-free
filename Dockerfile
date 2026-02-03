FROM blowsnow/n8n-chinese:latest

# Switch to root user to run installation commands
USER root

# ▼▼▼ [Automation Anchor] Scripts will automatically sync community nodes in this area, please do not manually modify the content ▼▼▼
# --- AUTO-GENERATED-COMMUNITY-NODES-START ---
RUN mkdir -p /home/node/.n8n && cd /home/node/.n8n && npm install n8n-nodes-feishu-lite @tavily/n8n-nodes-tavily --save && chown -R node:node /home/node/.n8n
# --- AUTO-GENERATED-COMMUNITY-NODES-END ---
# ▲▲▲ [Automation Anchor] End ▲▲▲

# Switch back to node user for secure runtime
USER node
