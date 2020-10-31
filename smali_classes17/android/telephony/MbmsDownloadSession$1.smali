.class Landroid/telephony/MbmsDownloadSession$1;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MbmsDownloadSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsDownloadSession;


# direct methods
.method constructor <init>(Landroid/telephony/MbmsDownloadSession;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$1;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$1;->this$0:Landroid/telephony/MbmsDownloadSession;

    const/4 v1, 0x3

    const-string v2, "Received death notification"

    # invokes: Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/telephony/MbmsDownloadSession;->access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    return-void
.end method
