class CommentObserver < ActiveRecord::Observer
	def after_create(comment)
		puts "66666666666666666666666666666666666666666666666666666"
		Notifier.delay.comment_added(comment)
	end
end
