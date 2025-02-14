-- this command live_greps all the services owned by the rendering team
local grep_rendering_command =
'Telescope live_grep search_dirs={"services/coturn","services/cs-gateway","services/dcm-2d-renderer","services/dcm-storage","services/dummy-datasink","services/nvidia-installer-k8s","services/node-scaler","services/object-collector","services/preview-job","services/preview-media","services/preview-media-cleanup-job","services/preview-renderer","services/preview-renderer-cleanup-job","services/render-broker","services/render-instance","services/render-instance-proxy","services/render-session-controller","services/render-session-converter","services/render-session-observer","services/rendercore-diagnosis","services/rendercore-latest","services/serviceauth-job/k8s/base/clients/re_*","services/session-manager","services/session-manager-cleanup-job","services/video-converter"}'

vim.api.nvim_create_user_command('GrepRendering', grep_rendering_command, {})
