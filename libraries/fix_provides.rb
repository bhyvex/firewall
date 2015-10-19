# This is a custom helper funtion to add the `provides` function
# to Provider and Resource classes for Chef 11 clients.

unless Chef::Provider.respond_to?(:provides)
  class Chef
    class Provider
      def self.provides(*)
        # Do nothing...
      end
    end
  end
end
