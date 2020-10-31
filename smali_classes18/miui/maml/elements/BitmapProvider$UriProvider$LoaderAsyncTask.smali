.class Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider$UriProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mHeight:I

.field private mUri:Ljava/lang/String;

.field private mWidth:I

.field final synthetic this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    iput p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    iput-object p2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    iput p3, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    iput p4, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    iget v3, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/elements/BitmapProvider$UriProvider;->getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to decode bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BitmapProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    # getter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$200(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_31
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    # getter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;
    invoke-static {v3}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$300(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v2, v2, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    # getter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;
    invoke-static {v3}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$300(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;
    invoke-static {v2, v3}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$402(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v2, v2, Lmiui/maml/elements/BitmapProvider$UriProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    const/4 v3, 0x0

    # setter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;
    invoke-static {v2, v3}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$302(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    :cond_5e
    monitor-exit v1

    return-object v0

    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_31 .. :try_end_62} :catchall_60

    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
