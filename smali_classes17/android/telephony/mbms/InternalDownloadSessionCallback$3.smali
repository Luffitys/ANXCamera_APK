.class Landroid/telephony/mbms/InternalDownloadSessionCallback$3;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    # getter for: Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->access$000(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onMiddlewareReady()V

    return-void
.end method
