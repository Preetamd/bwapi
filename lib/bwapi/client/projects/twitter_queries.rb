# encoding: utf-8

module BWAPI
  class Client
    module Projects
      # TwitterQueries module for projects/twitterqueries endpoints
      module TwitterQueries
        # Get all twitter queries in a project
        #
        # @param project_id [Integer] Id of project
        # @return [Hashie::Mash] All twitter queries in project
        def twitter_queries(project_id)
          get "projects/#{project_id}/twitterqueries"
        end

        # Get a specific twitter query in a project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of twitter query
        # @return [Hashie::Mash] Specific twitter query
        def get_twitter_query(project_id, query_id)
          get "projects/#{project_id}/twitterqueries/#{query_id}"
        end

        # Create a twitter query in a project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [String] name Name of the query
        # @option opts [Boolean] authorised Is query authorised
        # @option opts [Integer] averageMonthlyMentions Average monthly mentions
        # @option opts [Array] contextTerms Content terms of the query
        # @option opts [Array] excludedTerms Excluded terms of thequery
        # @option opts [Array] includedTerms Included terms of terms query
        # @option opts [Date] creationDate Date the query was created on
        # @option opts [Integer] dailyLimit Daily limit of the query
        # @option opts [Boolean] facebookCrawlComplete Facebook initial crawling status
        # @option opts [Integer] facebookPageId Id of the facebook page
        # @option opts [String] facebookPageName Name of the facebook page
        # @option opts [Boolean] failed Triggered too many Facebook API request failures
        # @option opts [String] industry Industry of the query
        # @option opts [Array] languages Query languages set
        # @option opts [Date] lastModificationDate Last modification date of the query
        # @option opts [String] type Query type
        # @option opts [String] twitterLimit Twitter limit
        # @option opts [String] twitterScreenName Twitter screen name
        # @return [Hashie::Mash] New twitter query
        def create_twitter_query(project_id, opts = {})
          post "projects/#{project_id}/twitterqueries", opts
        end

        # Update an existing twitter query in a project
        #
        # @param project_id [Integer] Id of project
        # @param query_id [Integer] Id of query
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] id Id of the query
        # @option opts [String] name Name of the query
        # @option opts [Boolean] authorised Is query authorised
        # @option opts [Integer] averageMonthlyMentions Average monthly mentions
        # @option opts [Array] contextTerms Content terms of the query
        # @option opts [Array] excludedTerms Excluded terms of thequery
        # @option opts [Array] includedTerms Included terms of terms query
        # @option opts [Date] creationDate Date the query was created on
        # @option opts [Integer] dailyLimit Daily limit of the query
        # @option opts [Boolean] facebookCrawlComplete Facebook initial crawling status
        # @option opts [Integer] facebookPageId Id of the facebook page
        # @option opts [String] facebookPageName Name of the facebook page
        # @option opts [Boolean] failed Triggered too many Facebook API request failures
        # @option opts [String] industry Industry of the query
        # @option opts [Array] languages Query languages set
        # @option opts [Date] lastModificationDate Last modification date of the query
        # @option opts [String] type Query type
        # @option opts [String] twitterLimit Twitter limit
        # @option opts [String] twitterScreenName Twitter screen name
        # @return [Hashie::Mash] Updated twitter query
        def update_twitter_query(project_id, query_id, opts = {})
          put "projects/#{project_id}/twitterqueries/#{query_id}", opts
        end
      end
    end
  end
end
