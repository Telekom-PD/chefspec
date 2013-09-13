require 'chefspec'

describe 'remote_directory::delete' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'deletes a remote_directory with an explicit action' do
    expect(chef_run).to delete_remote_directory('/tmp/explicit_action')
  end

  it 'deletes a remote_directory with attributes' do
    expect(chef_run).to delete_remote_directory('/tmp/with_attributes').with(owner: 'owner')
  end

  it 'deletes a remote_directory when specifying the identity attribute' do
    expect(chef_run).to delete_remote_directory('/tmp/identity_attribute')
  end
end
