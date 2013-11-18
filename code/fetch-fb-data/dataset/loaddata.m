


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=10">
        <title>Project-Info-Spreading-priv/dataset/loaddata.m at master · zoechip/Project-Info-Spreading-priv</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe119-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (0e75de19f8) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="8184D310:071D:7078C8A:528A0FED" name="octolytics-dimension-request_id" /><meta content="5588551" name="octolytics-actor-id" /><meta content="zoechip" name="octolytics-actor-login" /><meta content="837cfb33d85e02d511d56411eba819cc54d7d28994a2f92895d4558bc13c28bf" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="Ww0uixnTjUfeyqKDWsMWjLOV6bhdgzZh/y0m7HNW3cY=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-09acd31812af6ce17b5f432a7597c5849393330e.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-5b4d8641506c5981c2f001f2dffc0306b44491c2.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-bca527bb59d94c16d6bf2a759779d7953fa41e76.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-24f11604091c33b9686ff315cd7d46a5aa9712a7.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="d73cf633e128aec1e0702abcc0e1de33">

        <link data-pjax-transient rel='permalink' href='/zoechip/Project-Info-Spreading-priv/blob/c06f70b0703a225aedaafb48af7ca224fb08b9d2/dataset/loaddata.m'>
  <meta property="og:title" content="Project-Info-Spreading-priv"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/zoechip/Project-Info-Spreading-priv"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="Contribute to Project-Info-Spreading-priv development by creating an account on GitHub."/>

  <meta name="description" content="Contribute to Project-Info-Spreading-priv development by creating an account on GitHub." />

  <meta content="5588551" name="octolytics-dimension-user_id" /><meta content="zoechip" name="octolytics-dimension-user_login" /><meta content="13756487" name="octolytics-dimension-repository_id" /><meta content="zoechip/Project-Info-Spreading-priv" name="octolytics-dimension-repository_nwo" /><meta content="false" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="13756487" name="octolytics-dimension-repository_network_root_id" /><meta content="zoechip/Project-Info-Spreading-priv" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/zoechip/Project-Info-Spreading-priv/commits/master.atom?login=zoechip&token=a6d618efa46bbd4d36bbff075b0d3eb7" rel="alternate" title="Recent Commits to Project-Info-Spreading-priv:master" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production macintosh vis-private  page-blob">
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    
    <a href="/notifications" class="notification-indicator tooltipped downwards" data-gotokey="n" title="You have no unread notifications">
        <span class="mail-status all-read"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="zoechip"
      data-repo="zoechip/Project-Info-Spreading-priv"
      data-branch="master"
      data-sha="f8aa797b14d854177ca74259f9fa388628e98e5d"
  >

    <input type="hidden" name="nwo" value="zoechip/Project-Info-Spreading-priv" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/zoechip" class="name">
        <img height="20" src="https://2.gravatar.com/avatar/c4da586c736cb501ee3dded964471b8a?d=https%3A%2F%2Fidenticons.github.com%2Fe871d6b81f6c3827257660a858c32986.png&amp;r=x&amp;s=140" width="20" /> zoechip
      </a>
    </li>

      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo" aria-label="Create a new repo">
          <span class="octicon octicon-repo-create"></span>
        </a>
      </li>

      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          aria-label="Account settings "
          title="Account settings ">
          <span class="octicon octicon-tools"></span>
        </a>
      </li>
      <li>
        <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
          <span class="octicon octicon-log-out"></span>
        </a>
      </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>



    <li class="section-title">
      <span title="zoechip/Project-Info-Spreading-priv">This repository</span>
    </li>
      <li>
        <a href="/zoechip/Project-Info-Spreading-priv/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
      <li>
        <a href="/zoechip/Project-Info-Spreading-priv/settings/collaboration"><span class="octicon octicon-person-add"></span> New collaborator</a>
      </li>
