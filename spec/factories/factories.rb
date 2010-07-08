Factory.define :valid_post, :class => Post do |f|
  f.title "One neat post"
  f.preamble "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  f.body "Extremly well written content with twists that will blow your mind."
  f.published_at Time.now
end