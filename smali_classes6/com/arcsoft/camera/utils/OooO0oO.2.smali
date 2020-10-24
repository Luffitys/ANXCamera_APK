.class final Lcom/arcsoft/camera/utils/OooO0oO;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO:Ljava/lang/String; = "latitude"

.field public static final OooO00o:Ljava/lang/String; = "_id"

.field public static final OooO0O0:Ljava/lang/String; = "_data"

.field public static final OooO0OO:Ljava/lang/String; = "_size"

.field public static final OooO0Oo:Ljava/lang/String; = "datetaken"

.field public static final OooO0o:Ljava/lang/String; = "bucket_id"

.field public static final OooO0o0:Ljava/lang/String;

.field public static final OooO0oO:Ljava/lang/String; = "mime_type"

.field public static final OooO0oo:Ljava/lang/String; = "date_modified"

.field public static final OooOO0:Ljava/lang/String; = "longitude"

.field public static final OooOO0O:Ljava/lang/String; = "orientation"

.field public static final OooOO0o:Ljava/lang/String; = "media_type"

.field public static final OooOOO:Ljava/lang/String; = "resolution"

.field public static final OooOOO0:Ljava/lang/String; = "duration"

.field public static final OooOOOO:Ljava/lang/String; = "tags"

.field public static final OooOOOo:Ljava/lang/String; = "width"

.field public static final OooOOo:Ljava/lang/String; = "title"

.field public static final OooOOo0:Ljava/lang/String; = "height"

.field public static final OooOOoo:Ljava/lang/String; = "_display_name"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "case media_type when 1 then \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" else \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/camera/utils/OooO0oO;->OooO0o0:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
