#!/bin/bash

. ./bin/shell/common.sh

if ! which php &>/dev/null; then
    echo "No PHP executable found, please add it to the path"
    exit 1
fi

OUTPUT_REPOSITORY="kernel/setup/packages"

## Common initialization

rm -rf "$OUTPUT_REPOSITORY"
mkdir -p "$OUTPUT_REPOSITORY"

## Shop sitestyles

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create shop_blue "Blue CSS design for shop"  -- \
    set shop_blue type sitestyle -- \
    add shop_blue file -n cssfile design/shop/stylesheets/shop-blue.css -- \
    add shop_blue thumbnail -n thumbnail design/shop/images/shop-blue.png -- \
    add shop_blue file -n image design/shop/images/blue/tab_corner-top_left.gif -- \
    add shop_blue file -n image design/shop/images/blue/tab_corner-top_right.gif -- \
    add shop_blue file -n image design/shop/images/shopping-menu-icon.gif

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create shop_red "Red CSS design for shop" -- \
    set shop_red type sitestyle -- \
    add shop_red file -n cssfile design/shop/stylesheets/shop.css -- \
    add shop_red thumbnail -n thumbnail design/shop/images/shop-red.png -- \
    add shop_red file -n image design/shop/images/header-background-top_right.gif -- \
    add shop_red file -n image design/shop/images/header-background-top_left.gif -- \
    add shop_red file -n image design/shop/images/left_sidebar-background.gif -- \
    add shop_red file -n image design/shop/images/tab_corner-top_left.gif -- \
    add shop_red file -n image design/shop/images/tab_corner-top_right.gif -- \
    add shop_red file -n image design/shop/images/shopping-menu-icon.gif -- \
    add shop_red file -n image design/shop/images/half_white-transparent.gif

## Blog sitestyles

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create blog_blue "Blue CSS design for blog" -- \
    set blog_blue type sitestyle -- \
    add blog_blue file -n cssfile design/blog/stylesheets/blog_blue.css -- \
    add blog_blue thumbnail -n thumbnail design/blog/images/blog-blue.png

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create blog_red "Blue CSS design for blog" -- \
    set blog_red type sitestyle -- \
    add blog_red file -n cssfile design/blog/stylesheets/blog_red.css -- \
    add blog_red thumbnail -n thumbnail design/blog/images/blog-red.png

## Gallery sitestyles

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create gallery_gray "Gray CSS design for gallery" -- \
    set gallery_gray type sitestyle -- \
    add gallery_gray file -n cssfile design/gallery/stylesheets/gallery_gray.css -- \
    add gallery_gray thumbnail -n thumbnail design/gallery/images/gallery_gray.jpg -- \
    add gallery_gray file -n image design/gallery/images/gray_info.png -- \
    add gallery_gray file -n image design/gallery/images/gray_header.png

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create gallery_blue "Blue CSS design for gallery" -- \
    set gallery_blue type sitestyle -- \
    add gallery_blue file -n cssfile design/gallery/stylesheets/gallery_blue.css -- \
    add gallery_blue thumbnail -n thumbnail design/gallery/images/gallery_blue.jpg

## News sitestyles

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create news_blue "Blue CSS design for news" -- \
    set news_blue type sitestyle -- \
    add news_blue file -n cssfile design/news/stylesheets/news_blue.css -- \
    add news_blue thumbnail -n thumbnail design/news/images/news_blue.jpg

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create news_brown "Brown CSS design for news" -- \
    set news_brown type sitestyle -- \
    add news_brown file -n cssfile design/news/stylesheets/news.css -- \
    add news_brown thumbnail -n thumbnail design/news/images/news_brown.jpg

