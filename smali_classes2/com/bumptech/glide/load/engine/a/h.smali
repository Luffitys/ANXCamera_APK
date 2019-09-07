.class Lcom/bumptech/glide/load/engine/a/h;
.super Ljava/lang/Object;
.source "ExternalCacheDiskCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Eg:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/h;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a/h;->Eg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public w()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/h;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/h;->Eg:Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method
