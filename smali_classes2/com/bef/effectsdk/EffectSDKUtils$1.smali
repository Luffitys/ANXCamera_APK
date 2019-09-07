.class final Lcom/bef/effectsdk/EffectSDKUtils$1;
.super Ljava/lang/Object;
.source "EffectSDKUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/effectsdk/EffectSDKUtils;->needUpdate(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bef/effectsdk/EffectSDKUtils$1;->val$file:Ljava/lang/String;

    iput-object p2, p0, Lcom/bef/effectsdk/EffectSDKUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4

    iget-object v0, p0, Lcom/bef/effectsdk/EffectSDKUtils$1;->val$file:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bef/effectsdk/EffectSDKUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object p0, p0, Lcom/bef/effectsdk/EffectSDKUtils$1;->val$file:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p0, p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0}, Lcom/bef/effectsdk/EffectSDKUtils;->access$000(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/bef/effectsdk/EffectSDKUtils;->access$000(Ljava/io/Closeable;)V

    throw p0

    :catch_0
    invoke-static {v0}, Lcom/bef/effectsdk/EffectSDKUtils;->access$000(Ljava/io/Closeable;)V

    :cond_1
    return v1
.end method