## Intranet sitestyles

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create intranet_gray "Gray CSS design for intranet" -- \
    set intranet_gray type sitestyle -- \
    add intranet_gray file -n cssfile design/intranet/stylesheets/intranet.css -- \
    add intranet_gray thumbnail -n thumbnail design/intranet/images/intranet_gray.png -- \
    add intranet_gray file -n image design/intranet/images/06_intranet_logo.png -- \
    create intranet_red "Red CSS design for intranet" -- \
    set intranet_red type sitestyle -- \
    add intranet_red file -n cssfile design/intranet/stylesheets/intranet_red.css -- \
    add intranet_red thumbnail -n thumbnail design/intranet/images/intranet_red.png -- \
    add intranet_red file -n image design/intranet/images/green_logo.png


## Corporate sitestyles

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create corporate_blue "Blue CSS design for corporate" -- \
    set corporate_blue type sitestyle -- \
    add corporate_blue file -n cssfile design/corporate/stylesheets/corporate-blue.css -- \
    add corporate_blue file -n image design/corporate/images/header_image.gif -- \
    add corporate_blue file -n image design/corporate/images/infobox_image.gif -- \
    add corporate_blue file -n image design/corporate/images/header_image-repeat.gif -- \
    add corporate_blue thumbnail -n thumbnail design/corporate/images/corporate-blue.png

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create corporate_green "Green design for corporate" -- \
    set corporate_green type sitestyle -- \
    add corporate_green file -n cssfile design/corporate/stylesheets/corporate-green.css -- \
    add corporate_green file -n image design/corporate/images/sidebar-background.gif -- \
    add corporate_green file -n image design/corporate/images/header_image-green.jpg -- \
    add corporate_green thumbnail -n thumbnail design/corporate/images/corporate-green.png


## Forum sitestyles

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create forum_red "Red CSS design for forum" -- \
    set forum_red type sitestyle -- \
    add forum_red file -n cssfile design/forum/stylesheets/forum.css -- \
    add forum_red file -n image design/forum/images/forum_header-red.gif -- \
    add forum_red thumbnail -n thumbnail design/forum/images/forum_red.jpg -- \
    create forum_blue "Blue CSS design for forum" -- \
    set forum_blue type sitestyle -- \
    add forum_blue file -n cssfile design/forum/stylesheets/forum_blue.css -- \
    add forum_blue thumbnail -n thumbnail design/forum/images/forum_blue.jpg -- \
    add forum_blue file -n image design/forum/images/forum_header-blue.gif

## Plain site

./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create plain -- \
    set plain type site -- \
    add plain design -n design plain -- \
    add plain ini -r siteaccess -v plain -n user_siteaccess settings/siteaccess/plain/override.ini.append -- \
    add plain ini -r siteaccess -v plain -n user_siteaccess settings/siteaccess/plain/site.ini.append -- \
    add plain ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/admin/override.ini.append -- \
    add plain ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/admin/site.ini.append -- \
    add plain sql -d mysql kernel/sql/mysql/kernel_schema.sql -- \
    add plain sql -d mysql kernel/sql/mysql/cleandata.sql -- \
    add plain sql -d postgresql kernel/sql/postgresql/kernel_schema.sql -- \
    add plain sql -d postgresql kernel/sql/postgresql/cleandata.sql -- \
    add plain thumbnail design/plain/images/plain.gif -- \
    set plain summary "Plain" -- export plain -d kernel/setup/packages


