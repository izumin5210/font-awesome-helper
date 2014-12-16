require 'rails_helper'

describe FontAwesomeHelper::Helpers do
  let(:test_class) do
    ActionView::Base.tap { |base|
      base.send :include, FontAwesomeHelper::Helpers
    }.new
  end

  describe '#fa_icon' do
    context 'with "github" as an argument' do
      subject { test_class.fa_icon('github') }
      it { is_expected.to eq '<i class="fa fa-github"></i>' }
      it { is_expected.to be_html_safe }

      context 'with a text behind the icon' do
        subject do
          test_class.fa_icon('github') { |i| "#{i} izumin5210" }
        end
        it { is_expected.to eq '<i class="fa fa-github"></i> izumin5210' }
        it { is_expected.to be_html_safe }
      end

      context 'with a text beyond the icon' do
        subject do
          test_class.fa_icon('github') { |i| "izumin5210 #{i}" }
        end
        it { is_expected.to eq 'izumin5210 <i class="fa fa-github"></i>' }
        it { is_expected.to be_html_safe }
      end
    end

    context 'with "github 2x fw" as an argument' do
      subject { test_class.fa_icon('github 2x fw') }
      it { is_expected.to eq '<i class="fa fa-github fa-2x fa-fw"></i>' }
      it { is_expected.to be_html_safe }
    end

    context 'with "quote-left border" and { class: "pull-left" } option' do
      subject { test_class.fa_icon('quote-left border', class: 'pull-left') }
      it { is_expected.to eq '<i class="fa fa-quote-left fa-border pull-left"></i>' }
      it { is_expected.to be_html_safe }
    end
  end
end
