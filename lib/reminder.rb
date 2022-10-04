class Reminder
    def initialize(name)
        @name = name
    end

    def remind_me_to(task)
        @task = task
    end

    def remind()
        # We want to fail if there is no reminder yet.
        # .nil? will return true if no task has been set
        fail "No reminder set!" if @task.nil?
        return "#{@task}, #{@name}!"
    end

end

