#
# Cookbook Name:: duplicity
# Attributes:: default
#
# Copyright 2012, cj Advertising, LLC.
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

default['duplicity']['gpg_passphrase']          = ""
default['duplicity']['aws_key_id']              = ""
default['duplicity']['aws_secret_access_key']   = ""
default['duplicity']['s3_bucket']               = ""
default['duplicity']['volsize']                 = "500"
default['duplicity']['full_if_older']           = "30D"
default['duplicity']['user']                    = "root"
default['duplicity']['cron']['enabled']         = false
default['duplicity']['cron']['minute']          = "0"
default['duplicity']['cron']['hour']            = "1"
default['duplicity']['cron']['day']             = "*"
default['duplicity']['cron']['month']           = "*"
default['duplicity']['cron']['weekday']         = "*"

tmp_dir = "/tmp"
if attribute?("ec2")
  tmp_dir = "/mnt/tmp"
end

default['duplicity']['tmp_dir'] = tmp_dir
default['duplicity']['archive_dir'] = "#{tmp_dir}/.duplicity-archive"
