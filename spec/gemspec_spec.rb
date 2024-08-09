require "open3"

RSpec.describe 'envied.gemspec' do
  let!(:build_gem) do
    build = Open3.capture3("gem build envied.gemspec")
    [:stdout, :stderr, :status].zip(build).to_h
  end

  after do
    Dir.glob("envied-*.gem").each { |f| File.delete(f) }
  end

  it 'builds without warnings' do
    expect(build_gem[:stderr]).to be_empty
  end

  it 'builds successfully' do
    expect(build_gem[:status]).to be_success
  end
end
