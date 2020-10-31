.class public Lcom/miui/mishare/app/util/MiShareFileIconUtil;
.super Ljava/lang/Object;
.source "MiShareFileIconUtil.java"


# static fields
.field private static sFileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    const-string v0, "txt"

    const-string v1, "text"

    const-string v2, "html"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700ca

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "pdf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700c0

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "doc"

    const-string v1, "docx"

    const-string v2, "rtf"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700cc

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "xlsx"

    const-string v1, "xls"

    const-string v2, "csv"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700ba

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "ppt"

    const-string v1, "pptx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700c1

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "wps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700cd

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "rar"

    const-string v1, "zip"

    const-string v2, "7z"

    const-string v3, "tar"

    const-string v4, "gz"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700ce

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v2, "mp3"

    const-string v3, "wma"

    const-string v4, "aac"

    const-string v5, "flac"

    const-string v6, "ape"

    const-string v7, "m4a"

    const-string v8, "wav"

    const-string v9, "amr"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x1107007a

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v2, "avi"

    const-string v3, "wmv"

    const-string v4, "mov"

    const-string v5, "mkv"

    const-string v6, "ts"

    const-string v7, "mp4"

    const-string v8, "rmvb"

    const-string v9, "webm"

    const-string v10, "flv"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700cb

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v2, "jpg"

    const-string v3, "jpeg"

    const-string v4, "png"

    const-string v5, "bmp"

    const-string v6, "tif"

    const-string v7, "raw"

    const-string v8, "gif"

    const-string v9, "webp"

    const-string v10, "wbmp"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700bd

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "apk"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x11070079

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "exe"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700bb

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "ps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700c4

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItem([Ljava/lang/String;I)V
    .registers 8

    if-eqz p0, :cond_1e

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1e
    return-void
.end method

.method public static getFileIconResId(Ljava/lang/String;)I
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x110700bc

    if-eqz v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_19

    goto :goto_1d

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1d
    return v1
.end method
