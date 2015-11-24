class Sauce < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image#, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	   scope :vegan_user, lambda { |user|
    	where(:vegan => user.vegan) unless user.vegan == false
  	}

  	scope :gluten_user, lambda { |user|
    	where(:no_gluten => user.no_gluten) unless user.no_gluten == false
  	}

  	scope :alcohol_user, lambda { |user|
    	where(:no_alcohol => user.no_alcohol) unless user.no_alcohol == false
  	}

    scope :mild, lambda { |user|
      where(:mild => user.mild) 
    }

    scope :medium, lambda { |user|
      where(:medium => user.medium)
    }        

    scope :hot, lambda { |user|
      where(:hot => user.hot) 
    }

    scope :hotter, lambda { |user|
      where(:hotter => user.hotter) 
    }

    scope :hottest, lambda { |user|
      where(:hottest => user.hottest) 
    }

    scope :superhot, lambda { |user|
      where(:superhot => user.superhot) 
    }
end
