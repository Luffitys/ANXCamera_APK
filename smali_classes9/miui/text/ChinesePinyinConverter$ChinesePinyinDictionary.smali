.class Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final UNICODE_2_PINYIN_ASSET_NAME:Ljava/lang/String; = "pinyinindex.idf"


# instance fields
.field private mReader:Lmiui/util/DirectIndexedFile$Reader;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pinyinindex.idf"

    invoke-static {v0, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v0

    iput-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v0

    iput-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "ChinesePinyinConverter"

    const-string v0, "Init resource IOException"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/ChinesePinyinConverter$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPinyinString(C)[Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    add-int/lit16 p1, p1, -0x4e00

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "ChinesePinyinConverter"

    const-string p1, "The ChinesePinyinConverter dictionary is not correct, need rebuild or reset the ROM."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