## Shop site
./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create shop -- \
    set shop type site -- \
    add shop design -n design shop -- \
    add shop ini -r siteaccess -v shop -n user_siteaccess settings/siteaccess/shop_user/override.ini.append -- \
    add shop ini -r siteaccess -v shop -n user_siteaccess settings/siteaccess/shop_user/site.ini.append -- \
    add shop ini -r siteaccess -v shop -n user_siteaccess settings/siteaccess/shop_user/shopaccount.ini.append -- \
    add shop ini -r siteaccess -v shop -n user_siteaccess settings/siteaccess/shop_user/content.ini.append -- \
    add shop ini -r siteaccess -v shop -n user_siteaccess settings/siteaccess/shop_user/image.ini.append -- \
    add shop ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/shop_admin/override.ini.append -- \
    add shop ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/shop_admin/site.ini.append -- \
    add shop sql -d mysql packages/shop.sql -- \
    add shop sql -d postgresql packages/shop_postgresql.sql -- \
    add shop file var/shop/storage/packages/shop_blue/package.xml -- \
    add shop file var/shop/storage/packages/shop_blue/files/default/file/design/shop/stylesheets/shop-blue.css -- \
    add shop file var/shop/storage/packages/shop_blue/files/default/thumbnail/thumbnail.png -- \
    add shop file var/shop/storage/packages/shop_blue/files/default/file/design/shop/images/blue/tab_corner-top_right.gif -- \
    add shop file var/shop/storage/packages/shop_blue/files/default/file/design/shop/images/blue/tab_corner-top_left.gif -- \
    add shop file var/shop/storage/packages/shop_blue/files/default/file/design/shop/images/shopping-menu-icon.gif -- \
    add shop file var/shop/storage/packages/shop_blue/documents/README -- \
    add shop file var/shop/storage/packages/shop_red/package.xml -- \
    add shop file var/shop/storage/packages/shop_red/files/default/file/design/shop/stylesheets/shop.css -- \
    add shop file var/shop/storage/packages/shop_red/files/default/thumbnail/thumbnail.png -- \
    add shop file var/shop/storage/packages/shop_red/files/default/file/design/shop/images/left_sidebar-background.gif -- \
    add shop file var/shop/storage/packages/shop_red/files/default/file/design/shop/images/tab_corner-top_left.gif -- \
    add shop file var/shop/storage/packages/shop_red/files/default/file/design/shop/images/tab_corner-top_right.gif -- \
    add shop file var/shop/storage/packages/shop_red/files/default/file/design/shop/images/header-background-top_right.gif -- \
    add shop file var/shop/storage/packages/shop_red/files/default/file/design/shop/images/header-background-top_left.gif -- \
    add shop file var/shop/storage/packages/shop_red/files/default/file/design/shop/images/shopping-menu-icon.gif -- \
    add shop file var/shop/storage/packages/shop_red/files/default/file/design/shop/images/half_white-transparent.gif -- \
    add shop file var/shop/storage/packages/shop_red/documents/README -- \
    add shop file var/shop/storage/images/setup/setup_links/classes/103-11-eng-GB/classes.png -- \
    add shop file var/shop/storage/images/setup/setup_links/classes/103-11-eng-GB/classes_large.png -- \
    add shop file var/shop/storage/images/setup/setup_links/classes/103-11-eng-GB/classes_reference.png -- \
    add shop file var/shop/storage/images/setup/setup_links/cache/324-5-eng-GB/cache.png -- \
    add shop file var/shop/storage/images/setup/setup_links/cache/324-5-eng-GB/cache_large.png -- \
    add shop file var/shop/storage/images/setup/setup_links/cache/324-5-eng-GB/cache_reference.png -- \
    add shop file var/shop/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel.png -- \
    add shop file var/shop/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel_large.png -- \
    add shop file var/shop/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel_reference.png -- \
    add shop file var/shop/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator.png -- \
    add shop file var/shop/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator_large.png -- \
    add shop file var/shop/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator_reference.png -- \
    add shop file var/shop/storage/images/setup/look_and_feel/shop/152-59-eng-GB/shop_logo.gif -- \
    add shop file var/shop/storage/images/setup/look_and_feel/shop/152-59-eng-GB/shop_medium.gif -- \
    add shop file var/shop/storage/images/setup/look_and_feel/shop/152-59-eng-GB/shop.gif -- \
    add shop thumbnail design/shop/images/shop-red.png -- \
    set shop summary "Webshop" -- \
    export shop -d kernel/setup/packages


