class CommentService 

    def create_comment(params)
        if params[:val1]
            trait1 = params[:p]
            trait2 = params[:p2]
            trait3 = params[:p3]
            trait4 = params[:p4]
            trait5 = params[:p5]
            personality = Personality.find_or_create_by(dater_id: params[:dater_id],
             backer_id: params[:backer_id])
             personality.update!(
                "#{trait1}": params[:val1], 
                "#{trait2}": params[:p2_value],
                "#{trait3}": params[:p3_value],
                "#{trait4}": params[:p4_value],
                "#{trait5}": params[:p5_value]
             )
        elsif params[:val2]
            trait6 = params[:p_6]
            trait7 = params[:p7]
            trait8 = params[:p8]
            trait9 = params[:p9]
            trait10 = params[:p10]
            person  = Personality.find_by(dater_id: params[:dater_id], backer_id:params[:backer_id])
            person.update!(
                "#{trait6}": params[:val2], 
                "#{trait7}": params[:p7_value],
                "#{trait8}": params[:p8_value],
                "#{trait9}": params[:p9_value],
                "#{trait10}": params[:p10_value]
            )
        elsif params[:val3]
            trait11 = params[:p_11]
            trait12 = params[:p12]
            trait13 = params[:p13]
            trait14 = params[:p14]
            trait15 = params[:p15]
            person  = Personality.find_by(dater_id: params[:dater_id], backer_id:params[:backer_id])
            person.update!(
                "#{trait11}": params[:val3], 
                "#{trait12}": params[:p12_value],
                "#{trait13}": params[:p13_value],
                "#{trait14}": params[:p14_value],
                "#{trait15}": params[:p15_value]
            )
         else
            comment = Comment.create!(dater_id:params[:dater_id], backer_id:params[:dater_id], comment:params[:ans],question_id: params[:q])
         end
    end
end