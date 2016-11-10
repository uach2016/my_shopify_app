@analitics = Analytics = Segment::Analytics.new({
    write_key: '#{customer.id}',
    on_error: Proc.new { |status, msg| print msg }
})