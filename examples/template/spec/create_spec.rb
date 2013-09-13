require 'chefspec'

describe 'template::create' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates a template with the default action' do
    expect(chef_run).to create_template('/tmp/default_action')
  end

  it 'creates a template with an explicit action' do
    expect(chef_run).to create_template('/tmp/explicit_action')
  end

  it 'creates a template with attributes' do
    expect(chef_run).to create_template('/tmp/with_attributes').with(
      user:   'user',
      group:  'group',
      backup: false,
    )
  end

  it 'creates a template when specifying the identity attribute' do
    expect(chef_run).to create_template('/tmp/identity_attribute')
  end
end
