module AdminHelper
    def is_admin?
        return User.find(current_user.id).is_admin
    end
end
