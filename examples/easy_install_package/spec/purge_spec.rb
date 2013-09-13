require 'chefspec'

describe 'easy_install_package::purge' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'purges a easy_install_package with an explicit action' do
    expect(chef_run).to purge_easy_install_package('explicit_action')
  end

  it 'purges a easy_install_package with attributes' do
    expect(chef_run).to purge_easy_install_package('with_attributes').with(version: '1.0.0')
  end

  it 'purges a easy_install_package when specifying the identity attribute' do
    expect(chef_run).to purge_easy_install_package('identity_attribute')
  end
end
