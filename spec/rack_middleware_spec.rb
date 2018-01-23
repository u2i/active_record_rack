require 'spec_helper'

RSpec.describe ActiveRecordRack::RackMiddleware do
  describe '#call' do
    let(:app) { double('Rack application') }
    let(:env) { double('Rack request environment') }

    let(:database_file) { 'test_database.sqlite3' }

    before do
      ActiveRecord::Base.establish_connection(
        adapter: 'sqlite3',
        database: database_file
      )
    end

    after { File.unlink(database_file) }

    subject { described_class.new(app).call(env) }

    it 'executes application interface' do
      expect(app).to receive(:call).with(env)

      subject
    end

    it 'returns response received from the application' do
      app_response = ['200', { 'Content-Type' => 'text/html' }, ['<html><body>Response</body></html>']]

      allow(app).to receive(:call).with(env).and_return(app_response)

      expect(subject).to eq(app_response)
    end
  end
end
