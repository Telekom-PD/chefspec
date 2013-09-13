require 'chefspec'

describe 'portage_package::remove' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'removes a portage_package with an explicit action' do
    expect(chef_run).to remove_portage_package('explicit_action')
  end

  it 'removes a portage_package with attributes' do
    expect(chef_run).to remove_portage_package('with_attributes').with(version: '1.0.0')
  end

  it 'removes a portage_package when specifying the identity attribute' do
    expect(chef_run).to remove_portage_package('identity_attribute')
  end
end
