require 'spec_helper'

describe "learning::install" do
  let(:node) { 'test.example.com' }

  let(:facts) { {
    :path                      => '/tmp',
    :pe_compile_master         => 'false',
    :pe_build                  => '2016.2',
    :aio_agent_version         => '4.5.2',
    :os                        => {
      :family => 'RedHat',
      :release => {
        :major => '7',
        :minor => '2',
      }
    },
    :osfamily                  => 'RedHat',
    :operatingsystem           => 'CentOS',
    :operatingsystemrelease    => '7.2.1511',
    :operatingsystemmajrelease => '7',
    :kernel                    => 'Linux',
    :kernelversion             => '3.10.0',
  } }

  let(:pre_condition) do
    <<-EOF
      include pe_repo
      include epel
    EOF
  end

  it { is_expected.to compile }

end
