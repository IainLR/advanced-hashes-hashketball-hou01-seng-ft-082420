# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

#def player_helper
  #game_hash[:home][:players].merge(game_hash[:away][:players])
  
#end 
#binding.pry


def get_team_helper(team)
  case team
  when game_hash[:home][:team_name]
    game_hash[:home]
  when game_hash[:away][:team_name]
    game_hash[:away]
  end 
end 

def num_points_scored(player_name)
  game_hash.values.each do |team_name|
    team_name[:players].each do |name|
    return name[:points] if name.has_value?(player_name)
      #binding.pry
   end 
  end 
end

def shoe_size(player_name)
  game_hash.values.each do |team_name|
    team_name[:players].each do |name|
      return name[:shoe] if name.has_value?(player_name)
    end 
  end 
end 

def team_colors(team_name)
  get_team_helper(team_name)[:colors]{ |color| color[:colors]}
end 

def team_names
  array = []
  array.push(game_hash[:home][:team_name])
  array.push(game_hash[:away][:team_name])
  array
end

def player_numbers(team_name)
  get_team_helper(team_name)[:players].map do |player|
    player[:number]
  end
end 
#binding.pry

def player_stats(player_name)
  game_hash.values.each do |team|
    team[:players].each do |player|
      if player.has_value?(player_name)
        return player
      end 
    end 
  end 
end 
#binding.pry

def big_shoe_rebounds 
  big_ol_foot = 0
  rebounds = 0 
  game_hash.values.each do |team| 
    team[:players].each do |tall_person|
      if tall_person[:shoe] > big_ol_foot 
        big_ol_foot = tall_person[:shoe]
        rebounds = tall_person[:rebounds]
      end 
    end 
    return rebounds
  end 
end 