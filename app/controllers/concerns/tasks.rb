module Tasks
  extend ActiveSupport::Concern

  def display_tasks task_type
    case task_type
      when 'mine-open'
        return Task.paginate(:page => params[:tasks_page], :per_page => 10).find_by_owner_user_open pets_user
    end
  end
end