require 'configliere'

Settings.use :env_var
Settings.define :database_url, env_var: 'DATABASE_URL', required: true
Settings.define :rack_timeout, env_var: 'RACK_TIMEOUT', default: 10, required: false, type: Integer
