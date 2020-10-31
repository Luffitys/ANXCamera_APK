.class Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;
.super Ljava/lang/Object;
.source "BitmapProvider.java"

# interfaces
.implements Lmiui/maml/ResourceManager$AsyncLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;


# direct methods
.method constructor <init>(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Ljava/lang/String;Lmiui/maml/ResourceManager$BitmapInfo;)V
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v0, v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v1, v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "BitmapProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load image async complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " last cached "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    # getter for: Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;
    invoke-static {v3}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->access$100(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v1, v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v2, 0x0

    if-nez p2, :cond_3c

    move-object v3, v2

    goto :goto_3e

    :cond_3c
    iget-object v3, p2, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_3e
    invoke-virtual {v1, v3}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    # setter for: Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;
    invoke-static {v1, p1}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->access$102(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iput-object v2, v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    goto :goto_6d

    :cond_4b
    const-string v1, "BitmapProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load image async complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not equals "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v3, v3, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_76

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v0, v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    return-void

    :catchall_76
    move-exception v1

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v1
.end method
