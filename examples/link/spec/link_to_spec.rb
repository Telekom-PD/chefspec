require 'chefspec'

describe 'link::link_to' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates a link to the specified target' do
    link = chef_run.link('/tmp/path')
    expect(link).to link_to('destination')
  end
end
