.class public Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final Jb:Ljava/lang/String; = "image_manager_disk_cache"

.field private static volatile Kb:Lcom/bumptech/glide/c; = null

.field private static volatile Lb:Z = false

.field private static final TAG:Ljava/lang/String; = "Glide"


# instance fields
.field private final Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private final Cb:Lcom/bumptech/glide/load/engine/a/o;

.field private final Db:Lcom/bumptech/glide/load/engine/prefill/a;

.field private final Eb:Lcom/bumptech/glide/e;

.field private final Fb:Lcom/bumptech/glide/manager/n;

.field private final Gb:Lcom/bumptech/glide/manager/d;

.field private final Hb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/m;",
            ">;"
        }
    .end annotation
.end field

.field private Ib:Lcom/bumptech/glide/MemoryCategory;

.field private final qa:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

.field private final registry:Lcom/bumptech/glide/Registry;

.field private final va:Lcom/bumptech/glide/load/engine/Engine;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/manager/n;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/request/f;Ljava/util/Map;)V
    .locals 19
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/Engine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/engine/a/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/bumptech/glide/manager/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/bumptech/glide/manager/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/engine/a/o;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/b;",
            "Lcom/bumptech/glide/manager/n;",
            "Lcom/bumptech/glide/manager/d;",
            "I",
            "Lcom/bumptech/glide/request/f;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/n<",
            "**>;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/bumptech/glide/c;->Hb:Ljava/util/List;

    sget-object v5, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    iput-object v5, v0, Lcom/bumptech/glide/c;->Ib:Lcom/bumptech/glide/MemoryCategory;

    move-object/from16 v8, p2

    iput-object v8, v0, Lcom/bumptech/glide/c;->va:Lcom/bumptech/glide/load/engine/Engine;

    iput-object v3, v0, Lcom/bumptech/glide/c;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iput-object v4, v0, Lcom/bumptech/glide/c;->qa:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    iput-object v1, v0, Lcom/bumptech/glide/c;->Cb:Lcom/bumptech/glide/load/engine/a/o;

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/bumptech/glide/c;->Fb:Lcom/bumptech/glide/manager/n;

    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/bumptech/glide/c;->Gb:Lcom/bumptech/glide/manager/d;

    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/f;->getOptions()Lcom/bumptech/glide/load/g;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/o;->Yi:Lcom/bumptech/glide/load/f;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/f;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    new-instance v6, Lcom/bumptech/glide/load/engine/prefill/a;

    invoke-direct {v6, v1, v3, v5}, Lcom/bumptech/glide/load/engine/prefill/a;-><init>(Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v6, v0, Lcom/bumptech/glide/c;->Db:Lcom/bumptech/glide/load/engine/prefill/a;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v5, Lcom/bumptech/glide/Registry;

    invoke-direct {v5}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v5, v0, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    iget-object v5, v0, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/m;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>()V

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/o;

    iget-object v6, v0, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v6}, Lcom/bumptech/glide/Registry;->Gf()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {v5, v6, v7, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;

    iget-object v7, v0, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v7}, Lcom/bumptech/glide/Registry;->Gf()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v2, v7, v3, v4}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->c(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/h;

    move-result-object v7

    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v9, v5}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>(Lcom/bumptech/glide/load/resource/bitmap/o;)V

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/x;

    invoke-direct {v10, v5, v4}, Lcom/bumptech/glide/load/resource/bitmap/x;-><init>(Lcom/bumptech/glide/load/resource/bitmap/o;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    new-instance v5, Lcom/bumptech/glide/load/b/b/e;

    invoke-direct {v5, v2}, Lcom/bumptech/glide/load/b/b/e;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/bumptech/glide/load/model/y$c;

    invoke-direct {v11, v1}, Lcom/bumptech/glide/load/model/y$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v12, Lcom/bumptech/glide/load/model/y$d;

    invoke-direct {v12, v1}, Lcom/bumptech/glide/load/model/y$d;-><init>(Landroid/content/res/Resources;)V

    new-instance v13, Lcom/bumptech/glide/load/model/y$b;

    invoke-direct {v13, v1}, Lcom/bumptech/glide/load/model/y$b;-><init>(Landroid/content/res/Resources;)V

    new-instance v14, Lcom/bumptech/glide/load/model/y$a;

    invoke-direct {v14, v1}, Lcom/bumptech/glide/load/model/y$a;-><init>(Landroid/content/res/Resources;)V

    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v15, v4}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    new-instance v8, Lcom/bumptech/glide/load/b/d/a;

    invoke-direct {v8}, Lcom/bumptech/glide/load/b/d/a;-><init>()V

    move-object/from16 p3, v8

    new-instance v8, Lcom/bumptech/glide/load/b/d/d;

    invoke-direct {v8}, Lcom/bumptech/glide/load/b/d/d;-><init>()V

    move-object/from16 p6, v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 p7, v8

    iget-object v8, v0, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    const-class v2, Ljava/nio/ByteBuffer;

    move-object/from16 v16, v14

    new-instance v14, Lcom/bumptech/glide/load/model/e;

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/e;-><init>()V

    invoke-virtual {v8, v2, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Ljava/io/InputStream;

    new-instance v14, Lcom/bumptech/glide/load/model/z;

    invoke-direct {v14, v4}, Lcom/bumptech/glide/load/model/z;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    invoke-virtual {v2, v8, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Ljava/nio/ByteBuffer;

    const-class v14, Landroid/graphics/Bitmap;

    move-object/from16 v17, v12

    const-string v12, "Bitmap"

    invoke-virtual {v2, v12, v8, v14, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Ljava/io/InputStream;

    const-class v14, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v12, v8, v14, v10}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Landroid/os/ParcelFileDescriptor;

    const-class v14, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v12, v8, v14, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Landroid/content/res/AssetFileDescriptor;

    const-class v14, Landroid/graphics/Bitmap;

    move-object/from16 v18, v13

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->b(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/h;

    move-result-object v13

    invoke-virtual {v2, v12, v8, v14, v13}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Landroid/graphics/Bitmap;

    const-class v13, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/bumptech/glide/load/model/B$a;->getInstance()Lcom/bumptech/glide/load/model/B$a;

    move-result-object v14

    invoke-virtual {v2, v8, v13, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Landroid/graphics/Bitmap;

    const-class v13, Landroid/graphics/Bitmap;

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/z;

    invoke-direct {v14}, Lcom/bumptech/glide/load/resource/bitmap/z;-><init>()V

    invoke-virtual {v2, v12, v8, v13, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v8, v15}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Ljava/nio/ByteBuffer;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v14, v1, v9}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/h;)V

    const-string v9, "BitmapDrawable"

    invoke-virtual {v2, v9, v8, v13, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Ljava/io/InputStream;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v14, v1, v10}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/h;)V

    invoke-virtual {v2, v9, v8, v13, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v8, Landroid/os/ParcelFileDescriptor;

    const-class v10, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v13, v1, v7}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/h;)V

    invoke-virtual {v2, v9, v8, v10, v13}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v8, v3, v15}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/i;)V

    invoke-virtual {v2, v7, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v7, Ljava/io/InputStream;

    const-class v8, Lcom/bumptech/glide/load/resource/gif/b;

    new-instance v9, Lcom/bumptech/glide/load/resource/gif/h;

    iget-object v10, v0, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v10}, Lcom/bumptech/glide/Registry;->Gf()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10, v6, v4}, Lcom/bumptech/glide/load/resource/gif/h;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/h;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    const-string v10, "Gif"

    invoke-virtual {v2, v10, v7, v8, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v7, Ljava/nio/ByteBuffer;

    const-class v8, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {v2, v10, v7, v8, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Lcom/bumptech/glide/load/resource/gif/b;

    new-instance v7, Lcom/bumptech/glide/load/resource/gif/c;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/gif/c;-><init>()V

    invoke-virtual {v2, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Lcom/bumptech/glide/b/a;

    const-class v7, Lcom/bumptech/glide/b/a;

    invoke-static {}, Lcom/bumptech/glide/load/model/B$a;->getInstance()Lcom/bumptech/glide/load/model/B$a;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Lcom/bumptech/glide/b/a;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/gif/f;

    invoke-direct {v8, v3}, Lcom/bumptech/glide/load/resource/gif/f;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)V

    invoke-virtual {v2, v12, v6, v7, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6, v7, v5}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/v;

    invoke-direct {v8, v5, v3}, Lcom/bumptech/glide/load/resource/bitmap/v;-><init>(Lcom/bumptech/glide/load/b/b/e;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)V

    invoke-virtual {v2, v6, v7, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    new-instance v5, Lcom/bumptech/glide/load/b/a/a$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/a/a$a;-><init>()V

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/a/e$a;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lcom/bumptech/glide/load/model/f$b;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/f$b;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/i$e;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/i$e;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/bumptech/glide/load/b/c/a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/b/c/a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/model/i$b;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/i$b;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    invoke-static {}, Lcom/bumptech/glide/load/model/B$a;->getInstance()Lcom/bumptech/glide/load/model/B$a;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    new-instance v5, Lcom/bumptech/glide/load/a/l$a;

    invoke-direct {v5, v4}, Lcom/bumptech/glide/load/a/l$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/a/e$a;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    invoke-virtual {v2, v5, v6, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v7, v18

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    const-class v6, Ljava/io/InputStream;

    invoke-virtual {v2, v5, v6, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    const-class v6, Landroid/net/Uri;

    move-object/from16 v7, v17

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v8, v16

    invoke-virtual {v2, v5, v6, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2, v5, v6, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/net/Uri;

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/g$c;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/g$c;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/g$c;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/g$c;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/A$c;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/A$c;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/model/A$b;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/A$b;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/model/A$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/A$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/a/c$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/a/c$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/a$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/model/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/model/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/model/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/a/d$a;

    move-object/from16 v8, p1

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/model/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/a/e$a;

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/model/a/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/C$d;

    move-object/from16 v9, p7

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/model/C$d;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/model/C$b;

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/model/C$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/model/C$a;

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/model/C$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/D$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/D$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Ljava/net/URL;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/a/f$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/a/f$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/bumptech/glide/load/model/q$a;

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/model/q$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Lcom/bumptech/glide/load/model/l;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/a/b$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/a/b$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, [B

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lcom/bumptech/glide/load/model/c$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/c$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, [B

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/model/c$d;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/c$d;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/net/Uri;

    invoke-static {}, Lcom/bumptech/glide/load/model/B$a;->getInstance()Lcom/bumptech/glide/load/model/B$a;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/bumptech/glide/load/model/B$a;->getInstance()Lcom/bumptech/glide/load/model/B$a;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/u;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lcom/bumptech/glide/load/b/b/f;

    invoke-direct {v7}, Lcom/bumptech/glide/load/b/b/f;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/bumptech/glide/load/b/d/b;

    invoke-direct {v7, v1}, Lcom/bumptech/glide/load/b/d/b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/d/e;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    const-class v5, [B

    move-object/from16 v6, p3

    invoke-virtual {v1, v2, v5, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/d/e;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v5, [B

    new-instance v7, Lcom/bumptech/glide/load/b/d/c;

    move-object/from16 v9, p6

    invoke-direct {v7, v3, v6, v9}, Lcom/bumptech/glide/load/b/d/c;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/b/d/e;Lcom/bumptech/glide/load/b/d/e;)V

    invoke-virtual {v1, v2, v5, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/d/e;)Lcom/bumptech/glide/Registry;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/load/resource/gif/b;

    const-class v3, [B

    invoke-virtual {v1, v2, v3, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/d/e;)Lcom/bumptech/glide/Registry;

    new-instance v5, Lcom/bumptech/glide/request/target/i;

    invoke-direct {v5}, Lcom/bumptech/glide/request/target/i;-><init>()V

    new-instance v10, Lcom/bumptech/glide/e;

    iget-object v6, v0, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p2

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/target/i;Lcom/bumptech/glide/request/f;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine;I)V

    iput-object v10, v0, Lcom/bumptech/glide/c;->Eb:Lcom/bumptech/glide/e;

    return-void
.end method

.method private static Wj()Lcom/bumptech/glide/a;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_4
    const/4 v0, 0x5

    const-string v2, "Glide"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/m;
    .locals 1
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->k(Landroid/content/Context;)Lcom/bumptech/glide/manager/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/n;->b(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/m;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/app/Fragment;)Lcom/bumptech/glide/m;
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->k(Landroid/content/Context;)Lcom/bumptech/glide/manager/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/n;->c(Landroid/app/Fragment;)Lcom/bumptech/glide/m;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/m;
    .locals 1
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->k(Landroid/content/Context;)Lcom/bumptech/glide/manager/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/n;->c(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/m;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/bumptech/glide/c;->Wj()Lcom/bumptech/glide/a;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/c/a;->Kg()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Lcom/bumptech/glide/c/e;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/c/e;->parse()Ljava/util/List;

    move-result-object v1

    :cond_1
    const/4 v2, 0x3

    const-string v3, "Glide"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bumptech/glide/a;->Lg()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/bumptech/glide/a;->Lg()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/c/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/c/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discovered GlideModule from manifest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/bumptech/glide/a;->Mg()Lcom/bumptech/glide/manager/n$a;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/manager/n$a;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/c/c;

    invoke-interface {v3, p0, p1}, Lcom/bumptech/glide/c/c;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/c/a;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    :cond_8
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/d;->g(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/c/c;

    iget-object v3, p1, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    invoke-interface {v2, p0, p1, v3}, Lcom/bumptech/glide/c/c;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    iget-object v1, p1, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    invoke-virtual {v0, p0, p1, v1}, Lcom/bumptech/glide/c/d;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object p1, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    return-void
.end method

.method private static c(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Landroid/app/Activity;)Lcom/bumptech/glide/m;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->k(Landroid/content/Context;)Lcom/bumptech/glide/manager/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/n;->get(Landroid/app/Activity;)Lcom/bumptech/glide/m;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/View;)Lcom/bumptech/glide/m;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->k(Landroid/content/Context;)Lcom/bumptech/glide/manager/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/n;->get(Landroid/view/View;)Lcom/bumptech/glide/m;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x6

    const-string p1, "Glide"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "default disk cache dir is null"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/c;->j(Landroid/content/Context;)V

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
    sget-object p0, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Lcom/bumptech/glide/m;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/c;->k(Landroid/content/Context;)Lcom/bumptech/glide/manager/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/n;->get(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bumptech/glide/c;->tearDown()V

    :cond_0
    invoke-static {p0, p1}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Lcom/bumptech/glide/c;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bumptech/glide/c;->tearDown()V

    :cond_0
    sput-object p0, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static j(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/bumptech/glide/c;->Lb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/c;->Lb:Z

    invoke-static {p0}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/bumptech/glide/c;->Lb:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static k(Landroid/content/Context;)Lcom/bumptech/glide/manager/n;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->Ff()Lcom/bumptech/glide/manager/n;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/bumptech/glide/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d;-><init>()V

    invoke-static {p0, v0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    return-void
.end method

.method public static declared-synchronized tearDown()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object v1, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;

    iget-object v1, v1, Lcom/bumptech/glide/c;->va:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/Engine;->shutdown()V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/bumptech/glide/c;->Kb:Lcom/bumptech/glide/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public Bf()V
    .locals 0

    invoke-static {}, Lcom/bumptech/glide/util/l;->Hh()V

    iget-object p0, p0, Lcom/bumptech/glide/c;->va:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/Engine;->Bf()V

    return-void
.end method

.method public Cf()Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/c;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    return-object p0
.end method

.method Df()Lcom/bumptech/glide/manager/d;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/c;->Gb:Lcom/bumptech/glide/manager/d;

    return-object p0
.end method

.method Ef()Lcom/bumptech/glide/e;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/c;->Eb:Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public Ff()Lcom/bumptech/glide/manager/n;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/c;->Fb:Lcom/bumptech/glide/manager/n;

    return-object p0
.end method

.method public G()V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/l;->Ih()V

    iget-object v0, p0, Lcom/bumptech/glide/c;->Cb:Lcom/bumptech/glide/load/engine/a/o;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/o;->G()V

    iget-object v0, p0, Lcom/bumptech/glide/c;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->G()V

    iget-object p0, p0, Lcom/bumptech/glide/c;->qa:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->G()V

    return-void
.end method

.method public V()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/c;->qa:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;
    .locals 2
    .param p1    # Lcom/bumptech/glide/MemoryCategory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/l;->Ih()V

    iget-object v0, p0, Lcom/bumptech/glide/c;->Cb:Lcom/bumptech/glide/load/engine/a/o;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/a/o;->a(F)V

    iget-object v0, p0, Lcom/bumptech/glide/c;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a(F)V

    iget-object v0, p0, Lcom/bumptech/glide/c;->Ib:Lcom/bumptech/glide/MemoryCategory;

    iput-object p1, p0, Lcom/bumptech/glide/c;->Ib:Lcom/bumptech/glide/MemoryCategory;

    return-object v0
.end method

.method public varargs a([Lcom/bumptech/glide/load/engine/prefill/c$a;)V
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/engine/prefill/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/bumptech/glide/c;->Db:Lcom/bumptech/glide/load/engine/prefill/a;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/prefill/a;->b([Lcom/bumptech/glide/load/engine/prefill/c$a;)V

    return-void
.end method

.method a(Lcom/bumptech/glide/request/target/o;)Z
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/target/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/o<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->Hb:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/c;->Hb:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/m;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/m;->e(Lcom/bumptech/glide/request/target/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method b(Lcom/bumptech/glide/m;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/c;->Hb:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->Hb:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/c;->Hb:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot register already registered manager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method c(Lcom/bumptech/glide/m;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/c;->Hb:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->Hb:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/c;->Hb:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot unregister not yet registered manager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/c;->Eb:Lcom/bumptech/glide/e;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getRegistry()Lcom/bumptech/glide/Registry;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/c;->registry:Lcom/bumptech/glide/Registry;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->G()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->trimMemory(I)V

    return-void
.end method

.method public trimMemory(I)V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/l;->Ih()V

    iget-object v0, p0, Lcom/bumptech/glide/c;->Cb:Lcom/bumptech/glide/load/engine/a/o;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/o;->trimMemory(I)V

    iget-object v0, p0, Lcom/bumptech/glide/c;->Bb:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->trimMemory(I)V

    iget-object p0, p0, Lcom/bumptech/glide/c;->qa:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->trimMemory(I)V

    return-void
.end method