</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="Ww0uixnTjUfeyqKDWsMWjLOV6bhdgzZh/y0m7HNW3cY=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="13756487" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/zoechip/Project-Info-Spreading-priv/watchers">
        3
      </a>
      <span class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0">
        <span class="js-select-button">
          <span class="octicon octicon-eye-unwatch"></span>
          Unwatch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for discussions in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  

  <div class="js-toggler-container js-social-container starring-container ">
    <a href="/zoechip/Project-Info-Spreading-priv/unstar"
      class="minibutton with-count js-toggler-target star-button starred upwards"
      title="Unstar this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
    </a>

    <a href="/zoechip/Project-Info-Spreading-priv/star"
      class="minibutton with-count js-toggler-target star-button unstarred upwards"
      title="Star this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star"></span><span class="text">Star</span>
    </a>

      <a class="social-count js-social-count" href="/zoechip/Project-Info-Spreading-priv/stargazers">
        0
      </a>
  </div>

  </li>


        <li>
          <a href="/zoechip/Project-Info-Spreading-priv/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/zoechip/Project-Info-Spreading-priv/network" class="social-count">0</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title private">
          <span class="repo-label"><span>private</span></span>
          <span class="mega-octicon octicon-lock"></span>
          <span class="author">
            <a href="/zoechip" class="url fn" itemprop="url" rel="author"><span itemprop="title">zoechip</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/zoechip/Project-Info-Spreading-priv" class="js-current-repository js-repo-home-link">Project-Info-Spreading-priv</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container ">

        <div class="repository-sidebar">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" title="Code">
        <a href="/zoechip/Project-Info-Spreading-priv" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /zoechip/Project-Info-Spreading-priv">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/zoechip/Project-Info-Spreading-priv/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /zoechip/Project-Info-Spreading-priv/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/zoechip/Project-Info-Spreading-priv/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /zoechip/Project-Info-Spreading-priv/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/zoechip/Project-Info-Spreading-priv/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_wiki /zoechip/Project-Info-Spreading-priv/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/zoechip/Project-Info-Spreading-priv/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /zoechip/Project-Info-Spreading-priv/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/zoechip/Project-Info-Spreading-priv/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /zoechip/Project-Info-Spreading-priv/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/zoechip/Project-Info-Spreading-priv/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /zoechip/Project-Info-Spreading-priv/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


      <div class="sunken-menu-separator"></div>
      <ul class="sunken-menu-group">
        <li class="tooltipped leftwards" title="Settings">
          <a href="/zoechip/Project-Info-Spreading-priv/settings"
            class="sunken-menu-item" data-pjax aria-label="Settings">
            <span class="octicon octicon-tools"></span> <span class="full-word">Settings</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </a>
        </li>
      </ul>
  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url "
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=push">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/zoechip/Project-Info-Spreading-priv.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/zoechip/Project-Info-Spreading-priv.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url open"
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=push">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:zoechip/Project-Info-Spreading-priv.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:zoechip/Project-Info-Spreading-priv.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=push">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/zoechip/Project-Info-Spreading-priv" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/zoechip/Project-Info-Spreading-priv" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/zoechip/Project-Info-Spreading-priv" class="minibutton sidebar-button js-conduit-rewrite-url">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


              <a href="/zoechip/Project-Info-Spreading-priv/archive/master.zip"
                 class="minibutton sidebar-button"
                 title="Download this repository as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:d4a70a0e19b9db70be0516212ae8ef3a -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/zoechip/Project-Info-Spreading-priv/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/zoechip/Project-Info-Spreading-priv/blob/master/dataset/loaddata.m"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <form accept-charset="UTF-8" action="/zoechip/Project-Info-Spreading-priv/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="Ww0uixnTjUfeyqKDWsMWjLOV6bhdgzZh/y0m7HNW3cY=" /></div>
            <span class="octicon octicon-git-branch-create select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <h4>Create branch: <span class="js-new-item-name"></span></h4>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master" />
            <input type="hidden" name="path" id="branch" value="dataset/loaddata.m" />
          </form> <!-- /.select-menu-item -->

      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/zoechip/Project-Info-Spreading-priv" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">Project-Info-Spreading-priv</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/zoechip/Project-Info-Spreading-priv/tree/master/dataset" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">dataset</span></a></span><span class="separator"> / </span><strong class="final-path">loaddata.m</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="dataset/loaddata.m" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/zoechip/Project-Info-Spreading-priv/contributors/master/dataset/loaddata.m">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>32 lines (20 sloc)</span>
        <span>0.504 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped leftwards js-conduit-openfile-check"
               href="http://mac.github.com"
               data-url="github-mac://openRepo/https://github.com/zoechip/Project-Info-Spreading-priv?branch=master&amp;filepath=dataset%2Floaddata.m"
               title="Open this file in GitHub for Mac"
               data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
                <a class="minibutton"
                   href="/zoechip/Project-Info-Spreading-priv/edit/master/dataset/loaddata.m"
                   data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
          <a href="/zoechip/Project-Info-Spreading-priv/raw/master/dataset/loaddata.m" class="button minibutton " id="raw-url">Raw</a>
            <a href="/zoechip/Project-Info-Spreading-priv/blame/master/dataset/loaddata.m" class="button minibutton ">Blame</a>
          <a href="/zoechip/Project-Info-Spreading-priv/commits/master/dataset/loaddata.m" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger empty-icon tooltipped downwards"
             href="/zoechip/Project-Info-Spreading-priv/delete/master/dataset/loaddata.m"
             title=""
             data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          Delete
        </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-m js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="nv">%%Loading</span> <span class="nv">data</span> <span class="nv">from</span> <span class="nv">folder</span> <span class="nv">data.</span> </div><div class='line' id='LC2'><span class="nv">%%File</span> <span class="nv">has</span> <span class="nv">to</span> <span class="nv">be</span> <span class="nv">locaded</span> <span class="nv">in</span> <span class="nv">folder</span> <span class="nv">data!</span></div><div class='line' id='LC3'><br/></div><div class='line' id='LC4'><span class="k">function</span> <span class="nv">person</span> <span class="nb">=</span> <span class="nv">loaddata</span><span class="p">()</span></div><div class='line' id='LC5'><br/></div><div class='line' id='LC6'><span class="nv">Freunde=dlmread</span><span class="p">(</span><span class="ss">&#39;Freunde.txt</span><span class="o">&#39;</span><span class="p">)</span><span class="c1">;</span></div><div class='line' id='LC7'><br/></div><div class='line' id='LC8'><span class="nv">M=length</span><span class="p">(</span><span class="nv">Freunde</span><span class="p">)</span><span class="c1">;</span></div><div class='line' id='LC9'><br/></div><div class='line' id='LC10'><span class="nv">global</span> <span class="nv">N</span><span class="c1">;</span></div><div class='line' id='LC11'><span class="nv">N=0</span><span class="c1">;</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="nv">global</span> <span class="nv">person</span><span class="c1">;</span></div><div class='line' id='LC14'><span class="nv">person=struct</span><span class="c1">;</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="nv">for</span> <span class="nv">i=1:M</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">name=num2str</span><span class="p">(</span><span class="nv">Freunde</span><span class="p">(</span><span class="nv">i</span><span class="p">))</span><span class="c1">; %%strings verbinden</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">Freundi=cat</span><span class="p">(</span><span class="mi">2</span><span class="o">,</span><span class="nv">name,</span><span class="ss">&#39;.txt</span><span class="o">&#39;</span><span class="p">)</span><span class="c1">;</span></div><div class='line' id='LC20'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC21'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">try</span></div><div class='line' id='LC22'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">tempfriends=dlmread</span><span class="p">(</span><span class="nv">Freundi</span><span class="p">)</span><span class="c1">;</span></div><div class='line' id='LC23'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">CATCH</span> <span class="nv">ME</span> <span class="nv">%%Avoiding</span> <span class="nb">error</span> <span class="k">if</span> <span class="nv">no</span> <span class="nv">commen</span> <span class="nv">friends!</span> <span class="p">(</span><span class="nv">needs</span> <span class="nv">to</span> <span class="nv">be</span> <span class="nv">improved!</span><span class="p">)</span></div><div class='line' id='LC24'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">tempfriends=0</span><span class="c1">;</span></div><div class='line' id='LC25'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">end</span></div><div class='line' id='LC26'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">newperson</span><span class="p">(</span><span class="nv">Freunde</span><span class="p">(</span><span class="nv">i</span><span class="p">)</span><span class="o">,</span> <span class="nv">tempfriends</span><span class="p">)</span><span class="c1">;</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'><span class="nv">end</span></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><br/></div><div class='line' id='LC32'><span class="nv">end</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.05770s from github-fe119-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/zoechip/Project-Info-Spreading-priv/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

