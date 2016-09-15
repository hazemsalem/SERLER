class EvidenceSourcesController < ApplicationController
    
    def index
        puts "This is index."
        @evidence_sources = EvidenceSource.all
    end
    
    def new
        # @evidence_source = EvidenceSource
    end
    
    def create
        puts "this is EvidenceSourcesController::create"

        authors = params.require(:evidence_source)[:author]
        page_str = params.require(:evidence_source)[:page]
        
        @evidence_source = EvidenceSource.new(evidence_source_params)
        @evidence_source.state = 'NEW'
        @evidence_source.committer = -1
        @evidence_source.page_str = page_str
        
        unless page_str.nil?
            (b, c) = page_str.split('-')
            begin
                @evidence_source.page_begin = Integer(b)
                @evidence_source.page_cease = Integer(c)
            rescue
                puts "Exception while " + page_str
            ensure
            end
        end
        
        puts '*************'
        puts authors
        puts page_str
        puts @evidence_source

        puts '$$$$$$$$$$$$$$$$$$$$'
        
        puts 'ID: ' + @evidence_source.id.to_s
        @evidence_source.save
        puts 'ID: ' + @evidence_source.id.to_s
        
        author = @evidence_source.evidence_source_authors.create
        author.name = 'Junshu Wang'
        author.name_abbr = 'J. Wang'
        author.save
        
        author = @evidence_source.evidence_source_authors.create
        author.name = 'Lina Meng'
        author.name_abbr = 'L. Meng'
        author.save

        redirect_to evidence_sources_path
        
    end
    
    def show
        puts "this is show"
        puts params[:id]
    end
    
    private def evidence_source_params
        params.require(:evidence_source).permit(
            :category, :title, :year, :source_title,
            :publisher, :volume_number, :issue_number, :URL, :DOI)
    end
end
