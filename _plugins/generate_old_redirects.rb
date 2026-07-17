require "fileutils"

Jekyll::Hooks.register :posts, :post_write do |post|

  old_filename = post.data["title"]
                    .strip
                    .gsub(" ", "-")

  # Remove characters that Windows cannot use in folder names
  safe_filename = old_filename.gsub(/[<>:"\/\\|?*]/, "")

  old_url = post.date.strftime("/%Y/%m/%d/") + safe_filename + ".html"

  redirect_path = File.join(
    post.site.dest,
    old_url
  )

  FileUtils.mkdir_p(redirect_path)

  File.write(
    File.join(redirect_path, "index.html"),
    <<~HTML
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="refresh" content="0; url=#{post.url}">
        <link rel="canonical" href="#{post.url}">
    </head>
    <body>
        <p>This page has moved. <a href="#{post.url}">Click here</a>.</p>
    </body>
    </html>
    HTML
  )

end