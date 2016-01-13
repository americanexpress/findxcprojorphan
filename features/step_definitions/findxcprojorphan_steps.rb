When(/^I successfully process "([^"]*)" with "([^"]*)"$/) do |xcproj_path, files_glob|
  xcproj_path = expand_path("%/#{xcproj_path}")
  files_glob = expand_path('%/') + files_glob
  step %(I successfully run `findxcprojorphan #{xcproj_path} #{files_glob}`)
  end

When(/^I unsuccessfully process "([^"]*)" with "([^"]*)"$/) do |xcproj_path, files_glob|
  xcproj_path = expand_path("%/#{xcproj_path}")
  files_glob = expand_path('%/') + files_glob
  step %(I run `findxcprojorphan #{xcproj_path} #{files_glob}`)
  step %(the exit status should be 1)
end