## Blog site
./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create blog -- \
    set blog type site -- \
    add blog design -n design blog -- \
    add blog ini -r siteaccess -v blog -n user_siteaccess settings/siteaccess/blog_user/override.ini.append -- \
    add blog ini -r siteaccess -v blog -n user_siteaccess settings/siteaccess/blog_user/site.ini.append -- \
    add blog ini -r siteaccess -v blog -n user_siteaccess settings/siteaccess/blog_user/collect.ini.append -- \
    add blog ini -r siteaccess -v blog -n user_siteaccess settings/siteaccess/blog_user/content.ini.append -- \
    add blog ini -r siteaccess -v blog -n user_siteaccess settings/siteaccess/blog_user/image.ini.append -- \
    add blog ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/blog_admin/override.ini.append -- \
    add blog ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/blog_admin/site.ini.append -- \
    add blog sql -d mysql packages/blog.sql -- \
    add blog sql -d postgresql packages/blog_postgresql.sql -- \
    add blog file var/blog/storage/packages/blog_blue/package.xml -- \
    add blog file var/blog/storage/packages/blog_blue/files/default/file/design/blog/stylesheets/blog_blue.css -- \
    add blog file var/blog/storage/packages/blog_blue/files/default/thumbnail/thumbnail.png -- \
    add blog file var/blog/storage/packages/blog_blue/documents/README -- \
    add blog file var/blog/storage/packages/blog_red/package.xml -- \
    add blog file var/blog/storage/packages/blog_red/files/default/file/design/blog/stylesheets/blog_red.css -- \
    add blog file var/blog/storage/packages/blog_red/files/default/thumbnail/thumbnail.png -- \
    add blog file var/blog/storage/packages/blog_red/documents/README -- \
    add blog file var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB/classes.png -- \
    add blog file var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_large.png -- \
    add blog file var/blog/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_reference.png -- \
    add blog file var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB/cache.png -- \
    add blog file var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_large.png -- \
    add blog file var/blog/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_reference.png -- \
    add blog file var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel.png -- \
    add blog file var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_large.png -- \
    add blog file var/blog/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_reference.png -- \
    add blog file var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator.png -- \
    add blog file var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_large.png -- \
    add blog file var/blog/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_reference.png -- \
    add blog file var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog.gif -- \
    add blog file var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog_medium.gif -- \
    add blog file var/blog/storage/images/setup/look_and_feel/blog/152-70-eng-GB/blog_logo.gif -- \
    add blog thumbnail design/blog/images/blog-blue.png -- \
    set blog summary "Blog" -- \
    export blog -d kernel/setup/packages

## Gallery site
./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create gallery -- \
    set gallery type site -- \
    add gallery design -n design gallery -- \
    add gallery ini -r siteaccess -v gallery -n user_siteaccess settings/siteaccess/gallery_user/override.ini.append -- \
    add gallery ini -r siteaccess -v gallery -n user_siteaccess settings/siteaccess/gallery_user/site.ini.append -- \
    add gallery ini -r siteaccess -v gallery -n user_siteaccess settings/siteaccess/gallery_user/content.ini.append -- \
    add gallery ini -r siteaccess -v gallery -n user_siteaccess settings/siteaccess/gallery_user/image.ini.append -- \
    add gallery ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/gallery_admin/override.ini.append -- \
    add gallery ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/gallery_admin/site.ini.append -- \
    add gallery sql -d mysql packages/gallery.sql -- \
    add gallery sql -d postgresql packages/gallery_postgresql.sql -- \
    add gallery file var/gallery/storage/packages/gallery_gray/package.xml -- \
    add gallery file var/gallery/storage/packages/gallery_gray/files/default/file/design/gallery/stylesheets/gallery_gray.css -- \
    add gallery file var/gallery/storage/packages/gallery_gray/files/default/thumbnail/thumbnail.jpg -- \
    add gallery file var/gallery/storage/packages/gallery_gray/files/default/file/design/gallery/images/gray_info.png -- \
    add gallery file var/gallery/storage/packages/gallery_gray/files/default/file/design/gallery/images/gray_header.png -- \
    add gallery file var/gallery/storage/packages/gallery_gray/documents/README -- \
    add gallery file var/gallery/storage/packages/gallery_blue/package.xml -- \
    add gallery file var/gallery/storage/packages/gallery_blue/files/default/file/design/gallery/stylesheets/gallery_blue.css -- \
    add gallery file var/gallery/storage/packages/gallery_blue/files/default/thumbnail/thumbnail.jpg -- \
    add gallery file var/gallery/storage/packages/gallery_blue/documents/README -- \
    add gallery file var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB/classes.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB/classes_large.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/classes/103-11-eng-GB/classes_reference.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB/cache.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB/cache_large.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/cache/324-6-eng-GB/cache_reference.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB/look_and_feel.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB/look_and_feel_large.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/look_and_feel/109-12-eng-GB/look_and_feel_reference.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB/url_translator.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB/url_translator_large.png -- \
    add gallery file var/gallery/storage/images/setup/setup_links/url_translator/328-5-eng-GB/url_translator_reference.png -- \
    add gallery file var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB/my_gallery_logo.gif -- \
    add gallery file var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB/my_gallery_medium.gif -- \
    add gallery file var/gallery/storage/images/setup/look_and_feel/my_gallery/152-61-eng-GB/my_gallery.gif -- \
    add gallery thumbnail design/gallery/images/gallery_blue.jpg


