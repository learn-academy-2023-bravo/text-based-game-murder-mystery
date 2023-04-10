# Text-based Game Challenge

$has_knife = false

# living_room object
def living_room
    user_choice = ''
    p 'You are in the living room, what do you do now?'
    user_choice = gets.chomp
    if user_choice == 'walk north'
        bed_room()
    elsif user_choice == 'walk east'
        kitchen_room
    elsif user_choice == 'walk south'
        upstairs_room
    elsif user_choice == 'walk west'
        user_exit
    elsif user_choice == 'examine room'
        p 'The living room seems to be in disarray. There is a shattered vase on the ground, a fireplace on the north wall, a knocked over coffee table, and a laptop sitting open on the couch. You see a kitchen to the east, a bedroom to the north, stairs to the south, and the exit to the west.'
        living_room()
    elsif user_choice == 'examine vase'
        # Describe Vase
        p 'vase'
        living_room()
    elsif user_choice == 'examine laptop'
        # Describe laptop
        p 'laptop'
        living_room()
    elsif user_choice == 'examine fireplace'
        # Describe fireplace
        p 'fireplace'
        living_room()
    elsif user_choice == 'examine coffee table' or user_choice == 'examine table'
        # Describe table
        p 'table'
        living_room()
    elsif user_choice == 'help'
        # Describe commands
        p 'Available verbs are: walk, examine, take, open.'
        living_room()
    elsif user_choice == 'EXIT'
        abort
    else
        p 'That is not a recognized verb, try again'
        living_room()
    end
end

def bed_room
    user_choice = ''
    p 'You are in the downstairs bedroom, what do you do now?'
    user_choice = gets.chomp
    if user_choice == 'walk south'
        living_room()
    elsif user_choice == 'examine room'
        p 'Upon entering the bedroom, you see a bed with messed up sheets, an open window looking out to the street, and a dresser on the wall (closed). The living room is to the south.'
        bed_room()
    elsif user_choice == 'examine bed'
        # Describe Vase
        p 'bed'
        bed_room()
    elsif user_choice == 'examine window'
        # Describe laptop
        p 'laptop'
        bed_room()
    elsif user_choice == 'open dresser'
        # Describe fireplace
        p 'fireplace'
        bed_room()
    elsif user_choice == 'help'
        # Describe commands
        p 'Available verbs are: walk, examine, take, open.'
        bed_room()
    elsif user_choice == 'EXIT'
        abort
    else
        p 'That is not a recognized verb, try again'
        bed_room()
    end
end

def kitchen_room
    user_choice = ''
    p 'You are in the kitchen, what do you do now?'
    user_choice = gets.chomp
    if user_choice == 'walk west'
        living_room()
    elsif user_choice == 'examine room'
        p 'You walk into the kitchen and you see a fridge (closed), pantries (closed), a countertop, and a note on the table.'
        kitchen_room()
    elsif user_choice == 'open fridge'
        # Describe fridge
        p 'bed'
        kitchen_room()
    elsif user_choice == 'open pantries'
        # Describe laptop
        p 'fridge'
        kitchen_room()
    elsif user_choice == 'examine note'
        # Describe note
        p 'note'
        kitchen_room()
    elsif user_choice == 'examine countertop'
        # Describe counter
        p 'counter'
        kitchen_room()
    elsif user_choice == 'take knife'
        if $has_knife == true
            p 'You already have a knife'
        else
            p 'You grabbed the knife to hold on to.'
            $has_knife = true
        end
        kitchen_room()
    elsif user_choice == 'help'
        # Describe commands
        p 'Available verbs are: walk, examine, take, open.'
        kitchen_room()
    elsif user_choice == 'EXIT'
        abort
    else
        p 'That is not a recognized verb, try again'
        kitchen_room()
    end
end

def upstairs_room
    user_choice = ''
    p 'You are in the upstairs bedroom, what do you do now?'
    user_choice = gets.chomp
    if user_choice == 'walk north'
        living_room()
    elsif user_choice == 'examine room'
        p 'In the upstairs bedroom, you see a tidy bed, a suitcase, and a closet(closed). The air is still and you get an ominous feeling.'
        upstairs_room()
    elsif user_choice == 'examine bed'
        # Describe fridge
        p 'bed'
        upstairs_room()
    elsif user_choice == 'examine suitcase'
        # Describe suitcase
        p 'suitcase'
        upstairs_room()
    elsif user_choice == 'open closet'
        # Describe closet
        p 'closet'
        upstairs_room()
    elsif user_choice == 'help'
        # Describe commands
        p 'Available verbs are: walk, examine, take, open.'
        upstairs_room()
    elsif user_choice == 'EXIT'
        abort
    else
        p 'That is not a recognized verb, try again'
        upstairs_room()
    end
end

p 'What is your name?'
user_name = gets.chomp

p "Welcome, #{user_name}. You have been invited to a party at your friend Elon's house. Along with you, Elon invited a bunch of other friends, none of which you have ever met. Upon arrived to Elon's home, you notice that the front door is ajar with no noise coming from inside. Upon entering you are met with a strange scene. The living room seems to be in disarray. There is a shattered vase on the ground, a fireplace on the north wall, a knocked over coffee table, and a laptop sitting open on the couch. You see a kitchen to the east, a bedroom to the north, stairs to the south, and the exit to the west."

p "You can type these commands: walk, examine, take, open, and help to get this list again. Use examine room to get a description."

living_room()