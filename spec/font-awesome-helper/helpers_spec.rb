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

  describe '#fa_ul' do
    context 'with no options' do
      subject { test_class.fa_ul { 'awesome!' } }
      it { is_expected.to eq '<ul class="fa-ul">awesome!</ul>' }
      it { is_expected.to be_html_safe }
    end

    context 'with "awesome-list" class' do
      subject { test_class.fa_ul(class: 'awesome-list') { 'awesome!' } }
      it { is_expected.to eq '<ul class="fa-ul awesome-list">awesome!</ul>' }
      it { is_expected.to be_html_safe }
    end
  end

  describe '#fa_li' do
    context 'with "github" as an argument and a text as a block' do
      subject { test_class.fa_li('github') { 'izumin5210' } }
      it { is_expected.to eq '<li><i class="fa fa-github fa-li"></i>izumin5210</li>' }
      it { is_expected.to be_html_safe }
    end

    context 'with "spinner spin" as an argument and a text as a block' do
      subject { test_class.fa_li('spinner spin') { 'loading...' } }
      it { is_expected.to eq '<li><i class="fa fa-spinner fa-spin fa-li"></i>loading...</li>' }
      it { is_expected.to be_html_safe }
    end
  end
end
