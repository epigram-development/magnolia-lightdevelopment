<!-- Featured Post -->

  [#if content.internalLink?has_content]
    [#assign link = cmsfn.link(cmsfn.contentById(content.internalLink, "website"))!]    
    [#assign link = ctx.contextPath + link]  
  [#else]
      [#assign link = "#"]  
  [/#if]

<article class="post featured">
    <header class="major">
      [#if content.date?has_content]
        <span class="date">${content.date?string("MMMM d, yyyy")}</span>
      [/#if]
      
      <h2><a href="${link}">${content.title!}</a></h2>
       [#if content.desc?has_content]
        ${cmsfn.decode(content).desc!}
       [/#if]
    </header>
    <a href="${link}" class="image main">
       [#if content.image?has_content]
        [#assign image = damfn.getAsset(content.image)]
        [#assign imageLink = image.link]
        <img src='${imageLink!}' alt='${content.caption!"image"}' />
      [/#if]
      </a>
    <ul class="actions special">
      <li><a href="${link}" class="button large">Full Story</a></li>
    </ul>
</article>

