#!/bin/bash
jq -r ".llm_request.model + \"|\" + ((.llm_response.usageMetadata.totalTokenCount // 0) | tostring)" > /tmp/.gemini_status_current
