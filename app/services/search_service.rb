class SearchService 
    attr_reader :search 

    def initialize 
        @trait = ["political_leaning", "politicalness"]
    end

    def search(params, current_user)  
        daters = {}
        params.reject!{|key,value|  value == "0"}
        params = params.select{|key,value| @trait.include?(key)  }
        if !params.empty?
            params.to_h.each_with_index{|(key,value), index| daters[index+1] = Dater.joins(:trait).where("#{key} = #{value}").pluck(:l_name) }
            check_match(daters)
        else 
            return Dater.where.not(id: current_user.id)
        end
    end

    def check_match(dater)
       daters = dater.values.flatten
       date = daters.each_with_object(Hash.new(0)) {|e, h| h[e] += 1}
       dater_select =  date.select{|k,v| k if v == dater.keys.count }
        if dater_select
        daters.map do |dater|
            Dater.find_by(l_name: dater)
        end
    else 
        return []
    end
    end
end