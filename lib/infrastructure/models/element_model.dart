import 'dart:convert';

class ElementModel {
  final int id;
  final DateTime date;
  final DateTime dateGmt;
  final Guid guid;
  final DateTime modified;
  final DateTime modifiedGmt;
  final String slug;
  final String status;
  final String type;
  final String link;
  final Guid title;
  final Content content;
  final Content excerpt;
  final int author;
  final int featuredMedia;
  final String commentStatus;
  final String pingStatus;
  final bool sticky;
  final String template;
  final String format;
  final List<dynamic> meta;
  final List<int> categories;
  final List<dynamic> tags;
  final List<int> geografia;
  final List<int> destacado;
  final UserMeta userMeta;
  final List<FvpVideo> videoYt;
  final List<String> videoFb;
  final List<String> views;
  final FvpVideo fvpVideo;
  final List<String> guionVideo;
  final ElementmodelLinks links;
  final Embedded embedded;

  ElementModel({
    required this.id,
    required this.date,
    required this.dateGmt,
    required this.guid,
    required this.modified,
    required this.modifiedGmt,
    required this.slug,
    required this.status,
    required this.type,
    required this.link,
    required this.title,
    required this.content,
    required this.excerpt,
    required this.author,
    required this.featuredMedia,
    required this.commentStatus,
    required this.pingStatus,
    required this.sticky,
    required this.template,
    required this.format,
    required this.meta,
    required this.categories,
    required this.tags,
    required this.geografia,
    required this.destacado,
    required this.userMeta,
    required this.videoYt,
    required this.videoFb,
    required this.views,
    required this.fvpVideo,
    required this.guionVideo,
    required this.links,
    required this.embedded,
  });

