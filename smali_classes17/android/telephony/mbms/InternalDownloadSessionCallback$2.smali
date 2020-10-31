.class Landroid/telephony/mbms/InternalDownloadSessionCallback$2;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field final synthetic val$services:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->val$services:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    # getter for: Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->access$000(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->val$services:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V

    return-void
.end method
