.class Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;-><init>(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;

.field final synthetic val$isPhoto:Z


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;Z)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;->this$0:Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;

    iput-boolean p2, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;->val$isPhoto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;->this$0:Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener;->mTargetView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1$1;-><init>(Lcom/miui/internal/vip/utils/ImageDownloader$ToViewDownloadListener$1;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInBackground(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method