  factory ElementModel.fromJson(String str) =>
      ElementModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ElementModel.fromMap(Map<String, dynamic> json) => ElementModel(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        dateGmt: DateTime.parse(json["date_gmt"]),
        guid: Guid.fromMap(json["guid"]),
        modified: DateTime.parse(json["modified"]),
        modifiedGmt: DateTime.parse(json["modified_gmt"]),
        slug: json["slug"],
        status: json["status"],
        type: json["type"],
        link: json["link"],
        title: Guid.fromMap(json["title"]),
        content: Content.fromMap(json["content"]),
        excerpt: Content.fromMap(json["excerpt"]),
        author: json["author"],
        featuredMedia: json["featured_media"],
        commentStatus: json["comment_status"],
        pingStatus: json["ping_status"],
        sticky: json["sticky"],
        template: json["template"],
        format: json["format"],
        meta: List<dynamic>.from(json["meta"].map((x) => x)),
        categories: List<int>.from(json["categories"].map((x) => x)),
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        geografia: List<int>.from(json["geografia"].map((x) => x)),
        destacado: List<int>.from(json["destacado"].map((x) => x)),
        userMeta: UserMeta.fromMap(json["user_meta"]),
        videoYt: List<FvpVideo>.from(
            json["video_yt"].map((x) => FvpVideo.fromMap(x))),
        videoFb: List<String>.from(json["video_fb"].map((x) => x)),
        views: List<String>.from(json["views"].map((x) => x)),
        fvpVideo: FvpVideo.fromMap(json["_fvp_video"]),
        guionVideo: List<String>.from(json["guion_video"].map((x) => x)),
        links: ElementmodelLinks.fromMap(json["_links"]),
        embedded: Embedded.fromMap(json["_embedded"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "date": date.toIso8601String(),
        "date_gmt": dateGmt.toIso8601String(),
        "guid": guid.toMap(),
        "modified": modified.toIso8601String(),
        "modified_gmt": modifiedGmt.toIso8601String(),
        "slug": slug,
        "status": status,
        "type": type,
        "link": link,
        "title": title.toMap(),
        "content": content.toMap(),
        "excerpt": excerpt.toMap(),
        "author": author,
        "featured_media": featuredMedia,
        "comment_status": commentStatus,
        "ping_status": pingStatus,
        "sticky": sticky,
        "template": template,
        "format": format,
        "meta": List<dynamic>.from(meta.map((x) => x)),
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "geografia": List<dynamic>.from(geografia.map((x) => x)),
        "destacado": List<dynamic>.from(destacado.map((x) => x)),
        "user_meta": userMeta.toMap(),
        "video_yt": List<dynamic>.from(videoYt.map((x) => x.toMap())),
        "video_fb": List<dynamic>.from(videoFb.map((x) => x)),
        "views": List<dynamic>.from(views.map((x) => x)),
        "_fvp_video": fvpVideo.toMap(),
        "guion_video": List<dynamic>.from(guionVideo.map((x) => x)),
        "_links": links.toMap(),
        "_embedded": embedded.toMap(),
      };
}

class Content {
  final String rendered;
  final bool protected;

  Content({
    required this.rendered,
    required this.protected,
  });

  factory Content.fromJson(String str) => Content.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Content.fromMap(Map<String, dynamic> json) => Content(
        rendered: json["rendered"],
        protected: json["protected"],
      );

  Map<String, dynamic> toMap() => {
        "rendered": rendered,
        "protected": protected,
      };
}

class Embedded {
  final List<EmbeddedAuthor> author;
  final List<WpFeaturedmedia> wpFeaturedmedia;
  final List<List<EmbeddedWpTerm>> wpTerm;

  Embedded({
    required this.author,
    required this.wpFeaturedmedia,
    required this.wpTerm,
  });

  factory Embedded.fromJson(String str) => Embedded.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Embedded.fromMap(Map<String, dynamic> json) => Embedded(
        author: List<EmbeddedAuthor>.from(
            json["author"].map((x) => EmbeddedAuthor.fromMap(x))),
        wpFeaturedmedia: List<WpFeaturedmedia>.from(
            json["wp:featuredmedia"].map((x) => WpFeaturedmedia.fromMap(x))),
        wpTerm: List<List<EmbeddedWpTerm>>.from(json["wp:term"].map((x) =>
            List<EmbeddedWpTerm>.from(
                x.map((x) => EmbeddedWpTerm.fromMap(x))))),
      );

  Map<String, dynamic> toMap() => {
        "author": List<dynamic>.from(author.map((x) => x.toMap())),
        "wp:featuredmedia":
            List<dynamic>.from(wpFeaturedmedia.map((x) => x.toMap())),
        "wp:term": List<dynamic>.from(
            wpTerm.map((x) => List<dynamic>.from(x.map((x) => x.toMap())))),
      };
}

class EmbeddedAuthor {
  final int id;
  final String name;
  final String url;
  final String description;
  final String link;
  final String slug;
  final Map<String, String> avatarUrls;
  final SimpleLocalAvatar simpleLocalAvatar;
  final AuthorLinks links;

  EmbeddedAuthor({
    required this.id,
    required this.name,
    required this.url,
    required this.description,
    required this.link,
    required this.slug,
    required this.avatarUrls,
    required this.simpleLocalAvatar,
    required this.links,
  });

  factory EmbeddedAuthor.fromJson(String str) =>
      EmbeddedAuthor.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmbeddedAuthor.fromMap(Map<String, dynamic> json) => EmbeddedAuthor(
        id: json["id"],
        name: json["name"],
        url: json["url"],
        description: json["description"],
        link: json["link"],
        slug: json["slug"],
        avatarUrls: Map.from(json["avatar_urls"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        simpleLocalAvatar:
            SimpleLocalAvatar.fromMap(json["simple_local_avatar"]),
        links: AuthorLinks.fromMap(json["_links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "url": url,
        "description": description,
        "link": link,
        "slug": slug,
        "avatar_urls":
            Map.from(avatarUrls).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "simple_local_avatar": simpleLocalAvatar.toMap(),
        "_links": links.toMap(),
      };
}

class AuthorLinks {
  final List<About> self;
  final List<About> collection;

  AuthorLinks({
    required this.self,
    required this.collection,
  });

  factory AuthorLinks.fromJson(String str) =>
      AuthorLinks.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthorLinks.fromMap(Map<String, dynamic> json) => AuthorLinks(
        self: List<About>.from(json["self"].map((x) => About.fromMap(x))),
        collection:
            List<About>.from(json["collection"].map((x) => About.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "self": List<dynamic>.from(self.map((x) => x.toMap())),
        "collection": List<dynamic>.from(collection.map((x) => x.toMap())),
      };
}

class About {
  final String href;

  About({
    required this.href,
  });

  factory About.fromJson(String str) => About.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory About.fromMap(Map<String, dynamic> json) => About(
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "href": href,
      };
}

class SimpleLocalAvatar {
  final String the18;
  final String the24;
  final String the26;
  final String the36;
  final String the48;
  final String the52;
  final String the64;
  final String the90;
  final String the96;
  final String the128;
  final String the180;
  final String the192;
  final int mediaId;
  final String full;
  final int blogId;

  SimpleLocalAvatar({
    required this.the18,
    required this.the24,
    required this.the26,
    required this.the36,
    required this.the48,
    required this.the52,
    required this.the64,
    required this.the90,
    required this.the96,
    required this.the128,
    required this.the180,
    required this.the192,
    required this.mediaId,
    required this.full,
    required this.blogId,
  });

  factory SimpleLocalAvatar.fromJson(String str) =>
      SimpleLocalAvatar.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SimpleLocalAvatar.fromMap(Map<String, dynamic> json) =>
      SimpleLocalAvatar(
        the18: json["18"],
        the24: json["24"],
        the26: json["26"],
        the36: json["36"],
        the48: json["48"],
        the52: json["52"],
        the64: json["64"],
        the90: json["90"],
        the96: json["96"],
        the128: json["128"],
        the180: json["180"],
        the192: json["192"],
        mediaId: json["media_id"],
        full: json["full"],
        blogId: json["blog_id"],
      );

  Map<String, dynamic> toMap() => {
        "18": the18,
        "24": the24,
        "26": the26,
        "36": the36,
        "48": the48,
        "52": the52,
        "64": the64,
        "90": the90,
        "96": the96,
        "128": the128,
        "180": the180,
        "192": the192,
        "media_id": mediaId,
        "full": full,
        "blog_id": blogId,
      };
}

class WpFeaturedmedia {
  final int id;
  final DateTime date;
  final String slug;
  final String type;
  final String link;
  final Guid title;
  final int author;
  final Guid caption;
  final String altText;
  final String mediaType;
  final String mimeType;
  final MediaDetails mediaDetails;
  final String sourceUrl;
  final WpFeaturedmediaLinks links;

  WpFeaturedmedia({
    required this.id,
    required this.date,
    required this.slug,
    required this.type,
    required this.link,
    required this.title,
    required this.author,
    required this.caption,
    required this.altText,
    required this.mediaType,
    required this.mimeType,
    required this.mediaDetails,
    required this.sourceUrl,
    required this.links,
  });

  factory WpFeaturedmedia.fromJson(String str) =>
      WpFeaturedmedia.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpFeaturedmedia.fromMap(Map<String, dynamic> json) => WpFeaturedmedia(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        slug: json["slug"],
        type: json["type"],
        link: json["link"],
        title: Guid.fromMap(json["title"]),
        author: json["author"],
        caption: Guid.fromMap(json["caption"]),
        altText: json["alt_text"],
        mediaType: json["media_type"],
        mimeType: json["mime_type"],
        mediaDetails: MediaDetails.fromMap(json["media_details"]),
        sourceUrl: json["source_url"],
        links: WpFeaturedmediaLinks.fromMap(json["_links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "date": date.toIso8601String(),
        "slug": slug,
        "type": type,
        "link": link,
        "title": title.toMap(),
        "author": author,
        "caption": caption.toMap(),
        "alt_text": altText,
        "media_type": mediaType,
        "mime_type": mimeType,
        "media_details": mediaDetails.toMap(),
        "source_url": sourceUrl,
        "_links": links.toMap(),
      };
}

class Guid {
  final String rendered;

  Guid({
    required this.rendered,
  });

  factory Guid.fromJson(String str) => Guid.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Guid.fromMap(Map<String, dynamic> json) => Guid(
        rendered: json["rendered"],
      );

  Map<String, dynamic> toMap() => {
        "rendered": rendered,
      };
}

class WpFeaturedmediaLinks {
  final List<About> self;
  final List<About> collection;
  final List<About> about;
  final List<ReplyElement> author;
  final List<ReplyElement> replies;

  WpFeaturedmediaLinks({
    required this.self,
    required this.collection,
    required this.about,
    required this.author,
    required this.replies,
  });

  factory WpFeaturedmediaLinks.fromJson(String str) =>
      WpFeaturedmediaLinks.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpFeaturedmediaLinks.fromMap(Map<String, dynamic> json) =>
      WpFeaturedmediaLinks(
        self: List<About>.from(json["self"].map((x) => About.fromMap(x))),
        collection:
            List<About>.from(json["collection"].map((x) => About.fromMap(x))),
        about: List<About>.from(json["about"].map((x) => About.fromMap(x))),
        author: List<ReplyElement>.from(
            json["author"].map((x) => ReplyElement.fromMap(x))),
        replies: List<ReplyElement>.from(
            json["replies"].map((x) => ReplyElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "self": List<dynamic>.from(self.map((x) => x.toMap())),
        "collection": List<dynamic>.from(collection.map((x) => x.toMap())),
        "about": List<dynamic>.from(about.map((x) => x.toMap())),
        "author": List<dynamic>.from(author.map((x) => x.toMap())),
        "replies": List<dynamic>.from(replies.map((x) => x.toMap())),
      };
}

class ReplyElement {
  final bool embeddable;
  final String href;

  ReplyElement({
    required this.embeddable,
    required this.href,
  });

  factory ReplyElement.fromJson(String str) =>
      ReplyElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ReplyElement.fromMap(Map<String, dynamic> json) => ReplyElement(
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "embeddable": embeddable,
        "href": href,
      };
}

class MediaDetails {
  final int width;
  final int height;
  final String file;
  final Sizes sizes;
  final ImageMeta imageMeta;

  MediaDetails({
    required this.width,
    required this.height,
    required this.file,
    required this.sizes,
    required this.imageMeta,
  });

  factory MediaDetails.fromJson(String str) =>
      MediaDetails.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MediaDetails.fromMap(Map<String, dynamic> json) => MediaDetails(
        width: json["width"],
        height: json["height"],
        file: json["file"],
        sizes: Sizes.fromMap(json["sizes"]),
        imageMeta: ImageMeta.fromMap(json["image_meta"]),
      );

  Map<String, dynamic> toMap() => {
        "width": width,
        "height": height,
        "file": file,
        "sizes": sizes.toMap(),
        "image_meta": imageMeta.toMap(),
      };
}

class ImageMeta {
  final String aperture;
  final String credit;
  final String camera;
  final String caption;
  final String createdTimestamp;
  final String copyright;
  final String focalLength;
  final String iso;
  final String shutterSpeed;
  final String title;
  final String orientation;
  final List<dynamic> keywords;

  ImageMeta({
    required this.aperture,
    required this.credit,
    required this.camera,
    required this.caption,
    required this.createdTimestamp,
    required this.copyright,
    required this.focalLength,
    required this.iso,
    required this.shutterSpeed,
    required this.title,
    required this.orientation,
    required this.keywords,
  });

  factory ImageMeta.fromJson(String str) => ImageMeta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ImageMeta.fromMap(Map<String, dynamic> json) => ImageMeta(
        aperture: json["aperture"],
        credit: json["credit"],
        camera: json["camera"],
        caption: json["caption"],
        createdTimestamp: json["created_timestamp"],
        copyright: json["copyright"],
        focalLength: json["focal_length"],
        iso: json["iso"],
        shutterSpeed: json["shutter_speed"],
        title: json["title"],
        orientation: json["orientation"],
        keywords: List<dynamic>.from(json["keywords"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "aperture": aperture,
        "credit": credit,
        "camera": camera,
        "caption": caption,
        "created_timestamp": createdTimestamp,
        "copyright": copyright,
        "focal_length": focalLength,
        "iso": iso,
        "shutter_speed": shutterSpeed,
        "title": title,
        "orientation": orientation,
        "keywords": List<dynamic>.from(keywords.map((x) => x)),
      };
}

class Sizes {
  final The1536X1536 medium;
  final The1536X1536 large;
  final The1536X1536 thumbnail;
  final The1536X1536 mediumLarge;
  final The1536X1536 the1536X1536;
  final The1536X1536 full;

  Sizes({
    required this.medium,
    required this.large,
    required this.thumbnail,
    required this.mediumLarge,
    required this.the1536X1536,
    required this.full,
  });

  factory Sizes.fromJson(String str) => Sizes.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Sizes.fromMap(Map<String, dynamic> json) => Sizes(
        medium: The1536X1536.fromMap(json["medium"]),
        large: The1536X1536.fromMap(json["large"]),
        thumbnail: The1536X1536.fromMap(json["thumbnail"]),
        mediumLarge: The1536X1536.fromMap(json["medium_large"]),
        the1536X1536: The1536X1536.fromMap(json["1536x1536"]),
        full: The1536X1536.fromMap(json["full"]),
      );

  Map<String, dynamic> toMap() => {
        "medium": medium.toMap(),
        "large": large.toMap(),
        "thumbnail": thumbnail.toMap(),
        "medium_large": mediumLarge.toMap(),
        "1536x1536": the1536X1536.toMap(),
        "full": full.toMap(),
      };
}

class The1536X1536 {
  final String file;
  final int width;
  final int height;
  final String mimeType;
  final String sourceUrl;

  The1536X1536({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
  });

  factory The1536X1536.fromJson(String str) =>
      The1536X1536.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory The1536X1536.fromMap(Map<String, dynamic> json) => The1536X1536(
        file: json["file"],
        width: json["width"],
        height: json["height"],
        mimeType: json["mime_type"],
        sourceUrl: json["source_url"],
      );

  Map<String, dynamic> toMap() => {
        "file": file,
        "width": width,
        "height": height,
        "mime_type": mimeType,
        "source_url": sourceUrl,
      };
}

class EmbeddedWpTerm {
  final int id;
  final String link;
  final String name;
  final String slug;
  final String taxonomy;
  final String? color;
  final WpTermLinks links;

  EmbeddedWpTerm({
    required this.id,
    required this.link,
    required this.name,
    required this.slug,
    required this.taxonomy,
    this.color,
    required this.links,
  });

  factory EmbeddedWpTerm.fromJson(String str) =>
      EmbeddedWpTerm.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmbeddedWpTerm.fromMap(Map<String, dynamic> json) => EmbeddedWpTerm(
        id: json["id"],
        link: json["link"],
        name: json["name"],
        slug: json["slug"],
        taxonomy: json["taxonomy"],
        color: json["color"],
        links: WpTermLinks.fromMap(json["_links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "link": link,
        "name": name,
        "slug": slug,
        "taxonomy": taxonomy,
        "color": color,
        "_links": links.toMap(),
      };
}

class WpTermLinks {
  final List<About> self;
  final List<About> collection;
  final List<About> about;
  final List<About> wpPostType;
  final List<Cury> curies;

  WpTermLinks({
    required this.self,
    required this.collection,
    required this.about,
    required this.wpPostType,
    required this.curies,
  });

  factory WpTermLinks.fromJson(String str) =>
      WpTermLinks.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WpTermLinks.fromMap(Map<String, dynamic> json) => WpTermLinks(
        self: List<About>.from(json["self"].map((x) => About.fromMap(x))),
        collection:
            List<About>.from(json["collection"].map((x) => About.fromMap(x))),
        about: List<About>.from(json["about"].map((x) => About.fromMap(x))),
        wpPostType:
            List<About>.from(json["wp:post_type"].map((x) => About.fromMap(x))),
        curies: List<Cury>.from(json["curies"].map((x) => Cury.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "self": List<dynamic>.from(self.map((x) => x.toMap())),
        "collection": List<dynamic>.from(collection.map((x) => x.toMap())),
        "about": List<dynamic>.from(about.map((x) => x.toMap())),
        "wp:post_type": List<dynamic>.from(wpPostType.map((x) => x.toMap())),
        "curies": List<dynamic>.from(curies.map((x) => x.toMap())),
      };
}

class Cury {
  final String name;
  final String href;
  final bool templated;

  Cury({
    required this.name,
    required this.href,
    required this.templated,
  });

  factory Cury.fromJson(String str) => Cury.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cury.fromMap(Map<String, dynamic> json) => Cury(
        name: json["name"],
        href: json["href"],
        templated: json["templated"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "href": href,
        "templated": templated,
      };
}

class FvpVideo {
  final bool valid;
  final int img;
  final dynamic id;
  final String provider;
  final String title;
  final String author;
  final dynamic description;
  final String imgUrl;
  final String filename;
  final String full;
  final List<dynamic> parameters;
  final bool noimg;

  FvpVideo({
    required this.valid,
    required this.img,
    required this.id,
    required this.provider,
    required this.title,
    required this.author,
    required this.description,
    required this.imgUrl,
    required this.filename,
    required this.full,
    required this.parameters,
    required this.noimg,
  });

  factory FvpVideo.fromJson(String str) => FvpVideo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FvpVideo.fromMap(Map<String, dynamic> json) => FvpVideo(
        valid: json["valid"],
        img: json["img"],
        id: json["id"],
        provider: json["provider"],
        title: json["title"],
        author: json["author"],
        description: json["description"],
        imgUrl: json["img_url"],
        filename: json["filename"],
        full: json["full"],
        parameters: List<dynamic>.from(json["parameters"].map((x) => x)),
        noimg: json["noimg"],
      );

  Map<String, dynamic> toMap() => {
        "valid": valid,
        "img": img,
        "id": id,
        "provider": provider,
        "title": title,
        "author": author,
        "description": description,
        "img_url": imgUrl,
        "filename": filename,
        "full": full,
        "parameters": List<dynamic>.from(parameters.map((x) => x)),
        "noimg": noimg,
      };
}

class ElementmodelLinks {
  final List<About> self;
  final List<About> collection;
  final List<About> about;
  final List<ReplyElement> author;
  final List<ReplyElement> replies;
  final List<VersionHistory> versionHistory;
  final List<PredecessorVersion> predecessorVersion;
  final List<ReplyElement> wpFeaturedmedia;
  final List<About> wpAttachment;
  final List<LinksWpTerm> wpTerm;
  final List<Cury> curies;

  ElementmodelLinks({
    required this.self,
    required this.collection,
    required this.about,
    required this.author,
    required this.replies,
    required this.versionHistory,
    required this.predecessorVersion,
    required this.wpFeaturedmedia,
    required this.wpAttachment,
    required this.wpTerm,
    required this.curies,
  });

  factory ElementmodelLinks.fromJson(String str) =>
      ElementmodelLinks.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ElementmodelLinks.fromMap(Map<String, dynamic> json) =>
      ElementmodelLinks(
        self: List<About>.from(json["self"].map((x) => About.fromMap(x))),
        collection:
            List<About>.from(json["collection"].map((x) => About.fromMap(x))),
        about: List<About>.from(json["about"].map((x) => About.fromMap(x))),
        author: List<ReplyElement>.from(
            json["author"].map((x) => ReplyElement.fromMap(x))),
        replies: List<ReplyElement>.from(
            json["replies"].map((x) => ReplyElement.fromMap(x))),
        versionHistory: List<VersionHistory>.from(
            json["version-history"].map((x) => VersionHistory.fromMap(x))),
        predecessorVersion: List<PredecessorVersion>.from(
            json["predecessor-version"]
                .map((x) => PredecessorVersion.fromMap(x))),
        wpFeaturedmedia: List<ReplyElement>.from(
            json["wp:featuredmedia"].map((x) => ReplyElement.fromMap(x))),
        wpAttachment: List<About>.from(
            json["wp:attachment"].map((x) => About.fromMap(x))),
        wpTerm: List<LinksWpTerm>.from(
            json["wp:term"].map((x) => LinksWpTerm.fromMap(x))),
        curies: List<Cury>.from(json["curies"].map((x) => Cury.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "self": List<dynamic>.from(self.map((x) => x.toMap())),
        "collection": List<dynamic>.from(collection.map((x) => x.toMap())),
        "about": List<dynamic>.from(about.map((x) => x.toMap())),
        "author": List<dynamic>.from(author.map((x) => x.toMap())),
        "replies": List<dynamic>.from(replies.map((x) => x.toMap())),
        "version-history":
            List<dynamic>.from(versionHistory.map((x) => x.toMap())),
        "predecessor-version":
            List<dynamic>.from(predecessorVersion.map((x) => x.toMap())),
        "wp:featuredmedia":
            List<dynamic>.from(wpFeaturedmedia.map((x) => x.toMap())),
        "wp:attachment": List<dynamic>.from(wpAttachment.map((x) => x.toMap())),
        "wp:term": List<dynamic>.from(wpTerm.map((x) => x.toMap())),
        "curies": List<dynamic>.from(curies.map((x) => x.toMap())),
      };
}

class PredecessorVersion {
  final int id;
  final String href;

  PredecessorVersion({
    required this.id,
    required this.href,
  });

  factory PredecessorVersion.fromJson(String str) =>
      PredecessorVersion.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PredecessorVersion.fromMap(Map<String, dynamic> json) =>
      PredecessorVersion(
        id: json["id"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "href": href,
      };
}

class VersionHistory {
  final int count;
  final String href;

  VersionHistory({
    required this.count,
    required this.href,
  });

  factory VersionHistory.fromJson(String str) =>
      VersionHistory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VersionHistory.fromMap(Map<String, dynamic> json) => VersionHistory(
        count: json["count"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "count": count,
        "href": href,
      };
}

class LinksWpTerm {
  final String taxonomy;
  final bool embeddable;
  final String href;

  LinksWpTerm({
    required this.taxonomy,
    required this.embeddable,
    required this.href,
  });

  factory LinksWpTerm.fromJson(String str) =>
      LinksWpTerm.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LinksWpTerm.fromMap(Map<String, dynamic> json) => LinksWpTerm(
        taxonomy: json["taxonomy"],
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "taxonomy": taxonomy,
        "embeddable": embeddable,
        "href": href,
      };
}

class UserMeta {
  final String facebook;
  final String instagram;
  final String twitter;
  final String whatsapp;

  UserMeta({
    required this.facebook,
    required this.instagram,
    required this.twitter,
    required this.whatsapp,
  });

  factory UserMeta.fromJson(String str) => UserMeta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserMeta.fromMap(Map<String, dynamic> json) => UserMeta(
        facebook: json["facebook"],
        instagram: json["instagram"],
        twitter: json["twitter"],
        whatsapp: json["whatsapp"],
      );

  Map<String, dynamic> toMap() => {
        "facebook": facebook,
        "instagram": instagram,
        "twitter": twitter,
        "whatsapp": whatsapp,
      };
}
