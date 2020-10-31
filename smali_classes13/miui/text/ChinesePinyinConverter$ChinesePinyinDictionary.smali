.class Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChinesePinyinDictionary"
.end annotation


# static fields
.field private static final UNICODE_2_PINYIN_ASSET_NAME:Ljava/lang/String; = "pinyinindex.idf"


# instance fields
.field private mReader:Lmiui/util/DirectIndexedFile$Reader;


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pinyinindex.idf"

    invoke-static {v0, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_25

    :try_start_1a
    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v2

    iput-object v2, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_25
    :goto_25
    iget-object v2, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v2, :cond_49

    :try_start_29
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v1

    iput-object v1, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception v1

    const-string v2, "ChinesePinyinConverter"

    const-string v3, "Init resource IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/ChinesePinyinConverter$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPinyinString(C)[Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    add-int/lit16 v2, p1, -0x4e00

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "ChinesePinyinConverter"

    const-string v4, "The ChinesePinyinConverter dictionary is not correct, need rebuild or reset the ROM."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1d
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
