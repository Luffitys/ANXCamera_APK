.class public Lmiui/net/MimeUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extensionToMimeTypeMap:Ljava/util/Map;

.field private static final mimeTypeToExtensionMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    const-string v0, "application/andrew-inset"

    const-string v1, "ez"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/dsptype"

    const-string v1, "tsp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/futuresplash"

    const-string v1, "spl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/hta"

    const-string v2, "hta"

    invoke-static {v0, v2}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mac-binhex40"

    const-string v2, "hqx"

    invoke-static {v0, v2}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mac-compactpro"

    const-string v2, "cpt"

    invoke-static {v0, v2}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/mathematica"

    const-string v3, "nb"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/msaccess"

    const-string v3, "mdb"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/oda"

    const-string v3, "oda"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/ogg"

    const-string v3, "ogg"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pdf"

    const-string v3, "pdf"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pgp-keys"

    const-string v3, "key"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pgp-signature"

    const-string v3, "pgp"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pics-rules"

    const-string v3, "prf"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rar"

    const-string v3, "rar"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rdf+xml"

    const-string v3, "rdf"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/rss+xml"

    const-string v3, "rss"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/zip"

    const-string v3, "zip"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.android.package-archive"

    const-string v3, "apk"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.cinderella"

    const-string v3, "cdy"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-pki.stl"

    const-string v3, "stl"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.database"

    const-string v3, "odb"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.formula"

    const-string v3, "odf"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.graphics"

    const-string v3, "odg"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    const-string v3, "otg"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.image"

    const-string v3, "odi"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v3, "ods"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string v3, "ots"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text"

    const-string v3, "odt"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-master"

    const-string v3, "odm"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-template"

    const-string v3, "ott"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.oasis.opendocument.text-web"

    const-string v3, "oth"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.google-earth.kml+xml"

    const-string v3, "kml"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.google-earth.kmz"

    const-string v3, "kmz"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/msword"

    const-string v3, "doc"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dot"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v3, "docx"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v3, "dotx"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel"

    const-string v3, "xls"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "xlt"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v3, "xlsx"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v3, "xltx"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-powerpoint"

    const-string v3, "ppt"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pot"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pps"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v3, "pptx"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v3, "potx"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v3, "ppsx"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.rim.cod"

    const-string v3, "cod"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.smaf"

    const-string v3, "mmf"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.calc"

    const-string v3, "sdc"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.draw"

    const-string v3, "sda"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.impress"

    const-string v3, "sdd"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.impress"

    const-string v3, "sdp"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.math"

    const-string v3, "smf"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer"

    const-string v3, "sdw"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer"

    const-string v3, "vor"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.stardivision.writer-global"

    const-string v3, "sgl"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.calc"

    const-string v3, "sxc"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.calc.template"

    const-string v3, "stc"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.draw"

    const-string v3, "sxd"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.draw.template"

    const-string v3, "std"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.impress"

    const-string v3, "sxi"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.impress.template"

    const-string v3, "sti"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.math"

    const-string v3, "sxm"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer"

    const-string v3, "sxw"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer.global"

    const-string v3, "sxg"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.sun.xml.writer.template"

    const-string v3, "stw"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.visio"

    const-string v3, "vsd"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-abiword"

    const-string v3, "abw"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-apple-diskimage"

    const-string v3, "dmg"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-bcpio"

    const-string v3, "bcpio"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-bittorrent"

    const-string v3, "torrent"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cdf"

    const-string v3, "cdf"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cdlink"

    const-string v3, "vcd"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-chess-pgn"

    const-string v3, "pgn"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-cpio"

    const-string v3, "cpio"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-debian-package"

    const-string v3, "deb"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-debian-package"

    const-string v3, "udeb"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-director"

    const-string v3, "dcr"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dir"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dxr"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-dms"

    const-string v3, "dms"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-doom"

    const-string v3, "wad"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-dvi"

    const-string v3, "dvi"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-flac"

    const-string v3, "flac"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-font"

    const-string v3, "pfa"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pfb"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gsf"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pcf"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pcf.Z"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-freemind"

    const-string v3, "mm"

    invoke-static {v0, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-futuresplash"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gnumeric"

    const-string v1, "gnumeric"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-go-sgf"

    const-string v1, "sgf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-graphing-calculator"

    const-string v1, "gcf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-gtar"

    const-string v1, "gtar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tgz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-hdf"

    const-string v1, "hdf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ica"

    const-string v1, "ica"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-internet-signup"

    const-string v1, "ins"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-internet-signup"

    const-string v1, "isp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-iphone"

    const-string v1, "iii"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-iso9660-image"

    const-string v1, "iso"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-jmol"

    const-string v1, "jmz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kchart"

    const-string v1, "chrt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-killustrator"

    const-string v1, "kil"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-koan"

    const-string v1, "skp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "skm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kpresenter"

    const-string v1, "kpr"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kpresenter"

    const-string v1, "kpt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kspread"

    const-string v1, "ksp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kword"

    const-string v1, "kwd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kword"

    const-string v1, "kwt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-latex"

    const-string v1, "latex"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lha"

    const-string v1, "lha"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lzh"

    const-string v1, "lzh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-lzx"

    const-string v1, "lzx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-maker"

    const-string v1, "frm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "maker"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "frame"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "book"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fbdoc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-mif"

    const-string v1, "mif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ms-wmd"

    const-string v1, "wmd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ms-wmz"

    const-string v1, "wmz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-msi"

    const-string v1, "msi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ns-proxy-autoconfig"

    const-string v1, "pac"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-nwc"

    const-string v1, "nwc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-object"

    const-string v1, "o"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-oz-application"

    const-string v1, "oza"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs12"

    const-string v1, "p12"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs12"

    const-string v1, "pfx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs7-certreqresp"

    const-string v1, "p7r"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-pkcs7-crl"

    const-string v1, "crl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-quicktimeplayer"

    const-string v1, "qtl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-shar"

    const-string v1, "shar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-shockwave-flash"

    const-string v1, "swf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-stuffit"

    const-string v1, "sit"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-sv4cpio"

    const-string v1, "sv4cpio"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-sv4crc"

    const-string v1, "sv4crc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-tar"

    const-string v1, "tar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-texinfo"

    const-string v1, "texinfo"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-texinfo"

    const-string v1, "texi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff"

    const-string v1, "t"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff"

    const-string v1, "roff"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-troff-man"

    const-string v1, "man"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-ustar"

    const-string v1, "ustar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-wais-source"

    const-string v1, "src"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-wingz"

    const-string v1, "wz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-webarchive"

    const-string v1, "webarchive"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-webarchive-xml"

    const-string v1, "webarchivexml"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-ca-cert"

    const-string v1, "crt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-x509-user-cert"

    const-string v1, "crt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-xcf"

    const-string v1, "xcf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-xfig"

    const-string v1, "fig"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/xhtml+xml"

    const-string v1, "xhtml"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/3gpp"

    const-string v1, "3gpp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/amr"

    const-string v1, "amr"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/basic"

    const-string v1, "snd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/midi"

    const-string v1, "mid"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "midi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "kar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xmf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mobile-xmf"

    const-string v1, "mxmf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mpeg"

    const-string v1, "mpga"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mpega"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mp2"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mp3"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "m4a"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/mpegurl"

    const-string v1, "m3u"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/prs.sid"

    const-string v1, "sid"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-aiff"

    const-string v1, "aif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiff"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aifc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-gsm"

    const-string v1, "gsm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-mpegurl"

    const-string v1, "m3u"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-ms-wma"

    const-string v1, "wma"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-ms-wax"

    const-string v1, "wax"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "ra"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ram"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-realaudio"

    const-string v1, "ra"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-scpls"

    const-string v1, "pls"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-sd2"

    const-string v1, "sd2"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-wav"

    const-string v1, "wav"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/bmp"

    const-string v1, "bmp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/gif"

    const-string v1, "gif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/ico"

    const-string v1, "cur"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/ico"

    const-string v1, "ico"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/ief"

    const-string v1, "ief"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    const-string v1, "jpeg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jpg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jpe"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/pcx"

    const-string v1, "pcx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/png"

    const-string v1, "png"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/svg+xml"

    const-string v1, "svg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/svg+xml"

    const-string v1, "svgz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/tiff"

    const-string v1, "tiff"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/tiff"

    const-string v1, "tif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.djvu"

    const-string v1, "djvu"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.djvu"

    const-string v1, "djv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/vnd.wap.wbmp"

    const-string v1, "wbmp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-cmu-raster"

    const-string v1, "ras"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-coreldraw"

    const-string v1, "cdr"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-coreldrawpattern"

    const-string v1, "pat"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-coreldrawtemplate"

    const-string v1, "cdt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-corelphotopaint"

    invoke-static {v0, v2}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-icon"

    const-string v1, "ico"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-jg"

    const-string v1, "art"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-jng"

    const-string v1, "jng"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-ms-bmp"

    const-string v1, "bmp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-photoshop"

    const-string v1, "psd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-anymap"

    const-string v1, "pnm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-bitmap"

    const-string v1, "pbm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-graymap"

    const-string v1, "pgm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-portable-pixmap"

    const-string v1, "ppm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-rgb"

    const-string v1, "rgb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-xbitmap"

    const-string v1, "xbm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-xpixmap"

    const-string v1, "xpm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/x-xwindowdump"

    const-string v1, "xwd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/iges"

    const-string v1, "igs"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/iges"

    const-string v1, "iges"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model/mesh"

    const-string v1, "msh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mesh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "silo"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/calendar"

    const-string v1, "ics"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/calendar"

    const-string v1, "icz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/comma-separated-values"

    const-string v1, "csv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/css"

    const-string v1, "css"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html"

    const-string v1, "htm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html"

    const-string v1, "html"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/h323"

    const-string v1, "323"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/iuls"

    const-string v1, "uls"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/mathml"

    const-string v1, "mml"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/plain"

    const-string v1, "txt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "asc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "diff"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "po"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/richtext"

    const-string v1, "rtx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/rtf"

    const-string v1, "rtf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/texmacs"

    const-string v1, "ts"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/text"

    const-string v1, "phps"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/tab-separated-values"

    const-string v1, "tsv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/xml"

    const-string v1, "xml"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-bibtex"

    const-string v1, "bib"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-boo"

    const-string v1, "boo"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++hdr"

    const-string v1, "h++"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hpp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hxx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-c++src"

    const-string v1, "c++"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cxx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-chdr"

    const-string v1, "h"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-component"

    const-string v1, "htc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-csh"

    const-string v1, "csh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-csrc"

    const-string v1, "c"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-dsrc"

    const-string v1, "d"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-haskell"

    const-string v1, "hs"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-java"

    const-string v1, "java"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-literate-haskell"

    const-string v1, "lhs"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-moc"

    const-string v1, "moc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pascal"

    const-string v1, "p"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pascal"

    const-string v1, "pas"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-pcs-gcd"

    const-string v1, "gcd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-setext"

    const-string v1, "etx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tcl"

    const-string v1, "tcl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-tex"

    const-string v1, "tex"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ltx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sty"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cls"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-vcalendar"

    const-string v1, "vcs"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/x-vcard"

    const-string v1, "vcf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/3gpp"

    const-string v1, "3gpp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3gp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3g2"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/dl"

    const-string v1, "dl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/dv"

    const-string v1, "dif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/dv"

    const-string v1, "dv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/fli"

    const-string v1, "fli"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/m4v"

    const-string v1, "m4v"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/mpeg"

    const-string v1, "mpeg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mpg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mpe"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video/mp4"

    const-string v2, "mp4"

    invoke-static {v1, v2}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VOB"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/quicktime"

    const-string v1, "qt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/quicktime"

    const-string v1, "mov"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/vnd.mpegurl"

    const-string v1, "mxu"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-la-asf"

    const-string v1, "lsf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-la-asf"

    const-string v1, "lsx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-mng"

    const-string v1, "mng"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-asf"

    const-string v1, "asf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-asf"

    const-string v1, "asx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wm"

    const-string v1, "wm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wmv"

    const-string v1, "wmv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wmx"

    const-string v1, "wmx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-ms-wvx"

    const-string v1, "wvx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-msvideo"

    const-string v1, "avi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/x-sgi-movie"

    const-string v1, "movie"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-conference/x-cooltalk"

    const-string v1, "ice"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-epoc/x-sisx-app"

    const-string v1, "sisx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmiui/net/MimeUtils;->applyOverrides()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiui/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lmiui/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static applyOverrides()V
    .locals 4

    invoke-static {}, Lmiui/net/MimeUtils;->getContentTypesPropertiesStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method private static getContentTypesPropertiesStream()Ljava/io/InputStream;
    .locals 4

    const-string v0, "content.types.user.table"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "content-types.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static hasExtension(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasMimeType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
