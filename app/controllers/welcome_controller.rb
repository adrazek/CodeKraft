class WelcomeController < ApplicationController
  def index

    @technos = [
      {
        type: "Langages", 
        values: ["css3", "html5", "ruby", "php", "python", "javascript", "jquery", "react"]
      },
      {
        type: "Frameworks",
        values: ["rails", "nodejs", "symfony", "zend"]
      },
      {
        type: "Bases de données",
        values: ["mysql", "mongodb", "postgresql", "neo4j"],
      },
      {
        type: "Système", 
        values: ["linux", "apache", "nginx"]
      },
      {
        type: "Outils",
        values: ["github", "trello", "bitbucket"],
      },
    ]
  end
end
