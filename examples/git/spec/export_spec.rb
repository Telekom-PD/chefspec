require 'chefspec'

describe 'git::export' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'exports a git with an explicit action' do
    expect(chef_run).to export_git('/tmp/explicit_action')
  end

  it 'exports a git with attributes' do
    expect(chef_run).to export_git('/tmp/with_attributes').with(repository: 'ssh://git.path')
  end

  it 'exports a git when specifying the identity attribute' do
    expect(chef_run).to export_git('/tmp/identity_attribute')
  end
end
