FROM blowsnow/n8n-chinese:latest

# Switch to root user to run installation commands
USER root

# ▼▼▼ [Automation Anchor] Scripts will automatically sync community nodes in this area, please do not manually modify the content ▼▼▼
# --- AUTO-GENERATED-COMMUNITY-NODES-START ---
RUN npm install -g n8n-nodes-feishu-lite @tavily/n8n-nodes-tavily
# --- AUTO-GENERATED-COMMUNITY-NODES-END ---
# ▲▲▲ [Automation Anchor] End ▲▲▲

# Switch back to node user for secure runtime
USER node
