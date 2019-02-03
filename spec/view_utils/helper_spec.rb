
RSpec.describe ViewUtils::Helper do
  it 'builds the util' do
    view_klass = Class.new do
      include ViewUtils::Helper
    end

    view = view_klass.new
    application_util = view.util(:application)

    expect(application_util).to be_a(ApplicationUtil)
    expect(application_util.view).to be(view)
  end
end