## Gallery storage files
./ezpm.php -r "$OUTPUT_REPOSITORY" \
    add gallery file var/gallery/storage/images/abstract/misc/cvs_branching/1139-1-eng-GB/cvs_branching.jpg -- \
    add gallery file var/gallery/storage/images/abstract/misc/gear_wheel/1142-1-eng-GB/gear_wheel.jpg -- \
    add gallery file var/gallery/storage/images/abstract/misc/green_clover/1145-1-eng-GB/green_clover.jpg -- \
    add gallery file var/gallery/storage/images/abstract/misc/mjaurits/1148-1-eng-GB/mjaurits.jpg -- \
    add gallery file var/gallery/storage/images/abstract/misc/speeding/1151-1-eng-GB/speeding.jpg -- \
    add gallery file var/gallery/storage/images/nature/flowers/blue_flower/1107-1-eng-GB/blue_flower.jpg -- \
    add gallery file var/gallery/storage/images/nature/flowers/purple_haze/1110-1-eng-GB/purple_haze.jpg -- \
    add gallery file var/gallery/storage/images/nature/flowers/yellow_flower/1113-1-eng-GB/yellow_flower.jpg -- \
    add gallery file var/gallery/storage/images/nature/landscape/foggy_trees/1126-1-eng-GB/foggy_trees.jpg -- \
    add gallery file var/gallery/storage/images/nature/landscape/ormevika_skyline/1123-1-eng-GB/ormevika_skyline.jpg -- \
    add gallery file var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection.jpg -- \
    add gallery file var/gallery/storage/images/nature/landscape/pond_reflection/1120-1-eng-GB/pond_reflection.jpg -- \
    add gallery file var/gallery/storage/images/nature/landscape/water_reflection/1129-1-eng-GB/water_reflection.jpg -- \
    add gallery file var/gallery/cache/expiry.php -- \
    set gallery summary "Gallery" -- \
    export gallery -d kernel/setup/packages


