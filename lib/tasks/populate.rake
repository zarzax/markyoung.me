namespace :db do
  desc "Erase and Populate Database"
  task :populate => :environment do

    [Project].each(&:delete_all)
    
    ##
    # t.string   "title"
    # t.text     "teaser"
    # t.text     "body"
    # t.string   "icon_url"
    # t.string   "source_url"
    # t.boolean  "is_featured"
    # t.string   "permalink"
    
    Project.create(
      :title => "MarkYoung.me Portfolio Site",
      :teaser =>
        %{
          My portfolio site written in Ruby on RAILS, MySQL, jQuery, CSS to showcases my personal and commercial work.
        },
      :body =>
        %{
          <p>My personal portfolio is an ongoing project to showcase examples of my work.  It is written in Ruby on Rails, jQuery, haml and utilizing Blueprint CSS through the Compass CSS framework.</p>
        },
      :tag_list => "Personal, CMS, Open Source",
      :language_list => "RAILS, MySQL, jQuery, HAML, CSS, XHTML",
      :icon_url => "/images/default.jpg",
      :source_url => "http://www.markyoung.me",
      :is_featured => true
    )
    
    Project.create(
      :title => "Nagios Community Blog and Wiki",
      :teaser =>
        %{
          Conceptualized and created the first official community site for 
          the Nagios worldwide user and developer community with Nagios founder. 
        },
      :body =>
        %{
          <p>
          This was a project that was molded over a time while I was working
          for Nagios Enterprises, LLC and Ayamon, LLC.  The idea was to bring
          the community together in one place and share the collective 
          enthusiasm and talent.  This was a combination blog and wiki.  
          The software used was Wordpress for the blog and Mediawiki for the
          wiki software.  Custom themes were developed for both sites.  Graphics
          and color schemes tied the community sites with the general nagios 
          project.
          </p>
          <p>
          community.nagios.org and wiki.nagios.org have since been redesigned 
          again as part of a larger rebranding of all nagios websites.
          </p>
        },
      :tag_list => "Wordpress, Mediawiki, Graphic Design, CMS",
      :language_list => "PHP, jQuery, CSS, XHTML",
      :icon_url => "/images/default.jpg",
      :source_url => "http://community.nagios.org",
      :is_featured => true
    )
    
    Project.create(
      :title => "Nagios Web Branding",
      :teaser =>
        %{
          Conceptualized the redesign of over 8 Nagios web properties in a way to 
          emphasize their relationships with each other.  Relationships were
          established with graphical elements and colors.  Consistancy was 
          maintained through multiple software systems.
        },
      :body =>
        %{
          <p>
          The last design update for the Nagios project had been in 2003 and had
          changed little.  It was time to bring consistency and usability to 
          the forefront.  Using my experience in usability research and 
          web standards I was able to sketch designs that I later turned to 
          photoshop templates.
          </p>
          <p>
          Relationships were established with graphical elements and colors.  
          Consistancy in style was maintained through all sites, software, 
          and CMS
          </p>
        },
      :tag_list => "Commercial, Photoshop, Wordpress, Mediawiki, Joomla, Drupal, CMS",
      :language_list => "PHP, CSS, XHTML",
      :icon_url => "/images/default.jpg",
      :source_url => "http://www.nagios.org"
    )

    Project.create(
      :title => "UMN Class Registration System",
      :teaser =>
        %{
          This was a graduate school research project on human computer interaction and
          usability.  The UMN class registration system is an example of bad design.  I
          studied using user visits and paper prototyping before prototyping a new single
          page replacement.
        },
      :body =>
        %{
          <p>
          The University of Minnesota"s class search and registration system
          is both confusing and time consuming.  The simple process of finding
          one class goes through 3 separate search pages and 1 registration page
          as well as pen and paper to figure out if class times are overlapping.
          As a group project we paper prototyped, user interviewed and tested
          the problem, developed a clean one-window solution, and completed
          a process of implementations and user testings.  The result was a
          simple one-page web solution to search classes and drill down and
          print the schedule.
          </p>
        },
      :tag_list => "Application, Class Project, Usability",
      :language_list => "PHP, Javascript, XHTML, UML",
      :icon_url => "/images/default.jpg",
      :source_url => "http://github.com/zarzax/umn-classfinder/tree/master",
      :is_featured => true
    )
        
    Project.create(
      :title => "Dolor Accounting Software",
      :teaser =>
        %{
          Dolor (spanish for dollar) was my undergraduate senior project.  
          It is a object orientated accounting program accepting many 
          books of accounts, accounts, and transactions as well as basic
          trending.  First implemented in C++ with CLI, I have since 
          replicated the project in many different languages as a way
          to learn new languages.
        },
      :body =>
        %{
          <p>
          This is a multi-ledger accounting software which at its base
          runs on linux and has a console user interface.  This was 
          extended during the class to use CGI interface and to have 
          an custom XML data backend.
          </p>
          <p>
          The implementation I have on GitHub is from about 50% project
          completion.  I have lost the original SVN repository that had
          my completed Project.
          </p>
        },
      :icon_url => "/images/default.jpg",
      :tag_list => "Application, Personal, Class Project, Unix",
      :language_list => "C/C++, RAILS, Ruby, XHTML, CSS",
      :source_url => "http://github.com/zarzax/dolor-original"
    )
    
    Project.create(
      :title => "File Transfer server and client in TCP and UDP",
      :teaser =>
        %{
          This was a graduate research project in TCP networking. I
          implemented a forking TCP client/server program that 
          transfers a file using a custom protocol over UDP and
          implements a Sliding Window Protocol size of 1.
        },
      :body =>
        %{
          <p>
          This was an accelerated summer class in low level networking.
          </p>
        },
      :icon_url => "/images/default.jpg",
      :tag_list => "Application, Class Project, Unix",
      :language_list => "C/C++, TCP/IP",
      :source_url => "http://github.com/zarzax/tcp-udp-ftp"
    )
  
  end
end