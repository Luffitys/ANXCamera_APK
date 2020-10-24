.class public Lcom/arcsoft/camera/utils/OooO;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO:Ljava/lang/String; = null

.field public static final OooOO0:Ljava/lang/String;

.field public static final OooOO0O:Landroid/net/Uri;

.field public static final OooOO0o:I = 0x1

.field public static final OooOOO:I = 0x0

.field public static final OooOOO0:I = 0x3

.field public static final OooOOOO:I = 0x1

.field public static final OooOOOo:I = 0x2

.field public static final OooOOo:I = 0x4

.field public static final OooOOo0:I = 0x3

.field public static final OooOOoo:I = 0x5

.field public static final OooOo:I = 0xa

.field public static final OooOo0:I = 0x7

.field public static final OooOo00:I = 0x6

.field public static final OooOo0O:I = 0x8

.field public static final OooOo0o:I = 0x9

.field public static final OooOoO:I = 0xc

.field public static final OooOoO0:I = 0xb

.field public static final OooOoOO:I = 0xd

.field private static OooOoo:Lcom/arcsoft/camera/utils/OooO; = null

.field public static final OooOoo0:I = 0xe

.field private static final OooOooO:[Ljava/lang/String;


# instance fields
.field private OooO00o:Landroid/content/Context;

.field private OooO0O0:Landroid/content/ContentResolver;

.field private final OooO0OO:Ljava/lang/String;

.field private final OooO0Oo:Ljava/lang/String;

.field private final OooO0o:Ljava/lang/String;

.field private final OooO0o0:Ljava/lang/String;

.field private final OooO0oO:[Ljava/lang/String;

.field private final OooO0oo:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/WideSelfie/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/camera/utils/OooO;->OooO:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/camera/utils/OooO;->OooOOoo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/camera/utils/OooO;->OooOO0:Ljava/lang/String;

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/camera/utils/OooO;->OooOO0O:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/camera/utils/OooO;->OooOoo:Lcom/arcsoft/camera/utils/OooO;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "max(_id) as newId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    sget-object v1, Lcom/arcsoft/camera/utils/OooO0oO;->OooO0o0:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tags"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/arcsoft/camera/utils/OooO;->OooOooO:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO00o:Landroid/content/Context;

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    const-string v1, "image/jpeg"

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0OO:Ljava/lang/String;

    const-string v1, "image/gif"

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0Oo:Ljava/lang/String;

    const-string v1, "video/3gpp"

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0o0:Ljava/lang/String;

    const-string v1, "video/mp4"

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0o:Ljava/lang/String;

    const-string v2, "_id"

    const-string v3, "bucket_id"

    const-string v4, "bucket_display_name"

    const-string v5, "_data"

    const-string v6, "_display_name"

    const-string v7, "width"

    const-string v8, "height"

    const-string v9, "_size"

    const-string v10, "mime_type"

    const-string v11, "datetaken"

    const-string v12, "date_modified"

    const-string v13, "date_added"

    const-string v14, "latitude"

    const-string v15, "longitude"

    const-string v16, "duration"

    const-string v17, "resolution"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    const-string v2, "_id"

    const-string v3, "bucket_id"

    const-string v4, "bucket_display_name"

    const-string v5, "_data"

    const-string v6, "_display_name"

    const-string v7, "width"

    const-string v8, "height"

    const-string v9, "_size"

    const-string v10, "mime_type"

    const-string v11, "datetaken"

    const-string v12, "date_modified"

    const-string v13, "date_added"

    const-string v14, "latitude"

    const-string v15, "longitude"

    const-string v16, "orientation"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO00o:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    return-void
.end method

.method private OooO(Landroid/database/Cursor;Z)Lcom/arcsoft/camera/utils/OooO0oo;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v3, Lcom/arcsoft/camera/utils/OooO0oo;

    invoke-direct {v3}, Lcom/arcsoft/camera/utils/OooO0oo;-><init>()V

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0oO(Lcom/arcsoft/camera/utils/OooO0oo;Z)Z

    const-string v4, "longitude"

    const-string v5, "latitude"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "datetaken"

    const-string v9, "mime_type"

    const-string v10, "_size"

    const-string v11, "height"

    const-string v12, "width"

    const-string v13, "_display_name"

    const-string v14, "_data"

    const-string v15, "bucket_display_name"

    move-object/from16 v16, v4

    const-string v4, "bucket_id"

    move-object/from16 v17, v5

    const-string v5, "_id"

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v18, v6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0Oo(Lcom/arcsoft/camera/utils/OooO0oo;J)J

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0OO(Lcom/arcsoft/camera/utils/OooO0oo;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0o0(Lcom/arcsoft/camera/utils/OooO0oo;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOO0(Lcom/arcsoft/camera/utils/OooO0oo;J)J

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v15}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0o(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v14}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOO0O(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v13}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOOo(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0O0(Lcom/arcsoft/camera/utils/OooO0oo;I)I

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO(Lcom/arcsoft/camera/utils/OooO0oo;I)I

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v10}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOO(Lcom/arcsoft/camera/utils/OooO0oo;J)J

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOo(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOoo(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOo00(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    move-object/from16 v6, v18

    invoke-static {v2, v6}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOo0(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    move-object/from16 v4, v17

    invoke-static {v2, v4}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO00o(Lcom/arcsoft/camera/utils/OooO0oo;D)D

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    move-object/from16 v4, v16

    invoke-static {v2, v4}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0oo(Lcom/arcsoft/camera/utils/OooO0oo;D)D

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    const-string v4, "duration"

    invoke-static {v2, v4}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOo0(Lcom/arcsoft/camera/utils/OooO0oo;J)J

    iget-object v0, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    const-string v2, "resolution"

    invoke-static {v0, v2}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOo0O(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v18, v6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0Oo(Lcom/arcsoft/camera/utils/OooO0oo;J)J

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0OO(Lcom/arcsoft/camera/utils/OooO0oo;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0o0(Lcom/arcsoft/camera/utils/OooO0oo;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOO0(Lcom/arcsoft/camera/utils/OooO0oo;J)J

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v15}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0o(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v14}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOO0O(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v13}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOOo(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0O0(Lcom/arcsoft/camera/utils/OooO0oo;I)I

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO(Lcom/arcsoft/camera/utils/OooO0oo;I)I

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v10}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOO(Lcom/arcsoft/camera/utils/OooO0oo;J)J

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOo(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOoo(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOo00(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    move-object/from16 v4, v18

    invoke-static {v2, v4}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOo0(Lcom/arcsoft/camera/utils/OooO0oo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    move-object/from16 v4, v17

    invoke-static {v2, v4}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO00o(Lcom/arcsoft/camera/utils/OooO0oo;D)D

    iget-object v2, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    move-object/from16 v4, v16

    invoke-static {v2, v4}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0oo(Lcom/arcsoft/camera/utils/OooO0oo;D)D

    iget-object v0, v0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    const-string v2, "orientation"

    invoke-static {v0, v2}, Lcom/arcsoft/camera/utils/OooO0Oo;->OooOO0O([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOO0(Lcom/arcsoft/camera/utils/OooO0oo;I)I

    :goto_0
    return-object v3

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static OooO00o(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    sget-object v0, Lcom/arcsoft/camera/utils/OooO;->OooOO0:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, v5, v1

    sget-object v2, Lcom/arcsoft/camera/utils/OooO;->OooOO0O:Landroid/net/Uri;

    sget-object v3, Lcom/arcsoft/camera/utils/OooO;->OooOooO:[Ljava/lang/String;

    const-string v4, "(media_type=? or media_type=?) and bucket_id=? "

    const-string v6, "_id DESC"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0Oo(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static OooOO0O(Landroid/content/Context;)Lcom/arcsoft/camera/utils/OooO;
    .locals 2

    sget-object v0, Lcom/arcsoft/camera/utils/OooO;->OooOoo:Lcom/arcsoft/camera/utils/OooO;

    if-nez v0, :cond_1

    const-class v0, Lcom/arcsoft/camera/utils/OooO;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/arcsoft/camera/utils/OooO;->OooOoo:Lcom/arcsoft/camera/utils/OooO;

    if-nez v1, :cond_0

    new-instance v1, Lcom/arcsoft/camera/utils/OooO;

    invoke-direct {v1, p0}, Lcom/arcsoft/camera/utils/OooO;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/arcsoft/camera/utils/OooO;->OooOoo:Lcom/arcsoft/camera/utils/OooO;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/arcsoft/camera/utils/OooO;->OooOoo:Lcom/arcsoft/camera/utils/OooO;

    return-object p0
.end method

.method private OooOOo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".jpg"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, ".jpeg"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, ".gif"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "image/gif"

    return-object p0

    :cond_1
    const-string p1, ".3gp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, ".3gpp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ".mp4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "video/mp4"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "video/3gpp"

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "image/jpeg"

    return-object p0
.end method

.method private static OooOOoo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/arcsoft/camera/utils/OooO;->OooOO0o()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-int p2, v0

    if-gtz p2, :cond_2

    const/4 p2, 0x1

    :cond_2
    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public OooO0OO(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/OooO;->OooOO0(Ljava/lang/String;)Lcom/arcsoft/camera/utils/OooO0oo;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x14

    :goto_0
    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/OooO;->OooOO0(Ljava/lang/String;)Lcom/arcsoft/camera/utils/OooO0oo;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-static {v0}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOO0o(Lcom/arcsoft/camera/utils/OooO0oo;)Z

    move-result p1

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/arcsoft/camera/utils/OooO0oo;->OooO0OO(Lcom/arcsoft/camera/utils/OooO0oo;)J

    move-result-wide v2

    if-eqz p1, :cond_3

    invoke-static {p0, v2, v3, v1, p2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-static {p0, v2, v3, v1, p2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public OooO0o(Ljava/lang/String;III)Landroid/net/Uri;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/camera/utils/OooO;->OooO0oo(Ljava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public OooO0o0(Ljava/lang/String;II)Landroid/net/Uri;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/camera/utils/OooO;->OooO0oo(Ljava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public OooO0oO(Ljava/lang/String;IILandroid/location/Location;)Landroid/net/Uri;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/camera/utils/OooO;->OooO0oo(Ljava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public OooO0oo(Ljava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;
    .locals 6

    invoke-static {p1}, Lcom/arcsoft/camera/utils/OooO00o;->OooO0o(Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/arcsoft/camera/utils/OooO;->OooOOo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_display_name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    invoke-virtual {v3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "mime_type"

    invoke-virtual {v3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-lt p2, p3, :cond_1

    iget-object p0, p0, Lcom/arcsoft/camera/utils/OooO;->OooO00o:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.hardware.action.NEW_PICTURE"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-object p1
.end method

.method public OooOO0(Ljava/lang/String;)Lcom/arcsoft/camera/utils/OooO0oo;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/arcsoft/camera/utils/OooO00o;->OooO0o(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-array v8, v3, [Ljava/lang/String;

    aput-object p1, v8, v2

    iget-object v4, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    const-string v7, "_data=?"

    const-string v9, "_id DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v2

    iget-object v2, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    const-string v5, "_data=?"

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct {p0, p1, v1}, Lcom/arcsoft/camera/utils/OooO;->OooO(Landroid/database/Cursor;Z)Lcom/arcsoft/camera/utils/OooO0oo;

    move-result-object v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public OooOO0o()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/arcsoft/camera/utils/OooO;->OooO00o(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public OooOOO(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/OooO;->OooOO0(Ljava/lang/String;)Lcom/arcsoft/camera/utils/OooO0oo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v4, v2, :cond_1

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/arcsoft/camera/utils/OooO00o;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOO0o(Lcom/arcsoft/camera/utils/OooO0oo;)Z

    move-result v4

    const-string v5, "title"

    const-string v6, "_display_name"

    invoke-virtual {v2, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOOO(Lcom/arcsoft/camera/utils/OooO0oo;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v2, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public OooOOO0(Ljava/lang/String;Z)Ljava/util/List;
    .locals 9

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v3, v0, :cond_2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p2, :cond_3

    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v1

    iget-object v3, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0oO:[Ljava/lang/String;

    const-string v6, "bucket_display_name=?"

    const-string v8, "_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v1

    iget-object v0, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0oo:[Ljava/lang/String;

    const-string v3, "bucket_display_name=?"

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/arcsoft/camera/utils/OooO;->OooO(Landroid/database/Cursor;Z)Lcom/arcsoft/camera/utils/OooO0oo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0
.end method

.method public OooOOOO()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/arcsoft/camera/utils/OooO;->OooO00o(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {p0}, Lcom/arcsoft/camera/utils/OooO;->OooO0Oo(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public OooOOOo(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/OooO;->OooOO0(Ljava/lang/String;)Lcom/arcsoft/camera/utils/OooO0oo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/camera/utils/OooO;->OooO0O0:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/arcsoft/camera/utils/OooO0oo;->OooOOOO(Lcom/arcsoft/camera/utils/OooO0oo;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public OooOOo0(Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10e

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    goto :goto_0

    :cond_2
    const/16 p0, 0xb4

    :goto_0
    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p0
.end method
