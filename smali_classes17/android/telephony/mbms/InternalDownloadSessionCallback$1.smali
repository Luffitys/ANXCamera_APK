.class Landroid/telephony/mbms/InternalDownloadSessionCallback$1;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field final synthetic val$errorCode:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$errorCode:I

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    # getter for: Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->access$000(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$errorCode:I

    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onError(ILjava/lang/String;)V

    return-void
.end method
