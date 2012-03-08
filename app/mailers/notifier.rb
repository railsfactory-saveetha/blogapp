class Notifier < ActionMailer::Base
  default :from => "vgsaveetha@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.email_friend.subject
  #
  def email_friend(article, sender_name, receiver_email)
@article=article
@sender_name=sender_name
    @greeting = "Hi"
p 333333333333333333333333333333333333333333333333333333333
attachments["rails.png"] = File.read(Rails.root.join("public/images/rails.png"))
    mail :to => receiver_email , :subject => "Interesting article"
    p receiver_email
    p 44444444444444444444444444444444444444444444444444
  end
  
  def comment_added(comment)
    p 22222222222222222222222222222
@article = comment.article
p 1111111111111111
p @article.user.email
p 11111111111111111
mail :to => @article.user.email , :subject => "New comment for '#{@article.title}'"
p 333333333333333333333333333
end

def receive(email)
article = Article.new
article.title = email.subject
article.body = email.body
article.save
end


end
