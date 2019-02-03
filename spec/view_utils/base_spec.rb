
RSpec.describe ViewUtils::Base do
  it 'can be build' do
    expect { ViewUtils::Base.new('view') }.not_to raise_exception
  end

  it 'includes the helper' do
    base_util = ViewUtils::Base.new('view')
    application_util = base_util.util(:application)

    expect(application_util).to be_a(ApplicationUtil)
    expect(application_util.view).to eq('view')
  end
end

