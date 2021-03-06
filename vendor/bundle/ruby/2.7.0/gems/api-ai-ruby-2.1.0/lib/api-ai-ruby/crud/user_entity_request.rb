module ApiAiRuby
  class UserEntitiesRequest < ApiAiRuby::RequestQuery

    def initialize(client,  options = {})
      super client, options
      @headers['Content-Type'] = 'application/json; charset=UTF-8'
      @crud_base_uri = client.api_base_url +
        (options[:uri_path] ? options[:uri_path] : 'userEntities')
    end

    # @param argument [Array<ApiAiRuby::Entity, Hash>, ApiAiRuby::Entity, Hash]
    # @return [Hash]
    def create(argument)
      if !(argument && (argument.is_a?(Array) || argument.is_a?(Hash) || argument.is_a?(ApiAiRuby::Entity)))
        raise ApiAiRuby::ClientError.new('Argument should be array of Entities or single Entity object')
      end
      @uri = @crud_base_uri
      @request_method = :post

      old_options = nil

      begin
        if argument.is_a?(ApiAiRuby::Entity)
          old_options = @options
          @options = argument
        else
          @options[:entities] = argument.is_a?(Array) ? argument : [argument]
        end

        response = self.perform

        @options.delete(:entities) if @options.respond_to? :delete
      rescue
        @options = old_options || @options
      end
      response
    end

    def retrieve(name)
      raise ApiAiRuby::ClientError.new('Entity name required') if !name
      @request_method = :get
      @uri = @crud_base_uri + '/' + name
      self.perform
    end

    def update(name, entries, extend = false)

      raise ApiAiRuby::ClientError.new('Entity name required') if !name

      @options[:extend] = extend
      @options[:name] = name
      @options[:entries] = entries

      @request_method = :put
      @uri = @crud_base_uri + '/' + name
      response = self.perform
      @options.delete(:extend)
      @options.delete(:name)
      @options.delete(:entries)
      response
    end

    def update_entries(name, entries)

      raise ApiAiRuby::ClientError.new('Entity name required') if !name

      @options = entries

      @request_method = :put
      @uri = @crud_base_uri + '/' + name + '/entries'
      response = self.perform
      @options.delete(:extend)
      @options.delete(:name)
      @options.delete(:entries)
      response
    end

    def add_entries(name, entries)
      raise ApiAiRuby::ClientError.new('Entity name required') if !name

      @options = entries

      @request_method = :post
      @uri = @crud_base_uri + '/' + name + '/entries'
      response = self.perform
      @options.delete(:extend)
      @options.delete(:name)
      @options.delete(:entries)
      response
    end

    def delete(name)
      raise ApiAiRuby::ClientError.new('Entity name required') if !name
      @request_method = :delete
      @uri = @crud_base_uri + '/' + name
      self.perform
    end

  end
end
