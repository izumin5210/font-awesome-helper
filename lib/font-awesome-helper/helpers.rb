module FontAwesomeHelper
  module Helpers
    FA_CLASS_PREFIX = 'fa'

    # TODO: fw (e.g. `fa_icon 'github', fixed: true`)
    # TODO: border (e.g. `fa_icon 'github', border: true`)
    # TODO: spin (e.g. `fa_icon 'github', spin: true`)
    # TODO: size (e.g. `fa_icon 'github', size: '2x'`)
    # TODO: rotate (e.g. `fa_icon 'github', rotate: 90`)
    # TODO: flip (e.g. `fa_icon 'github', flip: :vertical`)
    def fa_icon(names, options = {})
      icon = FaIcon.new(names, options)
      (block_given? ? yield(icon.to_tag) : icon.to_tag).html_safe
    end

    # TODO: stackしやすいやつ
    # TODO: fa-ul，fa-liのやつ
  end
end
