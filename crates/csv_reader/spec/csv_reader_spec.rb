require 'csv_reader'

describe 'CsvReader' do
  it 'returns integer' do
    filename = '/home/karuna/helix/tryhelix/tryhelix/tmp/some.csv'
    expect(CsvReader.count_id(filename).class).to eq(Integer)
  end
end
