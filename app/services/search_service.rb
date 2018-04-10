class SearchService 
    attr_reader :search 

    def initialize 
        @trait = ["political_leaning", "politicalness", "body_type",'orientation','gender','religion','religiosity','alcohol','smoker','has_pets','wants_kids','has_kids']
    end

    def search(params, current_user)  
        daters = {}
        params.reject!{|key,value|  value == "0"}
        params = params.select{|key,value| @trait.include?(key)  }
        if !params.empty?
            params.to_h.each_with_index do |(key,value), index| 
                daters[key] = Dater.joins(:trait).where("#{key} = #{value}").pluck(:id)
            end
            check_match(daters,current_user)
        else 
            return Dater.where.not(id: current_user.id)
        end
    end

    def check_match(dater, current_user)
       daters = dater.values.flatten
       date = daters.each_with_object(Hash.new(0)) {|e, h| h[e] += 1}
       dater_select =  date.select{|k,v| k if v == dater.keys.count }
        if dater_select
            dater_select.map do |dater|
                Dater.where.not(id:current_user.id).find_by(id: dater)
            end
        else 
            return []
        end
    end
end