## News site
./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create news -- \
    set news type site -- \
    add news design -n design news -- \
    add news ini -r siteaccess -v news -n user_siteaccess settings/siteaccess/news_user/override.ini.append -- \
    add news ini -r siteaccess -v news -n user_siteaccess settings/siteaccess/news_user/site.ini.append -- \
    add news ini -r siteaccess -v news -n user_siteaccess settings/siteaccess/news_user/collect.ini.append -- \
    add news ini -r siteaccess -v news -n user_siteaccess settings/siteaccess/news_user/content.ini.append -- \
    add news ini -r siteaccess -v news -n user_siteaccess settings/siteaccess/news_user/workflow.ini -- \
    add news ini -r siteaccess -v news -n user_siteaccess settings/siteaccess/news_user/image.ini.append -- \
    add news ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/news_admin/override.ini.append -- \
    add news ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/news_admin/site.ini.append -- \
    add news sql -d mysql packages/news.sql -- \
    add news sql -d postgresql packages/news_postgresql.sql -- \
    add news file var/news/storage/packages/news_blue/package.xml -- \
    add news file var/news/storage/packages/news_blue/files/default/file/design/news/stylesheets/news_blue.css -- \
    add news file var/news/storage/packages/news_blue/files/default/thumbnail/thumbnail.jpg -- \
    add news file var/news/storage/packages/news_blue/documents/README -- \
    add news file var/news/storage/packages/news_brown/package.xml -- \
    add news file var/news/storage/packages/news_brown/files/default/file/design/news/stylesheets/news.css -- \
    add news file var/news/storage/packages/news_brown/files/default/thumbnail/thumbnail.jpg -- \
    add news file var/news/storage/packages/news_brown/documents/README -- \
    add news file var/news/storage/images/setup/setup_links/classes/103-10-eng-GB/classes.png -- \
    add news file var/news/storage/images/setup/setup_links/classes/103-10-eng-GB/classes_large.png -- \
    add news file var/news/storage/images/setup/setup_links/classes/103-10-eng-GB/classes_reference.png -- \
    add news file var/news/storage/images/setup/setup_links/cache/324-5-eng-GB/cache.png -- \
    add news file var/news/storage/images/setup/setup_links/cache/324-5-eng-GB/cache_large.png -- \
    add news file var/news/storage/images/setup/setup_links/cache/324-5-eng-GB/cache_reference.png -- \
    add news file var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel.png -- \
    add news file var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel_large.png -- \
    add news file var/news/storage/images/setup/setup_links/look_and_feel/109-11-eng-GB/look_and_feel_reference.png -- \
    add news file var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator.png -- \
    add news file var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator_large.png -- \
    add news file var/news/storage/images/setup/setup_links/url_translator/328-4-eng-GB/url_translator_reference.png -- \
    add news file var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news.gif -- \
    add news file var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news_medium.gif -- \
    add news file var/news/storage/images/setup/look_and_feel/news/152-65-eng-GB/news_logo.gif 

## News storage files
./ezpm.php -r "$OUTPUT_REPOSITORY" \
    add news file var/news/storage/images/news/technology/new_top_fair/1143-2-eng-GB/new_top_fair.jpg -- \
    add news file var/news/cache/expiry.php -- \
    add news thumbnail design/news/images/news_brown.jpg -- \
    set news summary "News" -- \
    export news -d kernel/setup/packages

## Intranet site
./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create intranet -- \
    set intranet type site -- \
    add intranet design -n design intranet -- \
    add intranet ini -r siteaccess -v intranet -n user_siteaccess settings/siteaccess/intranet_user/override.ini.append -- \
    add intranet ini -r siteaccess -v intranet -n user_siteaccess settings/siteaccess/intranet_user/site.ini.append -- \
    add intranet ini -r siteaccess -v intranet -n user_siteaccess settings/siteaccess/intranet_user/image.ini.append -- \
    add intranet ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/intranet_admin/override.ini.append -- \
    add intranet ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/intranet_admin/site.ini.append -- \
    add intranet sql -d mysql packages/intranet.sql -- \
    add intranet sql -d postgresql packages/intranet_postgresql.sql -- \
    add intranet file var/intranet/storage/packages/intranet_gray/package.xml -- \
    add intranet file var/intranet/storage/packages/intranet_gray/files/default/file/design/intranet/stylesheets/intranet.css -- \
    add intranet file var/intranet/storage/packages/intranet_gray/files/default/file/design/intranet/images/06_intranet_logo.png -- \
    add intranet file var/intranet/storage/packages/intranet_gray/files/default/thumbnail/thumbnail.png -- \
    add intranet file var/intranet/storage/packages/intranet_gray/documents/README -- \
    add intranet file var/intranet/storage/packages/intranet_red/package.xml -- \
    add intranet file var/intranet/storage/packages/intranet_red/files/default/file/design/intranet/stylesheets/intranet_red.css -- \
    add intranet file var/intranet/storage/packages/intranet_red/files/default/file/design/intranet/images/green_logo.png -- \
    add intranet file var/intranet/storage/packages/intranet_red/files/default/thumbnail/thumbnail.png -- \
    add intranet file var/intranet/storage/packages/intranet_red/documents/README -- \
    add intranet file var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB/classes.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB/classes_large.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/classes/103-8-eng-GB/classes_reference.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB/cache.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB/cache_large.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/cache/324-3-eng-GB/cache_reference.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_icon.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_large.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_reference.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator_large.png -- \
    add intranet file var/intranet/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator_reference.png -- \
    add intranet file var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet.gif -- \
    add intranet file var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet_logo.gif -- \
    add intranet file var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet_medium.gif -- \
    add intranet file var/intranet/storage/images/setup/look_and_feel/intranet/463-16-eng-GB/intranet_reference.gif -- \
    add intranet thumbnail design/intranet/images/intranet_red.png -- \
    set intranet summary "Intranet" -- \
    export intranet -d kernel/setup/packages

