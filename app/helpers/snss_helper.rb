module SnssHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'confirm'
            confirm_snss_index_path
        elsif action_name == 'edit'
            snss_path
        end
    end
end
