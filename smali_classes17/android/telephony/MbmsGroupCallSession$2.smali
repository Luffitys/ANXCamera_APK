.class Landroid/telephony/MbmsGroupCallSession$2;
.super Ljava/lang/Object;
.source "MbmsGroupCallSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsGroupCallSession;->create(Landroid/content/Context;ILjava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsGroupCallSessionCallback;)Landroid/telephony/MbmsGroupCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;I)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/MbmsGroupCallSession$2;->val$callback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    iput p2, p0, Landroid/telephony/MbmsGroupCallSession$2;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$2;->val$callback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    iget v1, p0, Landroid/telephony/MbmsGroupCallSession$2;->val$result:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/MbmsGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    return-void
.end method