## Corporate site
./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create corporate -- \
    set corporate type site -- \
    add corporate design -n design corporate -- \
    add corporate ini -r siteaccess -v corporate -n user_siteaccess settings/siteaccess/corporate_user/override.ini.append -- \
    add corporate ini -r siteaccess -v corporate -n user_siteaccess settings/siteaccess/corporate_user/site.ini.append -- \
    add corporate ini -r siteaccess -v corporate -n user_siteaccess settings/siteaccess/corporate_user/image.ini.append -- \
    add corporate ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/corporate_admin/override.ini.append -- \
    add corporate ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/corporate_admin/site.ini.append -- \
    add corporate sql -d mysql packages/corporate.sql -- \
    add corporate sql -d postgresql packages/corporate_postgresql.sql -- \
    add corporate file var/corporate/storage/packages/corporate_blue/package.xml -- \
    add corporate file var/corporate/storage/packages/corporate_blue/files/default/file/design/corporate/stylesheets/corporate-blue.css -- \
    add corporate file var/corporate/storage/packages/corporate_blue/files/default/file/design/corporate/images/infobox_image.gif -- \
    add corporate file var/corporate/storage/packages/corporate_blue/files/default/file/design/corporate/images/header_image-repeat.gif -- \
    add corporate file var/corporate/storage/packages/corporate_blue/files/default/file/design/corporate/images/header_image.gif -- \
    add corporate file var/corporate/storage/packages/corporate_blue/files/default/thumbnail/thumbnail.png -- \
    add corporate file var/corporate/storage/packages/corporate_blue/documents/README -- \
    add corporate file var/corporate/storage/packages/corporate_green/package.xml -- \
    add corporate file var/corporate/storage/packages/corporate_green/files/default/file/design/corporate/stylesheets/corporate-green.css -- \
    add corporate file var/corporate/storage/packages/corporate_green/files/default/file/design/corporate/images/sidebar-background.gif -- \
    add corporate file var/corporate/storage/packages/corporate_green/files/default/file/design/corporate/images/header_image-green.jpg -- \
    add corporate file var/corporate/storage/packages/corporate_green/files/default/thumbnail/thumbnail.png -- \
    add corporate file var/corporate/storage/packages/corporate_green/documents/README -- \
    add corporate file var/corporate/storage/images/setup/setup_links/classes/103-8-eng-GB/classes.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/classes/103-8-eng-GB/classes_large.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/classes/103-8-eng-GB/classes_reference.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/cache/324-3-eng-GB/cache.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/cache/324-3-eng-GB/cache_large.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/cache/324-3-eng-GB/cache_reference.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/look_and_feel/109-9-eng-GB/look_and_feel_icon.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/look_and_feel/109-9-eng-GB/look_and_feel.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/look_and_feel/109-9-eng-GB/look_and_feel_large.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/look_and_feel/109-9-eng-GB/look_and_feel_reference.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator_large.png -- \
    add corporate file var/corporate/storage/images/setup/setup_links/url_translator/328-2-eng-GB/url_translator_reference.png -- \
    add corporate file var/corporate/storage/images/setup/look_and_feel/corporate/152-62-eng-GB/corporate.gif  -- \
    add corporate file var/corporate/storage/images/setup/look_and_feel/corporate/152-62-eng-GB/corporate_medium.gif -- \
    add corporate file var/corporate/storage/images/setup/look_and_feel/corporate/152-62-eng-GB/corporate_logo.gif -- \
    add corporate file var/corporate/storage/images/setup/look_and_feel/corporate/152-62-eng-GB/corporate_reference.gif -- \
    add corporate thumbnail design/corporate/images/corporate-blue.png -- \
    set corporate summary "Corporate" -- \
    export corporate -d kernel/setup/packages

