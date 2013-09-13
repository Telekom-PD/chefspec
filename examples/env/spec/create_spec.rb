require 'chefspec'

describe 'env::create' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates a env with the default action' do
    expect(chef_run).to create_env('default_action')
  end

  it 'creates a env with an explicit action' do
    expect(chef_run).to create_env('explicit_action')
  end

  it 'creates a env with attributes' do
    expect(chef_run).to create_env('with_attributes').with(value: 'value')
  end

  it 'creates a env when specifying the identity attribute' do
    expect(chef_run).to create_env('identity_attribute')
  end
end