## Forum site
./ezpm.php -r "$OUTPUT_REPOSITORY" \
    create forum -- \
    set forum type site -- \
    add forum design -n design forum -- \
    add forum ini -r siteaccess -v forum -n user_siteaccess settings/siteaccess/forum_user/override.ini.append -- \
    add forum ini -r siteaccess -v forum -n user_siteaccess settings/siteaccess/forum_user/site.ini.append -- \
    add forum ini -r siteaccess -v forum -n user_siteaccess settings/siteaccess/forum_user/forum.ini -- \
    add forum ini -r siteaccess -v forum -n user_siteaccess settings/siteaccess/forum_user/content.ini.append -- \
    add forum ini -r siteaccess -v forum -n user_siteaccess settings/siteaccess/forum_user/image.ini.append -- \
    add forum ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/forum_admin/override.ini.append -- \
    add forum ini -r siteaccess -v admin -n admin_siteaccess settings/siteaccess/forum_admin/site.ini.append -- \
    add forum sql -d mysql packages/forum.sql -- \
    add forum sql -d postgresql packages/forum_postgresql.sql -- \
    add forum file var/forum/storage/packages/forum_red/package.xml -- \
    add forum file var/forum/storage/packages/forum_red/files/default/file/design/forum/stylesheets/forum.css -- \
    add forum file var/forum/storage/packages/forum_red/files/default/file/design/forum/images/forum_header-red.gif -- \
    add forum file var/forum/storage/packages/forum_red/files/default/thumbnail/thumbnail.jpg -- \
    add forum file var/forum/storage/packages/forum_red/documents/README -- \
    add forum file var/forum/storage/packages/forum_blue/package.xml -- \
    add forum file var/forum/storage/packages/forum_blue/files/default/file/design/forum/stylesheets/forum_blue.css -- \
    add forum file var/forum/storage/packages/forum_blue/files/default/file/design/forum/images/forum_header-blue.gif -- \
    add forum file var/forum/storage/packages/forum_blue/files/default/thumbnail/thumbnail.jpg -- \
    add forum file var/forum/storage/packages/forum_blue/documents/README -- \
    add forum file var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB/classes.png -- \
    add forum file var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_large.png -- \
    add forum file var/forum/storage/images/setup/setup_links/classes/103-9-eng-GB/classes_reference.png -- \
    add forum file var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB/cache.png -- \
    add forum file var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_large.png -- \
    add forum file var/forum/storage/images/setup/setup_links/cache/324-4-eng-GB/cache_reference.png -- \
    add forum file var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_icon.png -- \
    add forum file var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel.png -- \
    add forum file var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_large.png -- \
    add forum file var/forum/storage/images/setup/setup_links/look_and_feel/109-10-eng-GB/look_and_feel_reference.png -- \
    add forum file var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator.png -- \
    add forum file var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_large.png -- \
    add forum file var/forum/storage/images/setup/setup_links/url_translator/328-3-eng-GB/url_translator_reference.png -- \
    add forum file var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum.gif -- \
    add forum file var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum_medium.gif -- \
    add forum file var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum_logo.gif -- \
    add forum file var/forum/storage/images/setup/look_and_feel/forum/152-59-eng-GB/forum_reference.gif -- \
    add forum thumbnail design/forum/images/forum_red.jpg -- \
    set forum summary "Forum" -- \
    export forum -d kernel/setup/packages
